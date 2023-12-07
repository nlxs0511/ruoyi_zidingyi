package com.ruoyi.web.controller.stocker;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.ruoyi.common.core.domain.entity.SysStocker;
import com.ruoyi.common.core.domain.entity.SysUser;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TStockCode;
import com.ruoyi.system.service.ITStockCodeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

import javax.swing.text.html.Option;

/**
 * 神秘代码Controller
 * 
 * @author ruoyi
 * @date 2023-09-21
 */
@Controller
@RequestMapping("/stocker/code")
public class TStockCodeController extends BaseController
{
    private String prefix = "stocker/code";

    @Autowired
    private ITStockCodeService tStockCodeService;

    @RequiresPermissions("system:code:view")
    @GetMapping()
    public String code()
    {
        return prefix + "/code";
    }


    @GetMapping("/getExcel")
    public String getExcel()
    {
        return prefix + "/excel";
    }



   // @Log(title = "导入数据", businessType = BusinessType.IMPORT)
    @RequiresPermissions("system:user:import")
    @PostMapping("/importExcelData")
    @ResponseBody
    public TableDataInfo importExcelData(String filePath) throws Exception
    {
        filePath ="E:\\data.xlsx";
        File file = new File(filePath);
        InputStream inputStream =new FileInputStream(file);
        ExcelUtil<SysStocker> util = new ExcelUtil<SysStocker>(SysStocker.class);
        List<SysStocker> userList = util.importExcel("引用表",inputStream,0);

        Optional.ofNullable(userList).orElse(new ArrayList<>()).stream().forEach(e->{
            e.setAvgPrice(e.getAvgPrice().setScale(2, BigDecimal.ROUND_HALF_UP));
            e.setStartRange((e.getStartRange().multiply(new BigDecimal(100))).setScale(2, BigDecimal.ROUND_HALF_UP));
            e.setAbsoluteUpRange((e.getAbsoluteUpRange().multiply(new BigDecimal(100))).setScale(2, BigDecimal.ROUND_HALF_UP));
        });
        return getDataTable(userList);
    }

    /**
     * 查询神秘代码列表
     */
    @RequiresPermissions("system:code:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TStockCode tStockCode)
    {
        startPage();
        List<TStockCode> list = tStockCodeService.selectTStockCodeList(tStockCode);
        return getDataTable(list);
    }

    /**
     * 导出神秘代码列表
     */
    @RequiresPermissions("system:code:export")
    @Log(title = "神秘代码", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TStockCode tStockCode)
    {
        List<TStockCode> list = tStockCodeService.selectTStockCodeList(tStockCode);
        ExcelUtil<TStockCode> util = new ExcelUtil<TStockCode>(TStockCode.class);
        return util.exportExcel(list, "神秘代码数据");
    }

    /**
     * 新增神秘代码
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存神秘代码
     */
    @RequiresPermissions("system:code:add")
    @Log(title = "神秘代码", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TStockCode tStockCode)
    {
        return toAjax(tStockCodeService.insertTStockCode(tStockCode));
    }

    /**
     * 修改神秘代码
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TStockCode tStockCode = tStockCodeService.selectTStockCodeById(id);
        mmap.put("tStockCode", tStockCode);
        return prefix + "/edit";
    }

    /**
     * 修改保存神秘代码
     */
    @RequiresPermissions("system:code:edit")
    @Log(title = "神秘代码", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TStockCode tStockCode)
    {
        return toAjax(tStockCodeService.updateTStockCode(tStockCode));
    }

    /**
     * 删除神秘代码
     */
    @RequiresPermissions("system:code:remove")
    @Log(title = "神秘代码", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tStockCodeService.deleteTStockCodeByIds(ids));
    }
}
