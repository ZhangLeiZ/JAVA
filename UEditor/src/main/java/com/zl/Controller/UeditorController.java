package com.zl.Controller;

import com.zl.Bean.Image;
import org.apache.commons.io.FileUtils;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/18.
 */
@Controller
@RequestMapping("/ueditor")
public class UeditorController {

    @RequestMapping("core")
    public String ControllerPath(){
        return "jsp/controller";
    }

    @RequestMapping(value="/uploadImage",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Map<String,Object> uploadFile(@RequestParam(value = "upfile", required = false) MultipartFile file,
                                         HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> map = new HashMap<String, Object>();
        String realName = null;
        String uuidName = null;
        String realPath = null;

        try {
            Image image  = new Image();
            //文件原来的名称
            realName = file.getOriginalFilename();
            //得到这个文件的uuidname
            uuidName = this.getUUIDFileName(file.getOriginalFilename());
            //图片保存的工程
            realPath = request.getServletContext().getRealPath("/images");
            File filename = new File(realPath);
            if(!filename.exists()){
                filename.mkdir();
            }
            //真实路径
            String roolPath = request.getSession().getServletContext().getRealPath("/");
            image.setName(realName);
            image.setUrl(roolPath);
            image.setUuidname(uuidName);

            //得到文件的输入流
            InputStream in = new BufferedInputStream(file.getInputStream());
            //获得文件的输出流
            OutputStream out = new BufferedOutputStream(new FileOutputStream(new File(filename,uuidName)));

            IOUtils.copy(in, out);
            in.close();
            out.close();
            //将图片信息传递到我的数据库当中
            int flag = 1;

            if(flag!=0){
                map.put("state", "SUCCESS");// UEDITOR的规则:不为SUCCESS则显示state的内容
                map.put("url","/"+uuidName+"/getImage");         //能访问到你现在图片的路径
                map.put("title","");
                map.put("original","realName" );
            }
        } catch (IOException e) {

            map.put("state", "文件上传失败!"); //在此处写上错误提示信息，这样当错误的时候就会显示此信息

            e.printStackTrace();
        }
        return map;
    }


    //下面是我的两个方法，取的uuidname防止文件同名问题
    private String getExtName(String s, char split) {
        int i = s.lastIndexOf(split);
        int leg = s.length();
        return i > 0 ? (i + 1) == leg ? " " : s.substring(i+1, s.length()) : " ";
    }

    private String getUUIDFileName(String fileName){
        UUID uuid = UUID.randomUUID();
        StringBuilder sb = new StringBuilder(100);
        sb.append(uuid.toString()).append(".").append(this.getExtName(fileName, '.'));
        return sb.toString();
    }

    @RequestMapping("{imgName}/getImage")

    public void readImg(@PathVariable("imgName") String imgName, HttpServletResponse response)

            throws Exception {

        //设置文件的返回类型

        response.setContentType("image/*");

        //文件路径(windows下是\\，linux下是//，都必须是绝对路径)

        String imgPath="C:\\Users\\Administrator\\Desktop\\SSH\\UEditor\\out\\artifacts\\UEditor_war_exploded\\images\\"+imgName;

        //java中用File类来表示一个文件

        File image = new File(imgPath);

        //测试这个文件路径是否存在（也就是这个文件是否存在）

        if (!image.exists()) {

            return;

        }

        //FileUtils.readFileToByteArray(File file)把一个文件转换成字节数组返回

        response.getOutputStream().write(FileUtils.readFileToByteArray(image));

        //java在使用流时,都会有一个缓冲区,按一种它认为比较高效的方法来发数据:

        //把要发的数据先放到缓冲区,缓冲区放满以后再一次性发过去,而不是分开一次一次地发.

        //而flush()表示强制将缓冲区中的数据发送出去,不必等到缓冲区满.

        response.getOutputStream().flush();

        response.getOutputStream().close();

    }

}
