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
        	'customer.customer_name': {
                validators: {
                    notEmpty: {
                        message: '客户姓名不能为空！'
                    },
                    stringLength: {
                        min: 0,
                        max: 100,
                        message: '不需要这么长!'
                    }
                }
            },
            'customer.birthday': {
                validators: {
                    notEmpty: {
                        message: '生日不能为空'
                    }
                    
                }
            },
            'customer.identity_id': {
                validators: {
                    notEmpty: {
                        message: '身份证号不能为空'
                    },
                    regexp: {
                        regexp: /(^\d{15}$)|(^\d{17}(\d|X)$)/,
                        message: '请输入正确的身份证形式！'
                    },
                    regexp: {
                        regexp: /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/,
                        message: '请输入正确的身份证形式！'
                    },regexp: {
                        regexp:/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/,
                        message: '请输入正确的身份证形式！'
                    }
                }
            },
            'customer.customer_email': {
                validators: {
                    notEmpty: {
                        message: '邮箱不能为空'
                    },
                     regexp: {
                         regexp: /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/,
                         message: '请输入正确的邮箱格式！'
                     }
                }
            },
            
            'buildings.longitude': {
                validators: {
                    notEmpty: {
                        message: '经度不能为空'
                    },   
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'buildings.latitude': {
                validators: {
                    notEmpty: {
                        message: '纬度不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
           
            'buildings.avg_price': {
                validators: {
                    notEmpty: {
                        message: '楼盘均价不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'customer.customer_phone': {
                validators: {
                    notEmpty: {
                        message: '手机号码不能为空'
                    },
                    regexp: {
                        regexp: /^[1][3,4,5,7,8][0-9]{9}$/,
                        message: '请输入正确的号码类型！'
                    }
                   
                }
            },          
            'customer.customer_address': {
                validators: {
                    notEmpty: {
                        message: '联系地址不能为空'
                    }
                   
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
        	'customer.customer_name': {
                validators: {
                    notEmpty: {
                        message: '客户姓名不能为空！'
                    },
                    stringLength: {
                        min: 0,
                        max: 100,
                        message: '不需要这么长!'
                    }
                }
            },
            'customer.birthday': {
                validators: {
                    notEmpty: {
                        message: '生日不能为空'
                    }
                    
                }
            },
            'customer.identity_id': {
                validators: {
                    notEmpty: {
                        message: '身份证号不能为空'
                    },
                    regexp: {
                        regexp: /(^\d{15}$)|(^\d{17}(\d|X)$)/,
                        message: '请输入正确的身份证形式！'
                    },
                    regexp: {
                        regexp: /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/,
                        message: '请输入正确的身份证形式！'
                    },regexp: {
                        regexp:/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/,
                        message: '请输入正确的身份证形式！'
                    }
                }
            },
            'customer.customer_email': {
                validators: {
                    notEmpty: {
                        message: '邮箱不能为空'
                    },
                     regexp: {
                         regexp: /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/,
                         message: '请输入正确的邮箱格式！'
                     }
                }
            },
            
            'buildings.longitude': {
                validators: {
                    notEmpty: {
                        message: '经度不能为空'
                    },   
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'buildings.latitude': {
                validators: {
                    notEmpty: {
                        message: '纬度不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
           
            'buildings.avg_price': {
                validators: {
                    notEmpty: {
                        message: '楼盘均价不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'customer.customer_phone': {
                validators: {
                    notEmpty: {
                        message: '手机号码不能为空'
                    },
                    regexp: {
                        regexp: /^[1][3,4,5,7,8][0-9]{9}$/,
                        message: '请输入正确的号码类型！'
                    }
                   
                }
            },          
            'customer.customer_address': {
                validators: {
                    notEmpty: {
                        message: '联系地址不能为空'
                    }
                   
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
    $('#from2').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	'upload': {
                validators: {
                    notEmpty: {
                        message: '上传购房合同不能为空！'
                    },
                    stringLength: {
                        min: 0,
                        max: 100,
                        message: '不需要这么长!'
                    }
                }
            },
            'logoFile': {
                validators: {
                    notEmpty: {
                        message: '上传电子档案不能为空'
                    }
                    
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