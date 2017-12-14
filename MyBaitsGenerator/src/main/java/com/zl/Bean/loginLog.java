package com.zl.Bean;

import java.util.Date;

public class loginLog {
    private Long id;

    private Long userId;

    private Date loginTime;

    private String loginIp;

    private Byte isOnline;

    private String loginoutTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp == null ? null : loginIp.trim();
    }

    public Byte getIsOnline() {
        return isOnline;
    }

    public void setIsOnline(Byte isOnline) {
        this.isOnline = isOnline;
    }

    public String getLoginoutTime() {
        return loginoutTime;
    }

    public void setLoginoutTime(String loginoutTime) {
        this.loginoutTime = loginoutTime == null ? null : loginoutTime.trim();
    }
}