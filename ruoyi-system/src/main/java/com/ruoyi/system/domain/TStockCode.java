package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 神秘代码对象 t_stock_code
 * 
 * @author ruoyi
 * @date 2023-09-21
 */
public class TStockCode extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 岗位ID */
    private Long id;

    /** 编码 */
    @Excel(name = "编码")
    private String code;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 显示顺序 */
    @Excel(name = "显示顺序")
    private Long sort;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private Long status;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCode() 
    {
        return code;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setSort(Long sort) 
    {
        this.sort = sort;
    }

    public Long getSort() 
    {
        return sort;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("code", getCode())
            .append("name", getName())
            .append("sort", getSort())
            .append("status", getStatus())
            .append("userId", getUserId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
