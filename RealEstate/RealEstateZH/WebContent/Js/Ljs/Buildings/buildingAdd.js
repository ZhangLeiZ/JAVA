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
        	'buildings.buildings_name': {
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
            'buildings.buildings_address': {
                validators: {
                    notEmpty: {
                        message: '地址不能为空'
                    }
                    
                }
            },
            'buildings.floor_area': {
                validators: {
                    notEmpty: {
                        message: '占地面积不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            'buildings.building_area': {
                validators: {
                    notEmpty: {
                        message: '建筑面积不能为空'
                    },
                     regexp: {
                         regexp: /^[0-9]+\.?[0-9]*$/,
                         message: '请输入数字类型！'
                     }
                }
            },
            
            'logoFile': {
                validators: {
                    notEmpty: {
                        message: '楼盘封面不能为空！'
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
            'buildings.company': {
                validators: {
                    notEmpty: {
                        message: '开发公司不能为空'
                    }
                   
                }
            },          
            'buildings.open_date': {
                validators: {
                    notEmpty: {
                        message: '开盘时间不能为空'
                    }
                   
                }
            },          
            'buildings.total_rooms': {
                validators: {
                    notEmpty: {
                        message: '总套数不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.reception_address': {
                validators: {
                    notEmpty: {
                        message: '接待地址不能为空'
                    }
                   
                }
            },          
            'buildings.buildings_tel': {
                validators: {
                    notEmpty: {
                        message: '楼盘售楼电话不能为空'
                    },
                    regexp: {
                        regexp: /^[1][3,4,5,7,8][0-9]{9}$/,
                        message: '请输入正确的号码类型！'
                    }
                }
            },          
            'buildings.green_ratio': {
                validators: {
                    notEmpty: {
                        message: '绿化率不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.plot_ratio': {
                validators: {
                    notEmpty: {
                        message: '容积率不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.property_company': {
                validators: {
                    notEmpty: {
                        message: '物业公司不能为空'
                    }
                    
                }
            },          
            'buildings.property_fee': {
                validators: {
                    notEmpty: {
                        message: '物业费不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                    
                }
            },          
            'buildings.car_station': {
                validators: {
                    notEmpty: {
                        message: '车位数不能为空'
                    },
                    regexp: {
                        regexp: /^\d+$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.traffic': {
                validators: {
                    notEmpty: {
                        message: '交通状况不能为空'
                    }
                  
                }
            },          
            'buildings.equipments': {
                validators: {
                    notEmpty: {
                        message: '周边配套不能为空'
                    }
                   
                }
            },          
            'buildings.buildings_intro': {
                validators: {
                    notEmpty: {
                        message: '简介不能为空'
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
        	'buildings.buildings_name': {
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
            'buildings.buildings_address': {
                validators: {
                    notEmpty: {
                        message: '地址不能为空'
                    }
                    
                }
            },
            'buildings.floor_area': {
                validators: {
                    notEmpty: {
                        message: '占地面积不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },
            
            
            
            
            'buildings.buildings_area': {
                validators: {
                    notEmpty: {
                        message: '所属区域不能为空'
                    },
                    
                }
            },
            
           
            
            'buildings.house_type': {
                validators: {
                    notEmpty: {
                        message: '房源类型不能为空'
                    },
                    
                }
            },
            
            
            'buildings.building_area': {
                validators: {
                    notEmpty: {
                        message: '建筑面积不能为空'
                    },
                     regexp: {
                         regexp: /^[0-9]+\.?[0-9]*$/,
                         message: '请输入数字类型！'
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
            'buildings.company': {
                validators: {
                    notEmpty: {
                        message: '开发公司不能为空'
                    }
                   
                }
            },          
            'buildings.open_date': {
                validators: {
                    notEmpty: {
                        message: '开盘时间不能为空'
                    }
                   
                }
            },          
            'buildings.total_rooms': {
                validators: {
                    notEmpty: {
                        message: '总套数不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.reception_address': {
                validators: {
                    notEmpty: {
                        message: '接待地址不能为空'
                    }
                   
                }
            },          
            'buildings.buildings_tel': {
                validators: {
                    notEmpty: {
                        message: '楼盘售楼电话不能为空'
                    },
                    regexp: {
                        regexp: /^[1][3,4,5,7,8][0-9]{9}$/,
                        message: '请输入正确的号码类型！'
                    }
                }
            },          
            'buildings.green_ratio': {
                validators: {
                    notEmpty: {
                        message: '绿化率不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.plot_ratio': {
                validators: {
                    notEmpty: {
                        message: '容积率不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.property_company': {
                validators: {
                    notEmpty: {
                        message: '物业公司不能为空'
                    }
                    
                }
            },          
            'buildings.property_fee': {
                validators: {
                    notEmpty: {
                        message: '物业费不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]+\.?[0-9]*$/,
                        message: '请输入数字类型！'
                    }
                    
                }
            },          
            'buildings.car_station': {
                validators: {
                    notEmpty: {
                        message: '车位数不能为空'
                    },
                    regexp: {
                        regexp: /^\d+$/,
                        message: '请输入数字类型！'
                    }
                }
            },          
            'buildings.traffic': {
                validators: {
                    notEmpty: {
                        message: '交通状况不能为空'
                    }
                  
                }
            },          
            'buildings.equipments': {
                validators: {
                    notEmpty: {
                        message: '周边配套不能为空'
                    }
                   
                }
            },          
            'buildings.buildings_intro': {
                validators: {
                    notEmpty: {
                        message: '简介不能为空'
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