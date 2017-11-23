/*
DNS查询耗时 ：domainLookupEnd - domainLookupStart
TCP链接耗时 ：connectEnd - connectStart
request请求耗时 ：responseEnd - responseStart
解析dom树耗时 ： domComplete - domInteractive
白屏时间 ：responseStart - navigationStart
domready时间 ：domContentLoadedEventEnd - navigationStart
onload时间 ：loadEventEnd - navigationStart
*/

var SFPerformance = {
    bID: '',
    url: 'http://probe.light.fang.com',

    init: function (paramsObj) {
        if (paramsObj.bID != null) {
            this.bID = paramsObj.bID;
        }
        if (paramsObj.url != null) {
            this.url = paramsObj.url;
        }
    },

    getTarget: function () {
        try {
            var timing = performance.timing;
            //单位微秒
            var params = [];
            params['domainLookupEnd'] = timing.domainLookupEnd;
            params['domainLookupStart'] = timing.domainLookupStart;
            params['connectEnd'] = timing.connectEnd;
            params['connectStart'] = timing.connectStart;
            params['responseEnd'] = timing.responseEnd;
            params['responseStart'] = timing.responseStart;
            params['domComplete'] = timing.domComplete;
            params['domInteractive'] = timing.domInteractive;
            params['responseStart'] = timing.responseStart;
            params['navigationStart'] = timing.navigationStart;
            params['domContentLoadedEventEnd'] = timing.domContentLoadedEventEnd;
            params['navigationStart'] = timing.navigationStart;
            params['loadEventEnd'] = timing.loadEventEnd;
            params['navigationStart'] = timing.navigationStart;

            return params;
        }
        catch (e) {
            return null;
        }

        return null;
    },

    purify: function (str) {
        str = str.replace(/\^/gi, '');
        return str;
    },

    send: function () {
        if (!this.isWebBotVisit() && this.bID != '' && this.bID != null) {
            var params = this.getTarget();

            if (params != null) {
                var temp = [];
                temp.push('bid=' + this.bID);
                for (var p in params) {
                    temp.push(p + '=' + params[p].toString());
                }
                var location = this.purify(window.location.href);
                temp.push('url=' + location);

                var url = this.url + "/Prick.do?aip=1&aa=1&at=1&fst=5&fet=0&ft=1&fn=webtime&dn=webperformance&cst=`&data=" + temp.join('^');

                var img = document.createElement('img');
                img.src = url;
                img.width = 0;
                img.height = 0;

                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(img, s);
            }
        }
    },

    webBot: [
        'baiduspider',
        'googlebot',
        'googlebot-image',
        'mediapartners-google',
        'yahooslurp',
        'Yahoo!SlupChina',
        'Yahoo!-AdCrawler',
        'YodaoBot',
        'Sosospider',
        'sogouspider',
        'sogou',
        'soso',
        'baiduspider',
        'yahoo-blogs',
        'yahoo-verticalcrawler',
        'yahoofeedseeker',
        'yahooseeker-testing',
        'yahooseeker',
        'yahoo-mmcrawler',
        'yahoo!_mindset',
        'Yahoo! Slurp',
        'Yahoo! SlurpChina',
        'googlebot',
        'google-sitemaps',
        'msnbot',
        'msnbot-media',
        'bingbot',
        'BingPreview',
        'baidu Transcoder',
        'baidu\\+Transcoder'
    ],
    isWebBotVisit: function () {
        if (typeof this.webBot !== "undefined" && this.webBot.length > 0) {
            var botString = this.webBot.join('|');
            var botRegex = new RegExp(".*(" + botString + ").*", "gi");
            try {
                if (window.navigator.userAgent.match(botRegex)) {
                    return true;
                }
            }
            catch (e) { };
        }
        return false;
    }
}

window.onload = function () {
    if (performance != null && performance.timing != null) {
        var timing = performance.timing;
        var loadTime = timing.loadEventEnd - timing.navigationStart;//过早获取时,loadEventEnd有时会是0

        if (loadTime <= 0) {
            setTimeout(function () {
                SFPerformance.send();
            }, 300);
        }
    }
}