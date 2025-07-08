package com.dorm.controller.admin.sys;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONObject;
import com.dorm.author.AuthRequired;
import com.dorm.author.JwtConfig;
import com.dorm.controller.vo.JsonResult;
import com.dorm.dao.mapper.AdminMapper;
import com.dorm.dao.mapper.AdminModifyMapper;
import com.dorm.dao.mapper.BuildingMapper;
import com.dorm.dao.model.Admin;
import com.dorm.dao.model.AdminModify;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import tk.mybatis.mapper.entity.Example;

@RestController
@RequestMapping("/admin")
public class AdminLoginController {
	
	@Resource
	private JwtConfig jwtConfig ;
	@Autowired
	private AdminMapper adminMapper;
	@Autowired
	private BuildingMapper buildingMapper;
	@Autowired
	private AdminModifyMapper adminModifyMapper;

	@RequestMapping("logout")
	public String logOut(HttpSession session) {
		session.removeAttribute("currAdmin");
		return "admin/login";
	}
	
	/**
	 * 管理后台登录表单
	 * @return
	 */
	@RequestMapping("login")
	public JsonResult loginForm(String mobile, String pwd, Integer role) {
		JsonResult jsonResult = new JsonResult();
		Admin admin = new Admin();
		admin.setRole(role);
		admin.setMobile(mobile);
		admin.setPwd(pwd);
		// 创建 Example 对象
		Example example = new Example(Admin.class);
		Example.Criteria criteria = example.createCriteria();

		// 添加查询条件
		criteria.andEqualTo("role", role)
				.andEqualTo("mobile", mobile)
				.andEqualTo("pwd", pwd)
				.andNotEqualTo("status", -1); // 添加 status != -1 的条件

		// 使用 Example 查询
		List<Admin> list = adminMapper.selectByExample(example);
//		List<Admin> list = adminMapper.select(admin);
		if(list!=null&&list.size()>0) {
			Admin admin3 = list.get(0);
//			if(admin3.getRole()==2){
				admin3.setBuilding(buildingMapper.selectByPrimaryKey(admin3.getBuildingId()));
//			}
			//使用ID来签发token
			String token = jwtConfig.createToken("ADMIN:"+admin3.getAdminId());
			JSONObject json = new JSONObject();
			json.put("admin", admin3);
			json.put("status", "OK");
			if (!StringUtils.isEmpty(token)) {
				json.put("token",token);
			}
			jsonResult.setData(json);
			return  jsonResult;
		}else {
			return JsonResult.error("500", "手机号或密码错误");
		}
	}

	/**
	 * 修改个人信息
	 * @param session
	 * @param admin
	 * @return
	 */
	@RequestMapping("updateProfile")
	@AuthRequired
	public JsonResult updateProfile(HttpSession session, Admin admin) {
		JsonResult result = new JsonResult();
		try {
			if(admin.getRole()>1){
				Admin orgAdmin = adminMapper.selectByPrimaryKey(admin.getAdminId());
				// System.out.println("orgAdmin" + orgAdmin);
				// 前端传来的 admin 对象包含部分更新字段
				if (admin.getEmployeeNo() != null && !admin.getEmployeeNo().isEmpty()) {
					orgAdmin.setEmployeeNo(admin.getEmployeeNo());
				}
				if (admin.getRealName() != null && !admin.getRealName().isEmpty()) {
					orgAdmin.setRealName(admin.getRealName());
				}
				if (admin.getMobile() != null && !admin.getMobile().isEmpty()) {
					orgAdmin.setMobile(admin.getMobile());
				}
				if (admin.getGender() != null && !admin.getGender().isEmpty()) {
					orgAdmin.setGender(admin.getGender());
				}
				if (admin.getPwd() != null && !admin.getPwd().isEmpty()) {
					orgAdmin.setPwd(admin.getPwd());
				}
				if (admin.getStatus() != null) {
					orgAdmin.setStatus(admin.getStatus());
				}
				if (admin.getRole() != null) {
					orgAdmin.setRole(admin.getRole());
				}
				if (admin.getBuildingId() != null) {
					orgAdmin.setBuildingId(admin.getBuildingId());
				}
				// System.out.println(orgAdmin);
				AdminModify modify = new AdminModify(orgAdmin);
				adminModifyMapper.insertSelective(modify);
				admin = adminMapper.selectByPrimaryKey(admin.getAdminId());
			}else{
				adminMapper.updateByPrimaryKeySelective(admin);
				admin = adminMapper.selectByPrimaryKey(admin.getAdminId());
			}
			result.setData(admin);
			result.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.error("-1", "更新失败");
		}
		return result;
	}
	
	@InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        //注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
