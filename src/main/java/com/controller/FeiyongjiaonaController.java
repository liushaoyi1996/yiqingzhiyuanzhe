package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.FeiyongjiaonaEntity;
import com.entity.view.FeiyongjiaonaView;

import com.service.FeiyongjiaonaService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 费用缴纳
 * 后端接口
 * @author 
 * @email 
 * @date 2021-01-05 19:39:06
 */
@RestController
@RequestMapping("/feiyongjiaona")
public class FeiyongjiaonaController {
    @Autowired
    private FeiyongjiaonaService feiyongjiaonaService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,FeiyongjiaonaEntity feiyongjiaona, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			feiyongjiaona.setYonghuming((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<FeiyongjiaonaEntity> ew = new EntityWrapper<FeiyongjiaonaEntity>();
		PageUtils page = feiyongjiaonaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, feiyongjiaona), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,FeiyongjiaonaEntity feiyongjiaona, HttpServletRequest request){
        EntityWrapper<FeiyongjiaonaEntity> ew = new EntityWrapper<FeiyongjiaonaEntity>();
		PageUtils page = feiyongjiaonaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, feiyongjiaona), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( FeiyongjiaonaEntity feiyongjiaona){
       	EntityWrapper<FeiyongjiaonaEntity> ew = new EntityWrapper<FeiyongjiaonaEntity>();
      	ew.allEq(MPUtil.allEQMapPre( feiyongjiaona, "feiyongjiaona")); 
        return R.ok().put("data", feiyongjiaonaService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FeiyongjiaonaEntity feiyongjiaona){
        EntityWrapper< FeiyongjiaonaEntity> ew = new EntityWrapper< FeiyongjiaonaEntity>();
 		ew.allEq(MPUtil.allEQMapPre( feiyongjiaona, "feiyongjiaona")); 
		FeiyongjiaonaView feiyongjiaonaView =  feiyongjiaonaService.selectView(ew);
		return R.ok("查询费用缴纳成功").put("data", feiyongjiaonaView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        FeiyongjiaonaEntity feiyongjiaona = feiyongjiaonaService.selectById(id);
        return R.ok().put("data", feiyongjiaona);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        FeiyongjiaonaEntity feiyongjiaona = feiyongjiaonaService.selectById(id);
        return R.ok().put("data", feiyongjiaona);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody FeiyongjiaonaEntity feiyongjiaona, HttpServletRequest request){
    	feiyongjiaona.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(feiyongjiaona);

        feiyongjiaonaService.insert(feiyongjiaona);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody FeiyongjiaonaEntity feiyongjiaona, HttpServletRequest request){
    	feiyongjiaona.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(feiyongjiaona);

        feiyongjiaonaService.insert(feiyongjiaona);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody FeiyongjiaonaEntity feiyongjiaona, HttpServletRequest request){
        //ValidatorUtils.validateEntity(feiyongjiaona);
        feiyongjiaonaService.updateById(feiyongjiaona);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        feiyongjiaonaService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<FeiyongjiaonaEntity> wrapper = new EntityWrapper<FeiyongjiaonaEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuming", (String)request.getSession().getAttribute("username"));
		}

		int count = feiyongjiaonaService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}