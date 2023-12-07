package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TStockCodeMapper;
import com.ruoyi.system.domain.TStockCode;
import com.ruoyi.system.service.ITStockCodeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 神秘代码Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-09-21
 */
@Service
public class TStockCodeServiceImpl implements ITStockCodeService 
{
    @Autowired
    private TStockCodeMapper tStockCodeMapper;

    /**
     * 查询神秘代码
     * 
     * @param id 神秘代码主键
     * @return 神秘代码
     */
    @Override
    public TStockCode selectTStockCodeById(Long id)
    {
        return tStockCodeMapper.selectTStockCodeById(id);
    }

    /**
     * 查询神秘代码列表
     * 
     * @param tStockCode 神秘代码
     * @return 神秘代码
     */
    @Override
    public List<TStockCode> selectTStockCodeList(TStockCode tStockCode)
    {
        return tStockCodeMapper.selectTStockCodeList(tStockCode);
    }

    /**
     * 新增神秘代码
     * 
     * @param tStockCode 神秘代码
     * @return 结果
     */
    @Override
    public int insertTStockCode(TStockCode tStockCode)
    {
        tStockCode.setCreateTime(DateUtils.getNowDate());
        return tStockCodeMapper.insertTStockCode(tStockCode);
    }

    /**
     * 修改神秘代码
     * 
     * @param tStockCode 神秘代码
     * @return 结果
     */
    @Override
    public int updateTStockCode(TStockCode tStockCode)
    {
        tStockCode.setUpdateTime(DateUtils.getNowDate());
        return tStockCodeMapper.updateTStockCode(tStockCode);
    }

    /**
     * 批量删除神秘代码
     * 
     * @param ids 需要删除的神秘代码主键
     * @return 结果
     */
    @Override
    public int deleteTStockCodeByIds(String ids)
    {
        return tStockCodeMapper.deleteTStockCodeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除神秘代码信息
     * 
     * @param id 神秘代码主键
     * @return 结果
     */
    @Override
    public int deleteTStockCodeById(Long id)
    {
        return tStockCodeMapper.deleteTStockCodeById(id);
    }
}
