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
        	'building.building_name': {
                validators: {
                    notEmpty: {
                        message: '楼栋名称不能为为空'
                    },
                    stringLength: {
                        min: 0,
                        max: 100,
                        message: '不需要这么长!'
                    }
                }
            },
            'building.total_floor': {
                validators: {
                    notEmpty: {
                        message: '总层数不能为空'
                    },
                    regexp: {
                        regexp: /^\d+$/,
                        message: '请输入数字类型！'
                    },
                    
                    regexp: {
                        regexp: /^[1-9]\d*$/,
                        message: '不能为0，不能以0开头！'
                    }
                }
            },
            'building.total_lift': {
                validators: {
                    notEmpty: {
                        message: '电梯数不能为空'
                    },
                    regexp: {
                        regexp: /^\d+$/,
                        message: '请输入数字类型！'
                    },
                    regexp: {
                        regexp: /^[1-9]\d*$/,
                        message: '不能为0，不能以0开头！'
                    }
                }
            },
            'building.floor_rooms': {
                validators: {
                    notEmpty: {
                        message: '每层多少户不能为空'
                    },
                     regexp: {
                         regexp: /^\d+$/,
                         message: '请输入数字类型！'
                     },
                     regexp: {
                         regexp: /^[1-9]\d*$/,
                         message: '不能为0，不能以0开头！'
                     }
                }
            },
            
            'building.total_room': {
                validators: {
                    notEmpty: {
                        message: '总户数不能为空'
                    },   
                    regexp: {
                        regexp: /^\d+$/,
                        message: '请输入数字类型！'
                    },
                    regexp: {
                        regexp: /^[1-9]\d*$/,
                        message: '不能为0，不能以0开头！'
                    }
                }
            },
            'budAdd.email': {
                validators: {
                    notEmpty: {
                        message: '邮箱不能为空'
                    },
                    emailAddress: {
                        message: '输入的不是一个有效的电子邮件地址'
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



