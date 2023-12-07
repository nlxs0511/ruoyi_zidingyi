package com.ruoyi.common.core.domain.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excel.ColumnType;
import com.ruoyi.common.annotation.Excel.Type;
import com.ruoyi.common.annotation.Excels;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 用户对象 sys_user
 * 
 * @author ruoyi
 */
public class SysStocker extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    @Excel(name = "分时")
    private String time;

    @Excel(name = "日K")
    private String dayTime;
        
    @Excel(name = "绝对涨幅")
    private BigDecimal absoluteUpRange;
        
    @Excel(name = "换手")
    private BigDecimal change;
        
    @Excel(name = "量比")
    private BigDecimal measureRate;
    
    @Excel(name = "涨跌幅")
    private BigDecimal upDownRange;
        
    @Excel(name = "开幅")
    private BigDecimal startRange;

    @Excel(name = "开位")
    private String startPlace;
        
    @Excel(name = "最低")
    private BigDecimal lowestPlace;
    @Excel(name = "最高")
    private BigDecimal highestRange;
   
    @Excel(name = "开盘价")
    private BigDecimal startPrice;
    @Excel(name = "序号")
    private Integer orderNo;

    @Excel(name = "简称")
    private String name;


    @Excel(name = "代码")
    private String code;

    @Excel(name = "板块")
    private String palte;


    @Excel(name = "成交价")
    private BigDecimal buyPrice;

    @Excel(name = "均价")
    private BigDecimal avgPrice;

    @Excel(name = "前收盘")
    private BigDecimal yesterdayPrice;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDayTime() {
        return dayTime;
    }

    public void setDayTime(String dayTime) {
        this.dayTime = dayTime;
    }

    public BigDecimal getAbsoluteUpRange() {
        return absoluteUpRange;
    }

    public void setAbsoluteUpRange(BigDecimal absoluteUpRange) {
        this.absoluteUpRange = absoluteUpRange;
    }

    public BigDecimal getChange() {
        return change;
    }

    public void setChange(BigDecimal change) {
        this.change = change;
    }

    public BigDecimal getMeasureRate() {
        return measureRate;
    }

    public void setMeasureRate(BigDecimal measureRate) {
        this.measureRate = measureRate;
    }

    public BigDecimal getUpDownRange() {
        return upDownRange;
    }

    public void setUpDownRange(BigDecimal upDownRange) {
        this.upDownRange = upDownRange;
    }

    public BigDecimal getStartRange() {
        return startRange;
    }

    public void setStartRange(BigDecimal startRange) {
        this.startRange = startRange;
    }

    public String getStartPlace() {
        return startPlace;
    }

    public void setStartPlace(String startPlace) {
        this.startPlace = startPlace;
    }

    public BigDecimal getLowestPlace() {
        return lowestPlace;
    }

    public void setLowestPlace(BigDecimal lowestPlace) {
        this.lowestPlace = lowestPlace;
    }

    public BigDecimal getHighestRange() {
        return highestRange;
    }

    public void setHighestRange(BigDecimal highestRange) {
        this.highestRange = highestRange;
    }

    public BigDecimal getStartPrice() {
        return startPrice;
    }

    public void setStartPrice(BigDecimal startPrice) {
        this.startPrice = startPrice;
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getPalte() {
        return palte;
    }

    public void setPalte(String palte) {
        this.palte = palte;
    }

    public BigDecimal getBuyPrice() {
        return buyPrice;
    }

    public void setBuyPrice(BigDecimal buyPrice) {
        this.buyPrice = buyPrice;
    }

    public BigDecimal getAvgPrice() {
        return avgPrice;
    }

    public void setAvgPrice(BigDecimal avgPrice) {
        this.avgPrice = avgPrice;
    }

    public BigDecimal getYesterdayPrice() {
        return yesterdayPrice;
    }

    public void setYesterdayPrice(BigDecimal yesterdayPrice) {
        this.yesterdayPrice = yesterdayPrice;
    }
}
