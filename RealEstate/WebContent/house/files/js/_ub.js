_ub={};_ub.$version="2017003211800";_ub.$domain=window.location.protocol=="https:"?"jsub.fang.com":"js.ub.fang.com";_ub.$actions=[2,0,2,2,4,2,5,6,5,1,4,2,3,4,4,3,4,5,5,4,5,4,3,0,4,1,0,5,0,0,0,4,0,5,5,5,5,5,5,5,6,5,4,4,6,6,6,6,6,6,4,5,4,5,4,2,2,3,4,6,6,6,5,5,4,5,5,4,4,4,4,5,5,5,3,6,4,3,5,0,0];_ub.$cookieEnabled=function(){return(typeof navigator.cookieEnabled=="boolean")&&navigator.cookieEnabled}();_ub.$lsEnabled=(window.localStorage!=null);_ub.$flashEnabled=function(){var D=false;var C=0;if(navigator.plugins!=null&&navigator.plugins.length>0){if(navigator.plugins["Shockwave Flash 2.0"]||navigator.plugins["Shockwave Flash"]){D=true;C=parseFloat(navigator.plugins["Shockwave Flash"+(navigator.plugins["Shockwave Flash 2.0"]?" 2.0":"")].description.split(" ")[2])}}else{if(window.ActiveXObject){try{var A=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");D=true;C=A.GetVariable("$version");C=C.split(",")[0].split(" ")[1]}catch(B){}}}return(D&&C>=9)}();_ub.$flash=null;_ub.$frame=null;_ub.$img=null;_ub.$processing=0;_ub.$ticker={DETECTLS:0,APPENDLS:0,DETECTFLASH:0,APPENDFLASH:0,DETECTIMG:0,APPENDIMG:0,GETGUID:0,REQUEST:0,COLLECT:0};_ub.$guid="0";_ub.$user={uid:"0",cid:"0",phone:"0",staff:"0",realtor:"0",getGuid:function(){_ub.$ticker.GETGUID++;var B=document.cookie;var A=/global_cookie=(.+?);/;if(A.test(B)){_ub.$guid=A.exec(B)[1]}else{if(_ub.$ticker.GETGUID<=1000){window.setTimeout(function(){_ub.$user.getGuid()},50)}}},parseCookie:function(){var F=document.cookie;if(F!=""){F=F.split("; ");for(var A=0;A<F.length;A++){var B,E,C=F[A].indexOf("="),D=[];if(C){D.push(F[A].substring(0,C),F[A].substring(C+1));B=D[0];E=D[1];switch(B){case"sfut":_ub.$user.uid=E;break;case"userinfo":if(/userid%253D(\d+)%2526/i.test(E)){_ub.$user.uid=/userid%253D(\d+)%2526/i.exec(E)[1]}if(/username%253D(.*?)%2526/i.test(E)){_ub.$user.uname=decodeURIComponent(/username%253D(.*?)%2526/i.exec(E)[1])}if(/phone%253D(\d+)%2526/i.test(E)){_ub.$user.phone=/phone%253D(\d+)%2526/i.exec(E)[1]}if(/isphonevalid%253D(\d+)%2526/i.test(E)){_ub.$user.isphonevalid=/isphonevalid%253D(\d+)%2526/i.exec(E)[1]}if(/mail%253D(\S+%2540\S+\.\w+)%2526/i.test(E)){_ub.$user.mail=decodeURIComponent(/mail%253D(\S+%2540\S+\.\w+)%2526/i.exec(E)[1])}if(/ismailvalid%253D(\d+)%2526/i.test(E)){_ub.$user.ismailvalid=/ismailvalid%253D(\d+)%2526/i.exec(E)[1]}if(/cid%253D(\d+)%2526/i.test(E)){_ub.$user.cid=/cid%253D(\d+)%2526/i.exec(E)[1]}break;case"global_cookie":_ub.$guid=E;break;case"isso_login":if(E.indexOf("%")>0){_ub.$user.staff=E.substr(0,E.indexOf("%"))}else{if(E.indexOf("@")>0){_ub.$user.staff=E.substr(0,E.indexOf("@"))}}break;case"agent_validation":if(/^a=\d/i.test(E)&&!/^a=0/i.test(E)){_ub.$user.realtor=/^a=(\d)/i.exec(E)[1]}break}}}}},getP2:function(){var A="0";if(this.staff!="0"){A="4"}else{if(this.realtor!="0"){A="3"}else{if(this.cid!="0"){A="2"}else{if(this.uid>0){A="1"}}}}return A}};_ub.city="0";_ub.location="0";_ub.biz="";_ub.values={};_ub.client=function(){var D={ie:0,gecko:0,webkit:0,khtml:0,opera:0,ver:null};var A={ie:0,firefox:0,safari:0,konq:0,opera:0,chrome:0,ver:null};var C={win:false,mac:false,xll:false,iphone:false,ipod:false,ipad:false,ios:false,android:false,nokiaN:false,winMobile:false,wii:false,ps:false};var F=window.navigator.userAgent,B=window.navigator.platform;C.win=B.indexOf("Win")==0;C.mac=B.indexOf("Mac")==0;C.xll=(B.indexOf("Linux")==0||B.indexOf("Xll")==0);C.iphone=F.indexOf("iPhone")>-1;C.ipod=F.indexOf("iPod")>-1;C.ipad=F.indexOf("iPad")>-1;if(C.mac&&F.indexOf("Mobile")>-1){if(/CPU (?:iPhone )?OS (\d+_\d+)/.test(F)){C.ios=parseFloat(RegExp.$1.replace("_","."))}else{C.ios=2}}if(/Android (\d+\.\d+)/.test(F)){C.android=parseFloat(RegExp.$1)}C.nokiaN=F.indexOf("NokiaN")>-1;if(C.win=="CE"){C.winMobile=C.win}else{if(C.win=="Ph"){if(/Windows Phone OS (\d+.\d+)/.test(F)){C.win="Phone";C.winMobile=parseFloat(RegExp["$1"])}}}C.wii=F.indexOf("Wii")>-1;C.ps=/playstation/i.test(F);if(window.opera){D.ver=A.ver=window.opera.version();D.opera=A.opera=parseFloat(D.ver)}else{if(/AppleWebKit\/(\S+)/i.test(F)){D.ver=A.ver=RegExp["$1"];D.webkit=parseFloat(D.ver);if(/Chrome\/(\S+)/i.test(F)){A.chrome=parseFloat(D.ver)}else{if(/Version\/(\S+)/i.test(F)){A.safari=parseFloat(D.ver)}else{var E=1;if(D.webkit<100){E=1}else{if(D.webkit<312){E=1.2}else{if(D.webkit<412){E=1.3}else{E=2}}}A.safari=A.ver=E}}}else{if(/KHTML\/(\S+)/i.test(F)||/Konqueror\/([^;]+)/i.test(F)){D.ver=A.ver=RegExp["$1"];D.khtml=A.konq=parseFloat(D.ver)}else{if(/rv:([^\)]+)\) Gecko\/\d{8}/i.test(F)){D.ver=RegExp["$1"];D.gecko=parseFloat(D.ver);if(/Firefox\/(\S+)/i.test(F)){A.ver=RegExp["$1"];A.firefox=parseFloat(A.ver)}}else{if(/MSIE ([^;]+)/i.test(F)){D.ver=A.ver=RegExp["$1"];D.ie=A.ie=parseFloat(D.ver)}if(/Trident\/([^;]+)/i.test(F)){D.ver=A.ver=parseFloat(RegExp["$1"])+4;D.ie=A.ie=D.ver}}}}}if(C.win){if(/Win(?:dows )?([^do]{2})\s?(\d+\.\d+)?/.test(F)){if(RegExp["$1"]=="NT"){switch(RegExp["$2"]){case"5.0":C.win="2000";break;case"5.1":C.win="XP";break;case"6.0":C.win="Vista";break;case"6.1":C.win="7";break;case"6.2":C.win="8";break;case"6.3":C.win="9";break;case"10.0":C.win="10";break;default:C.win="NT";break}}else{if(RegExp["$1"]=="9x"){C.win="ME"}else{C.win=RegExp["$1"]}}}}return{engine:D,browser:A,system:C}}();_ub._tick=function(c,f,t){_ub.$ticker[t]++;if(_ub.$ticker[t]<=600){if(!eval(c)){window.setTimeout(function(){_ub._tick(c,f,t)},100)}else{f()}}};_ub._encrypt=function(B,A){if(typeof(JSEncrypt)=="function"&&A){A()}else{var C=document.createElement("script"),E=0;C.onload=C.onreadystatechange=function(){if(E){return}var F=C.readyState;if("undefined"==typeof F||F=="loaded"||F=="complete"){E=1;try{if(A){A()}}finally{C.onload=C.onreadystatechange=null;C.parentNode.removeChild(C)}}};C.asyn=1;C.src=location.protocol+"//js.ub.fang.com/"+B;var D=document.getElementsByTagName("script")[0];D.parentNode.insertBefore(C,D)}};_ub._rsa=function(D){var C="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDnJUXorWKGZEpLjgP9Aado78y8LwNiAqJNXkxLC0I5/rtnLmz8DuMgjxRVL+5iBeZ5a/Qm0zOOWd5/IJNLwZ6iAqX3NTxMuioAzaxXQWuhrgVJ+cxhWKuJGe1bsaPIUS+Py79a20FolQN+xT8Lf9aCTk9HdhjOd27LbX5DqwmO/wIDAQAB";var A=new JSEncrypt();A.setPublicKey(C);for(var B in D){if(B.indexOf("phone")>=4&&/^1[3|4|5|7|8]\d{9}$/.test(D[B])){D[B]=encodeURIComponent(A.encrypt(D[B].toString()))}}};_ub._handling=function(C){if(typeof C=="object"){C["vwg.userAgent"]=navigator.userAgent;for(var A in _ub.client.browser){if(A!="ver"){if(_ub.client.browser[A]){C["vwg.browser"]=A+"^"+_ub.client.browser[A]}}}for(var A in _ub.client.system){if(_ub.client.system[A]){if(A=="win"){C["vwg.system"]=A+_ub.client.system[A]}else{C["vwg.system"]=A}}}var B=[];var E=[];for(var D in C){B.push(D+"="+C[D]);if(D.indexOf(".")==-1){E.push(D)}}C=B.join("&");if(E.length){C+="&vwg.errorpage="+encodeURIComponent(window.location.href)+"^"+E.join("^")}return C}};_ub._record=function(A,D,C,B){_ub._encrypt("_jsencrypt.js",function(){_ub._rsa(B);var E=window.location.protocol+"//countub"+(_ub.location=="0"?"n":"s")+".3g.fang.com/w?g="+A+"&c="+encodeURIComponent(D)+"&b="+C+"&"+_ub._handling(B);if(_ub.$img!=null){_ub.$img.src=E}else{_ub._tick("document.body != null && document.body.firstChild != null",function(){var F=document.createElement("IMG");F.id="USERBEHAVIOR_IMG";F.src=E;F.width=0;F.height=0;F.style.display="none";document.body.insertBefore(F,document.body.firstChild)},"APPENDIMG");_ub._tick('document.getElementById("USERBEHAVIOR_IMG") != null',function(){_ub.$img=document.getElementById("USERBEHAVIOR_IMG")},"DETECTIMG")}})};_ub._requestCallback=function(A){for(var B in A){for(var C=0;C<A[B].length;C++){A[B][C].w=_ub._weigh(A[B][C])}}_ub.values=A;_ub.load(0);if(_ub.onload!=null){_ub.onload()}};_ub._onmessage=function(F){if(F.origin.indexOf(_ub.$domain)>-1){var B=F.data;if(/^collect/i.test(B)){}else{if(/^request:/i.test(B)){B=B.replace(/^request:/i,"");var A={};if(B!=""){var C=B.split(";");var D;for(var E=0;E<C.length;E++){D=C[E].split(":");if(D.length==2){A[D[0]]=function(){var K=[];var H,J;var I=D[1].split(",");for(var G=0;G<I.length;G++){J=I[G].split("_");if(J[0]!=""&&J.length==7){H={};H.v=J[0];H.b=parseInt(J[1]);if(isNaN(H.b)){H.b=0}H.d=J[2];H.t=parseInt(J[3]);H.c=J[4];H.p=parseInt(J[5]);H.m=J[6];K.push(H)}}return K}()}}}_ub._requestCallback(A)}else{if(/^view:/i.test(B)){B=B.replace(/^view:/i,"");if(_ub._viewCallback!=null){_ub._viewCallback(B)}}else{if(/^clear/i.test(B)){if(_ub._clearCallback!=null){_ub._clearCallback()}}}}}_ub._removeFrame()}};_ub._initialize=function(){if(_ub.$cookieEnabled){_ub.$user.parseCookie();if(_ub.$guid=="0"){_ub.$user.getGuid()}if(window.addEventListener!=null){window.addEventListener("message",_ub._onmessage,false)}else{if(window.attachEvent!=null){window.attachEvent("onmessage",_ub._onmessage)}}}else{return}if(!_ub.$lsEnabled&&_ub.$flashEnabled){_ub._tick("document.body != null && document.body.firstChild != null",function(){var C=document.createElement("DIV");C.id="USERBEHAVIOR_DIV";C.style.position="absolute";document.body.insertBefore(C,document.body.firstChild);var B="http://flv"+_ub.$domain.substring(_ub.$domain.indexOf("."))+"/_ub.swf?v="+(new Date().valueOf().toString());var A='<object id="USERBEHAVIOR_FLASH"';if(navigator.appName=="Microsoft Internet Explorer"){A+='classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" '}else{A+='type="application/x-shockwave-flash" ';A+='data="'+B+'" '}A+=' width="0" height="0">';A+='<param name="movie" value="'+B+'"></param>';A+='<param name="allowScriptAccess" value="always"></param>';A+="</object>";C.innerHTML=A},"APPENDFLASH");_ub._tick('document.getElementById("USERBEHAVIOR_FLASH") != null',function(){_ub.$flash=document.getElementById("USERBEHAVIOR_FLASH")},"DETECTFLASH")}}();_ub._filter=function(F,J){if(J==null){return F}else{var B=J.split("&");var A,G;var H=[];for(var E=0;E<B.length;E++){G=/[=!><\^\$#~]{2}/.exec(J)[0];if(G!=null){A=B[E].split(G);H.push({a:A[0],o:G,b:A[1]})}}var C=[];for(var E=0;E<F.length;E++){var I=true;for(var D=0;D<H.length;D++){if(!_ub._matches(F[E],H[D])){I=false;break}}if(I){C.push(F[E])}}return C}};_ub._matches=function(D,F){var E=false;var A;if(D[F.a]!=null){if(/[bdtwpm]/i.test(F.a)){F.b=parseInt(F.b)}switch(F.o){case"==":E=(D[F.a]==F.b);break;case"!=":E=(D[F.a]!=F.b);break;case"=>":if(F.a=="v"){F.b=parseInt(F.b)}E=(D[F.a]!=undefined&&D[F.a]>F.b);break;case"=<":if(F.a=="v"){F.b=parseInt(F.b)}E=(D[F.a]!=undefined&&D[F.a]<F.b);break;case"<=":if(F.a=="v"){F.b=parseInt(F.b)}E=(D[F.a]!=undefined&&D[F.a]<=F.b);break;case">=":if(F.a=="v"){F.b=parseInt(F.b)}E=(D[F.a]!=undefined&&D[F.a]>=F.b);break;case"^=":A=new RegExp("^"+F.b);A.ignoreCase=true;E=A.test(D[F.a]);break;case"$=":A=new RegExp(F.b+"$");A.ignoreCase=true;E=A.test(D[F.a]);break;case"#=":A=new RegExp(F.b);A.ignoreCase=true;E=A.test(D[F.a]);break;case"~=":if(F.a=="d"){var C=new Date();C=new Date(C.valueOf()-F.b*24*60*60*1000);var B=C.getFullYear();B+="_"+(C.getMonth()+1);B=B.replace("_",(B.length==7?"":"0"));B+="_"+(C.getDate());B=B.replace("_",(B.length==9?"":"0"));B=parseInt(B);E=(D[F.a]>=B)}break}}return E};_ub._weigh=function(C){if(C.b!=null&&C.d!=null&&C.t!=null&&C.p!=null&&C.m!=null){var H,I,D,B,G;var E;var A=[5,25,40,55,70,85,100];var F=[10,30,60,90,100];C.b>_ub.$actions.length?H=A[0]:H=A[_ub.$actions[C.b]];I=Math.floor((new Date().valueOf()-new Date(2012,1,1).valueOf())/1000/3600/24);I=I-C.d;G=new Date().getHours()-Math.floor(C.m/3600);E=I*24+G;if(I<=5){I=100-I*3}else{if(I>=6&&I<=19){I=85-(I-5)*2.5}else{if(I>=20&&I<=29){I=50-(I-19)*2}else{if(I>=30&&I<=59){I=30-(I-29)*1}else{if(I>=60){I=0}}}}}if(E>100){E=100}E=100-E;if(C.t>5){D=100}else{D=F[C.t-1]}if(C.p<=2){B=10}else{if(C.p>=3&&C.p<=5){B=30}else{if(C.p>=6&&C.p<=9){B=60}else{if(C.p>=10&&C.p<=15){B=80}else{if(C.p>=16){B=100}}}}}return H*0.45+I*0.25+0.2*D+0.05*B+0.05*E}else{return 0}};_ub._addFrame=function(B,D,C,A){if(_ub.$lsEnabled){_ub.$ticker[B]=0;_ub._tick('document.body != null && document.body.firstChild != null && _ub.$guid !="0" && _ub.$processing == 0',function(){_ub.$processing=1;var E=document.createElement("IFRAME");E.id="USERBEHAVIOR_FRAME";E.name="USERBEHAVIOR_FRAME";E.style.display="none";_ub.$frame=E;if(typeof(A)=="function"){_ub.onload=A}switch(B){case"COLLECT":E.src=window.location.protocol+"//"+_ub.$domain+"/lsc.htm?r="+new Date().valueOf()+"&g="+_ub.$guid+"&c="+encodeURIComponent(_ub.city)+"&b="+D+"&p="+C;break;case"REQUEST":E.src=window.location.protocol+"//"+_ub.$domain+"/lsr.htm?r="+new Date().valueOf()+"&c="+encodeURIComponent(_ub.city)+"&p="+C;break;case"VIEW":E.src=window.location.protocol+"//"+_ub.$domain+"/lsv.htm?r="+new Date().valueOf();break;case"CLEAR":E.src=window.location.protocol+"//"+_ub.$domain+"/lsn.htm?r="+new Date().valueOf();break}document.body.insertBefore(E,document.body.firstChild)},B)}};_ub._removeFrame=function(){if(_ub.$frame){document.body.removeChild(_ub.$frame);_ub.$processing=0;_ub.$frame=null}};_ub.collect=function(G,B){if(_ub.$cookieEnabled&&B!=null){var H=isNaN(G)?-1:G;if(typeof B=="string"){var A=B.split(";");B={};var D;for(var F=0;F<A.length;F++){D=A[F].split(":");B[D[0]]=D[1]}}B["vwg.city"]=encodeURIComponent(_ub.city);if(_ub.$user.uid!=0){if(B["vwg.passportid"]==null){B["vwg.passportid"]=_ub.$user.uid}}if(B["vwg.usertype"]==null){B["vwg.usertype"]=_ub.$user.getP2()}if(B["vwg.business"]==null){if(_ub.biz!=""){B["vwg.business"]=_ub.biz.toUpperCase();if(B["vwg.business"]=="W"){if(document.referrer){B["vwg.refurl"]=encodeURIComponent(document.referrer)}}}}if(B["vwg.agenttype"]==null){if(_ub.$user.realtor!=null&&_ub.$user.realtor!="0"){B["vwg.agenttype"]=_ub.$user.realtor}}if(_ub.$user.cid!="0"){if(B["vwg.sfcardid"]==null){B["vwg.sfcardid"]=_ub.$user.cid}}if(_ub.$user.phone!="0"){if(B["vwg.phone"]==null){B["vwg.phone"]=_ub.$user.phone}}if(B["vwg.valid"]==null){if(B["vwg.phone"]!=null||B["vwg.mail"]!=null){B["vwg.valid"]="1"}}if(_ub.$user.staff!="0"){if(B["vwg.staffmail"]==null){B["vwg.staffmail"]=_ub.$user.staff}}B["vwg.clientstorage"]=(_ub.$flashEnabled?1:0)+(_ub.$lsEnabled?2:0);B["vwg.sourcepage"]=document.getElementById("__vb")?document.getElementById("__vb").getAttribute("src").split("c=")[1]:"";var E=[];if(typeof B=="object"){for(var C in B){E.push(C+":"+B[C])}E=E.join(";")}_ub._record(_ub.$guid,_ub.city,H,B);if(_ub.$flash){_ub.$ticker["COLLECT"]=0;_ub._tick("_ub.$guid != 0 && _ub.$flash.collect != null",function(){try{_ub.$flash.collect(_ub.$guid,encodeURIComponent(_ub.city),H,E)}catch(I){}},"COLLECT")}else{_ub._addFrame("COLLECT",H,E)}}};_ub.request=function(B,A){if(_ub.$cookieEnabled){if(B!=null){if(_ub.$flash){_ub.$ticker["REQUEST"]=0;_ub._tick("_ub.$guid != 0 && _ub.$flash.request != null",function(){try{_ub.$flash.request(encodeURIComponent(_ub.city),B)}catch(C){}},"REQUEST")}else{_ub._addFrame("REQUEST",null,B,A)}}}};_ub.getValue=function(C,J,M){if(typeof _ub.values[C]==="undefined"){return""}else{var E=_ub._filter(_ub.values[C],M);var H;if(E.length==1){if(J==3){return E[0]}else{return E[0].v}}else{if(E.length>1){if(J==null){J=0}var G="";var A;if(J==0){var N=0;A=[];for(H=0;H<E.length;H++){N+=E[H].w;A.push({v:E[H].v,r:N})}var K=Math.random()*N;for(H=0;H<A.length;H++){if(A[H].r>=K){G=A[H].v;break}}}else{if(J==1){var F=0;for(H=0;H<E.length;H++){if(E[H].w>F){A=[];A.push(E[H].v);F=E[H].w}else{if(E[H].w==F){A.push(E[H].v)}}}G=A[Math.floor(Math.random()*A.length)]}else{if(J==2){var A=[];A.push(E[0]);var D=E[0].d;for(H=1;H<E.length;H++){var L=E[H].d;if(L>D){A=[];A.push(E[H]);D=L}else{if(L==D){A.push(E[H])}}}if(A.length==1){G=A[0].v}else{var J=0;for(j=0;j<A.length;j++){var B=A[j].m;if(B!=undefined&&B>J){J=B;G=A[j].v}}}}else{if(J==3){var I=[];for(H=0;H<E.length;H++){if(E[H].b==1){I.push(E[H])}}if(I.length){var A=[];A.push(I[0]);var D=I[0].d;for(H=1;H<I.length;H++){var L=I[H].d;if(L>D){A=[];A.push(I[H]);D=L}else{if(L==D){A.push(I[H])}}}if(A.length==1){G=A[0]}else{var J=0;for(j=0;j<A.length;j++){var B=A[j].m;if(B!=undefined&&B>J){J=B;G=A[j]}}}}}}}}return G}else{return""}}}};_ub.load=function(B){for(var A in _ub.values){_ub[A]=_ub.getValue(A,B)}};_ub.onload=null;