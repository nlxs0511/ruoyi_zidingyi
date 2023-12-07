package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TStockCode;

/**
 * 神秘代码Mapper接口
 * 
 * @author ruoyi
 * @date 2023-09-21
 */
public interface TStockCodeMapper 
{
    /**
     * 查询神秘代码
     * 
     * @param id 神秘代码主键
     * @return 神秘代码
     */
    public TStockCode selectTStockCodeById(Long id);

    /**
     * 查询神秘代码列表
     * 
     * @param tStockCode 神秘代码
     * @return 神秘代码集合
     */
    public List<TStockCode> selectTStockCodeList(TStockCode tStockCode);

    /**
     * 新增神秘代码
     * 
     * @param tStockCode 神秘代码
     * @return 结果
     */
    public int insertTStockCode(TStockCode tStockCode);

    /**
     * 修改神秘代码
     * 
     * @param tStockCode 神秘代码
     * @return 结果
     */
    public int updateTStockCode(TStockCode tStockCode);

    /**
     * 删除神秘代码
     * 
     * @param id 神秘代码主键
     * @return 结果
     */
    public int deleteTStockCodeById(Long id);

    /**
     * 批量删除神秘代码
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTStockCodeByIds(String[] ids);
}
