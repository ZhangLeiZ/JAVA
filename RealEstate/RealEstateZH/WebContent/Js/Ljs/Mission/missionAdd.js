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
        	'mission.quantity': {
                validators: {
                    notEmpty: {
                        message: '员工任务量不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'mission.bonus_percent': {
                validators: {
                    notEmpty: {
                        message: '提成百分比不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    },
                    
        		 regexp: {
                     regexp: /^([0-9][0-9]|[0-9])(\.\d{1,})?$|^100$/,
                     message: '只能在1~100之间！'
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
        	'mission.quantity': {
                validators: {
                    notEmpty: {
                        message: '员工任务量不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'mission.bonus_percent': {
                validators: {
                    notEmpty: {
                        message: '提成百分比不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    },
                    regexp: {
                        regexp: /^([0-9][0-9]|[0-9])(\.\d{1,})?$|^100$/,
                        message: '只能在1~100之间！'
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