//身份证验证
function checkEnergyCard(allowancePersonValue) {
    if (allowancePersonValue == ''){
        return true;
    }

    //校验长度，类型
    if (isCardNo(allowancePersonValue) === false) {
        return false;
    }
        //检查省份
    else if (checkProvince(allowancePersonValue) === false) {
        return false;
    }
        //校验生日
    else if (checkBirthday(allowancePersonValue) === false) {
        return false;
    }
        //检验位的检测
    else if (checkParity(allowancePersonValue) === false) {
        return false;
    } else {
        return true;
    }

}

//订单提交页-验证邮政编码  
function IsPostCode(postcode) {
    if (! /^[0-9][0-9]{5}$/.test(postcode)) {
        return false;
    }
    return true;
}

function checkEmail(email) {
    if (email == '' || !email) {
        return false;
    }
    if (!email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
        return false;
    }
    return true;
}

function checkMobil(number) {
    if (number == "" || !number) {
        return false;
    }

    if (!number.match(/^1[3|4|5|8|7][0-9]\d{4,8}$/)) {
        return false;
    }
    return true;
}

//身份证省的编码
var vcity = {
    11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古",
    21: "辽宁", 22: "吉林", 23: "黑龙江", 31: "上海", 32: "江苏",
    33: "浙江", 34: "安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南",
    42: "湖北", 43: "湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆",
    51: "四川", 52: "贵州", 53: "云南", 54: "西藏", 61: "陕西", 62: "甘肃",
    63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外"
};

//检查号码是否符合规范，包括长度，类型
function isCardNo(card) {
    //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X
    var reg = /(^\d{15}$)|(^\d{17}(\d|X)$)/;
    if (reg.test(card) === false) {
        //alert("demo");
        return false;
    }
    return true;
}

//取身份证前两位,校验省份
function checkProvince(card) {
    var province = card.substr(0, 2);
    if (vcity[province] == undefined) {
        return false;
    }
    return true;
}

//检查生日是否正确
function checkBirthday(card) {
    var len = card.length;
    //身份证15位时，次序为省（3位）市（3位）年（2位）月（2位）日（2位）校验位（3位），皆为数字
    if (len == '15') {
        var re_fifteen = /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/;
        var arr_data = card.match(re_fifteen);
        var year = arr_data[2];
        var month = arr_data[3];
        var day = arr_data[4];
        var birthday = new Date('19' + year + '/' + month + '/' + day);
        return verifyBirthday('19' + year, month, day, birthday);
    }
    //身份证18位时，次序为省（3位）市（3位）年（4位）月（2位）日（2位）校验位（4位），校验位末尾可能为X
    if (len == '18') {
        var re_eighteen = /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/;
        var arr_data = card.match(re_eighteen);
        var year = arr_data[2];
        var month = arr_data[3];
        var day = arr_data[4];
        var birthday = new Date(year + '/' + month + '/' + day);
        return verifyBirthday(year, month, day, birthday);
    }
    return false;
}

//校验日期
function verifyBirthday(year, month, day, birthday) {
    var now = new Date();
    var now_year = now.getFullYear();
    //年月日是否合理
    if (birthday.getFullYear() == year && (birthday.getMonth() + 1) == month && birthday.getDate() == day) {
        //判断年份的范围（3岁到100岁之间)
        var time = now_year - year;
        if (time >= 3 && time <= 100) {
            return true;
        }
        return false;
    }
    return false;
}

//校验位的检测
function checkParity(card) {
    //15位转18位
    card = changeFivteenToEighteen(card);
    var len = card.length;
    if (len == '18') {
        var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
        var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
        var cardTemp = 0, i, valnum;
        for (i = 0; i < 17; i++) {
            cardTemp += card.substr(i, 1) * arrInt[i];
        }
        valnum = arrCh[cardTemp % 11];
        if (valnum == card.substr(17, 1)) {
            return true;
        }
        return false;
    }
    return false;
}

//15位转18位身份证号
function changeFivteenToEighteen(card) {
    if (card.length == '15') {
        var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
        var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
        var cardTemp = 0, i;
        card = card.substr(0, 6) + '19' + card.substr(6, card.length - 6);
        for (i = 0; i < 17; i++) {
            cardTemp += card.substr(i, 1) * arrInt[i];
        }
        card += arrCh[cardTemp % 11];
        return card;
    }
    return card;
}

/// <reference path="../js/jquery-1.3.2-vsdoc2.js" />
//表单提交
$(document).ready(function () {
    check_input();
});

function checkform() {
    return check();
}


function check_input() {
    var oldvalue = "";
    var newvalue = "";
    var newvalue1 = "";
    $("#oldpass").blur(function () {
        check1();
    });

    jQuery("#newpass").blur(function () {
        check2();
    });

    jQuery("#newpass1").blur(function () {
        check3();
    });
}

function check1() {
    $("#eoldpass").hide(0);
    oldvalue = jQuery.trim(jQuery("#oldpass").val());
    //空值判断
    if (oldvalue == "") {
        $("#eoldpass").show(0).text('密码不能为空');
        return false;
    }
    return true;
}

function check2() {
    $("#enewpass").hide(0);
    $("#enewpass1").hide(0);

    newvalue = jQuery.trim(jQuery("#newpass").val());
    newvalue1 = jQuery.trim(jQuery("#newpass1").val());
    //密码

    if (newvalue == "") {
        $("#enewpass").show(0).text('新密码不能为空');
        return false;
    }
    else {
        if (newvalue.length < 6 || newvalue.length > 16) {
            $("#enewpass").show(0).text('6-16个字符,区分大小写');
            return false;
        }

        if ((/>|<|,|\[|\]|\{|\}|\?|\/|\+|=|\||\'|\\|\"|:|;|\~|\!|\@|\#|\*|\$|\%|\^|\&|\(|\)|`/i).test(newvalue)) {
            $("#enewpass").show(0).text('请勿用特殊字符');
            return false;
        }

        if ((/[\u4E00-\u9FA5]/g).test(newvalue)) {
            $("#enewpass").show(0).text('请勿用中文');
            return false;
        }

        if (newvalue1 != "" && newvalue1 != newvalue) {
            $("#enewpass1").show(0).text('两次密码不一致');
            return false;
        }
    }
    return true;
}

function check3() {
    $("#enewpass").hide(0);
    $("#enewpass1").hide(0);

    newvalue = jQuery.trim(jQuery("#newpass").val());
    newvalue1 = jQuery.trim(jQuery("#newpass1").val());

    if (newvalue1 == "") {
        $("#enewpass1").show(0).text('密码不能为空');
        return false;
    }
    if (newvalue != "") {
        //输入密码不同
        if (newvalue1 != newvalue) {
            $("#enewpass1").show(0).text('两次密码不一致');
            return false;
        }
    }
    return true;
}


function check() {
    if (check1() && check2() && check3()) {
        return true;
    }
    return false;
}
