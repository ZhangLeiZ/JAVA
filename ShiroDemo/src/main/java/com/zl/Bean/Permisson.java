package com.zl.Bean;

/**
 * Created by Administrator on 2017/10/9.
 */
public class Permisson {
    private Integer Id;
    private String roleName;
    private String permission;
    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }


}
