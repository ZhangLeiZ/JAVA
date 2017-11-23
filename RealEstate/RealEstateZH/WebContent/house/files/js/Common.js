$(function () {
    $(".menu li").hover(function () {
        $(this).addClass("hover");
        $(this).children("ul li").attr('class', '');
    },
    function () {
        $(this).removeClass("hover");
        $(this).children("ul li").attr('class', '');
    }
	);
    $(".menu li.no_sub").hover(function () {
        $(this).addClass("hover1");
    }, function () {
        $(this).removeClass("hover1");
    }
	);
})

function GetSize(widthDefault, heightDefault, width, height) {
    if (!width) {
        width = $(".picHead img").css("width");
        height = $(".picHead img").css("height");
        width = width.substring(0, width.indexOf("px"));
        height = height.substring(0, height.indexOf("px"));
    }
    widthDefault = widthDefault.substring(0, widthDefault.indexOf("px"));
    heightDefault = heightDefault.substring(0, heightDefault.indexOf("px"));
    //对长宽进行处理 原来是 72 90 
    var widthB = width / widthDefault;
    var heightB = height / heightDefault;
    if (widthB > heightB) {
        width = widthDefault;
        height = Math.ceil(height / widthB);
    }
    else {
        width = Math.ceil(width / heightB);
        height = heightDefault;
    }
    $(".picHead img").css("width", width);
    $(".picHead img").css("height", height);
    $(".picHead img").css("margin-top", Math.ceil((heightDefault - height) / 2));
    $(".picHead img").css("margin-left", Math.ceil((widthDefault - width) / 2));
}

function executeScript(html) {
    var reg = /<script[^>]*>([^\x00]+)$/i;
    //对整段HTML片段按<\/script>拆分
    var htmlBlock = html.split("<\/script>");
    for (var i in htmlBlock) {
        var blocks;//匹配正则表达式的内容数组，blocks[1]就是真正的一段脚本内容，因为前面reg定义我们用了括号进行了捕获分组
        if (blocks = htmlBlock[i].match(reg)) {
            //清除可能存在的注释标记，对于注释结尾-->可以忽略处理，eval一样能正常工作
            var code = blocks[1].replace(/<!--/, '');
            try {
                eval(code) //执行脚本
            }
            catch (e) {
            }
        }
    }
}

function SetLeftStyle(content, type, id) {//id只是为了区分 新房和二手房中的"我的找房条件"

    $('div.subNav li').removeClass('on');
    $('div.subNav dt').removeClass('on');
    $('div.subNav dt span.open').removeClass().addClass('close');
    //$('div.subNav dd').hide(0);
    if (id) {
        $("#" + id).next().find("ul li:contains(" + content + ")").addClass('on');
        $("#" + id).addClass('on').find('span').removeClass().addClass('open');
        $("#" + id).next().show(0);
        return;
    }
    if (type == 'li') {
        $('div.subNav li:contains(' + content + ')').addClass('on');
        $('div.subNav li:contains(' + content + ')').parents('dd').prev().addClass('on').find('span').removeClass().addClass('open');

        $('div.subNav li:contains(' + content + ')').parents('dd').show(0);
    }
    else if (type == 'dt') {
        $('div.subNav dt:contains(' + content + ')').addClass('on');
    }
}

function SetLeftStyleNew(content, type, id, cls) {//id只是为了区分 新房和二手房中的"我的找房条件"

    $('div.subNav li').removeClass('on');
    $('div.subNav dt').removeClass('on');
    $('div.subNav dt span.open').removeClass().addClass('close');
    //$('div.subNav dd').hide(0);
    if (id) { //只为管理我的房子服务
        $("#" + id).find("ul li:contains(" + content + ")").addClass('on');
        $("#dt_4").addClass('on').find('span').removeClass().addClass('open');
        $("#dt_4").next().show(0);
        return;
    }
    if (type == 'li') {
        $('div.subNav li[class=' + cls + ']:contains(' + content + ')').addClass('on');
        $('div.subNav li:contains(' + content + ')').parents('dd').prev().addClass('on').find('span').removeClass().addClass('open');

        $('div.subNav li:contains(' + content + ')').parents('dd').show(0);
    }
    else if (type == 'dt') {
        $('div.subNav dt:contains(' + content + ')').addClass('on');
    }
}


//加载页码信息
function LoadPageInfo(page, count, pagesize) {
    $(".fl b").html(count);//条数
    page = parseInt(page);
    var pageCount = Math.ceil(count / pagesize);//总页码数
    var html = "";
    //链接数目,根据页的字符长度来生成不同的链接数目，防止页面撑破
    var linkNum = pageCount > 13 ? 13 : pageCount;
    if (page >= 13 && page <= 996)
        linkNum = 13;
    else if (page > 996 && page <= 9997)
        linkNum = 10;
    else if (page > 9997)
        linkNum = 8;

    var prev = "<a href='javascript:void(0)' class='prev'><span><b></b></span></a>";
    var next = "<a href='javascript:void(0)' class='next'><span><b></b></span></a>";
    html += prev;
    if (page < 10) {
        var temp;
        if (pageCount < 10)
            temp = pageCount;
        else
            temp = 10;
        for (i = 1; i <= temp; i++) {
            if (i != page)
                html += "<a href='javascript:void(0)'><span>" + i + "</span></a>";
            else
                html += "<a href='javascript:void(0)' class='cur'><span>" + i + "</span></a>";
        }
    }
    else if (page >= 10 && page <= pageCount - (linkNum / 2)) {
        var floor = Math.floor(linkNum / 2);
        for (i = page - floor; i <= page + floor ; i++) {
            if (i == page)
                html += "<a href='javascript:void(0)' class='cur'><span>" + page + "</span></a>";
            else
                html += "<a href='javascript:void(0)'><span>" + i + "</span></a>";
        }
    }
    else {
        for (i = linkNum - 1; i >= 0; i--) {
            if (pageCount - i != page) {
                html += "<a href='javascript:void(0)'><span>" + (pageCount - i) + "</span></a>";
            }
            else
                html += "<a href='javascript:void(0)' class='cur'><span>" + page + "</span></a>";
        }
    }
    html += next;
    $(".fr").html(html);

    $(".fr a").not(".prev").not(".next").click(function () {
        var pageChange = $(this).find("span").html();
        if (pageChange != page) {
            RefreshData(pageChange);
        }
    });
    $(".prev").click(function () {
        if (page > 1) {
            page = parseInt(page) - 1;
            RefreshData(page);
        }
    });
    $(".next").click(function () {
        var pageCount = Math.ceil(count / pagesize);//总页码数
        if (page < pageCount) {
            page = parseInt(page) + 1;
            RefreshData(page);
        }
    })
}