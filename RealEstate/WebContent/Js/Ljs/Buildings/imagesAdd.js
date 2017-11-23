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
        	'img.img_des': {
                validators: {
                    notEmpty: {
                        message: '楼盘名称不能为空！'
                    },
                    stringLength: {
                        min: 0,
                        max: 100,
                        message: '不需要这么长!'
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