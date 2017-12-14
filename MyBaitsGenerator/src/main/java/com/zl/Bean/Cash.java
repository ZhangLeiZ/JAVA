package com.zl.Bean;

import java.util.Date;

public class Cash {
    private Long id;

    private Long money;

    private Date cashTime;

    private String cashCustomer;

    private Long cashType;

    private Long payType;

    private Date createTime;

    private Long userId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }

    public Date getCashTime() {
        return cashTime;
    }

    public void setCashTime(Date cashTime) {
        this.cashTime = cashTime;
    }

    public String getCashCustomer() {
        return cashCustomer;
    }

    public void setCashCustomer(String cashCustomer) {
        this.cashCustomer = cashCustomer == null ? null : cashCustomer.trim();
    }

    public Long getCashType() {
        return cashType;
    }

    public void setCashType(Long cashType) {
        this.cashType = cashType;
    }

    public Long getPayType() {
        return payType;
    }

    public void setPayType(Long payType) {
        this.payType = payType;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
}