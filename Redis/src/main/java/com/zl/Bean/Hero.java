package com.zl.Bean;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/11/7.
 */
public class Hero implements Serializable {
    private Integer hId;
    private String hName;
    private String hProperety;
    private String hSkillw;
    private String hSkillq;
    private String hPassword;

    public Integer gethId() {
        return hId;
    }

    public void sethId(Integer hId) {
        this.hId = hId;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public String gethProperety() {
        return hProperety;
    }

    public void sethProperety(String hProperety) {
        this.hProperety = hProperety;
    }

    public String gethSkillw() {
        return hSkillw;
    }

    public void sethSkillw(String hSkillw) {
        this.hSkillw = hSkillw;
    }

    public String gethSkillq() {
        return hSkillq;
    }

    public void sethSkillq(String hSkillq) {
        this.hSkillq = hSkillq;
    }

    public String gethPassword() {
        return hPassword;
    }

    public void sethPassword(String hPassword) {
        this.hPassword = hPassword;
    }

    @Override
    public String toString() {
        return "Hero{" +
                "hId=" + hId +
                ", hName='" + hName + '\'' +
                ", hProperety='" + hProperety + '\'' +
                ", hSkillw='" + hSkillw + '\'' +
                ", hSkillq='" + hSkillq + '\'' +
                ", hPassword='" + hPassword + '\'' +
                '}';
    }
}
