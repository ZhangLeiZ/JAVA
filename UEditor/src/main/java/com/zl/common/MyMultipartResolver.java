package com.zl.common;

import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/10/19.
 */
public class MyMultipartResolver extends CommonsMultipartResolver {

    @Override
    public boolean isMultipart(HttpServletRequest request) {
        String path = request.getRequestURI();
        if(path.indexOf("ueditor/core")>=0){
                return false;
        }
        return super.isMultipart(request);
    }
}
