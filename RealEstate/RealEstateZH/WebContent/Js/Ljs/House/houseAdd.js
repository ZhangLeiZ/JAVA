//bootstrap 数据验证
$(document).ready(function() {
    $('#modify').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	'house.house_name': {
                validators: {
                    notEmpty: {
                        message: '户型名称不能为空！'
                    },
                    stringLength: {
                        min: 0,
                        max: 100,
                        message: '不需要这么长!'
                    }
                }
            },
            'house.house_area': {
                validators: {
                    notEmpty: {
                        message: '面积不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'house.unit_price': {
                validators: {
                    notEmpty: {
                        message: '参考单价不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'house.house_intro': {
                validators: {
                    notEmpty: {
                        message: '简介不能为空'
                    },
                     
                }
            },
            'logoFile': {
                validators: {
                    notEmpty: {
                        message: '图片不能为空'
                    },
                     
                }
            },
            
            
           
            
            ages: {
                validators: {
                    lessThan: {
                        value: 100,
                        inclusive: true,
                        message: 'The ages has to be less than 100'
                    },
                    greaterThan: {
                        value: 10,
                        inclusive: false,
                        message: 'The ages has to be greater than or equals to 10'
                    }
                }
            }
        }
    });
});


$(document).ready(function() {
    $('#from1').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	'house.house_name': {
                validators: {
                    notEmpty: {
                        message: '户型名称不能为空！'
                    },
                    stringLength: {
                        min: 0,
                        max: 100,
                        message: '不需要这么长!'
                    }
                }
            },
            'house.house_area': {
                validators: {
                    notEmpty: {
                        message: '面积不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'house.unit_price': {
                validators: {
                    notEmpty: {
                        message: '参考单价不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'house.house_intro': {
                validators: {
                    notEmpty: {
                        message: '简介不能为空'
                    },
                     
                }
            },
            'logoFile': {
                validators: {
                    notEmpty: {
                        message: '图片不能为空'
                    },
                     
                }
            },
            
            
           
            
            ages: {
                validators: {
                    lessThan: {
                        value: 100,
                        inclusive: true,
                        message: 'The ages has to be less than 100'
                    },
                    greaterThan: {
                        value: 10,
                        inclusive: false,
                        message: 'The ages has to be greater than or equals to 10'
                    }
                }
            }
        }
    });
});