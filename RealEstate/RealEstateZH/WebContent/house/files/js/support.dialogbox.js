function getWindowWidth() {
    var winWidth = 0; //窗口宽

    //通过深入Document内部对body进行检测，获取窗口大小
    if (document.documentElement && document.documentElement.clientWidth) {
        winWidth = document.documentElement.clientWidth;
    }
	
    //获取窗口宽度
	if (winWidth > 0) {
        if (window.innerWidth && window.innerWidth < winWidth) winWidth = window.innerWidth;
        else if (document.body && document.body.clientWidth && document.body.clientWidth < winWidth) winWidth = document.body.clientWidth;
	} else {
        if (window.innerWidth) winWidth = window.innerWidth;
        else if (document.body && document.body.clientWidth) winWidth = document.body.clientWidth;
	}

    return winWidth;
}

function getWindowHeight() {
    var winHeight = 0; //窗口高

    //通过深入Document内部对body进行检测，获取窗口大小
    if (document.documentElement && document.documentElement.clientHeight) {
        winHeight = document.documentElement.clientHeight;
    }
	
    //获取窗口高度
	if (winHeight > 0) {
		if (window.innerHeight && window.innerHeight < winHeight) winHeight = window.innerHeight;
		else if (document.body && document.body.clientHeight && document.body.clientHeight < winHeight) winHeight = document.body.clientHeight;
	} else {
		if (window.innerHeight) winHeight = window.innerHeight;
		else if (document.body && document.body.clientHeight) winHeight = document.body.clientHeight;
	}

    return winHeight;
}

var laiyuan = encodeURIComponent(window.location.href);

var _Width = getWindowWidth();
var _Height = getWindowHeight();

var _move = false;

var _x = (_Width - 632) / 2;
var _y = (_Height - 531) / 2;
if (_y < 0) _y = 0;

document.onmousemove = function (e) {
    var evt = e || window.event;
    if (_move) {
        if (document.getElementById('feedbackContainer')) {
            var x = evt.clientX - _x;
            var y = evt.clientY - _y;

            if (!(x > -590)) x = -590;
            if (!(y > 0)) y = 0;
            if (x > getWindowWidth() - 20) x = getWindowWidth() - 20;
            if (y > getWindowHeight() - 20) y = getWindowHeight() - 20;
            document.getElementById('feedbackContainer').style.left = x + 'px';
            document.getElementById('feedbackContainer').style.top = y + 'px';
        }
    }
}
document.onmouseup = function () {
    _move = false;
    if (document.getElementById('feedbackContainer')) {
        document.getElementById('feedbackdrag').style.height = '32px';
        document.onselectstart = function () { return true; }
    }
}


var documentLinks = document.getElementsByTagName('a');
var i;
for (i = 0; i < documentLinks.length; i++) {
    var feedbackLink = documentLinks[i];
    if (feedbackLink.getAttribute('href')
        && (feedbackLink.getAttribute('href').indexOf('www.fang.com/service/feedback/LeaveMess.aspx') >= 0
            || feedbackLink.getAttribute('href').indexOf('www.soufun.com/service/feedback/LeaveMess.aspx') >= 0)) {
        feedbackLink.onclick = function () {
            if (document.getElementById('feedbackContainer') && document.getElementById('feedbackContainer').style.display=="block") {
                return false;
            }
            _Width = getWindowWidth();
            _Height = getWindowHeight();
            _x = (_Width - 632) / 2;
            _y = (_Height - 531) / 2;
            if (_y < 0) _y = 0;
            appendFeedback();
            return false;
        }
    }
}

function appendFeedback() {
    var url = "http://support.fang.com/DialogBox/Index.html?laiyuanurl=" + laiyuan;
    if (document.getElementById('feedbackContainer')!=null) {
        document.getElementById('feedbackContainer').lastChild.setAttribute("src", url);
        document.getElementById('feedbackContainer').style.display = "block";
        return;
    }

    var feedbackIframe = document.createElement('div');
    feedbackIframe.setAttribute('id', 'feedbackContainer');

    var feedbackIframeInnerHtml =
        '<div id="feedbackdrag" class="drag" style="position:absolute;width:632px;height:32px;text-align:center;top:0;left:0;cursor:move;"></div>' +
        '<div id="feedbackcloseBtn" class="closeBtn" style="position:absolute;right:7px;top:7px;z-index:999;width:17px;height:17px;text-align:center;cursor:pointer;"><img src="http://img.soufun.com/newhousedata/images/close_support_x.gif"></div>' +
        '<iframe src="http://support.fang.com/DialogBox/Index.html?laiyuanurl=' + laiyuan + '" width="632" height="531" frameborder="no" border="0" style="border:none;margin:0;padding:0;overflow:hidden;"></iframe>';
    feedbackIframe.innerHTML = feedbackIframeInnerHtml;
    document.getElementsByTagName('body')[0].appendChild(feedbackIframe);

    document.getElementById('feedbackContainer').style.position = 'fixed';
    document.getElementById('feedbackContainer').style.height = '532px';
    document.getElementById('feedbackContainer').style.left = _x + 'px';
    document.getElementById('feedbackContainer').style.top = _y + 'px';
    document.getElementById('feedbackContainer').style.width = '632px';
    document.getElementById('feedbackContainer').style.lineHeight = '24px';
    document.getElementById('feedbackContainer').style.zIndex = '100001';
    document.getElementById('feedbackContainer').style.padding = '0';
    document.getElementById('feedbackContainer').style.border = 'none';
    document.getElementById('feedbackContainer').style.overflow = 'hidden';

    document.getElementById('feedbackdrag').onmousedown = function (e) {
        document.onselectstart = function () { return false; }

        _move = true;
        var evt = e || window.event;

        _x = evt.clientX - parseInt(document.getElementById("feedbackContainer").style.left);
        _y = evt.clientY - parseInt(document.getElementById("feedbackContainer").style.top);

        document.getElementById('feedbackdrag').style.height = '532px';
    }

    document.getElementById('feedbackcloseBtn').onclick = function (e) {
        //document.getElementsByTagName('body')[0].removeChild(document.getElementById('feedbackContainer'));
        document.getElementById('feedbackContainer').style.display = "none";
    }
}