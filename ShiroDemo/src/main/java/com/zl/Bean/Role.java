package com.zl.Bean;

/**
 * Created by Administrator on 2017/10/9.
 */
public class Role {
    private String Id;
    private String username;
    private String rolename;
    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }


}
