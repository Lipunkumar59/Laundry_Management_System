package com.laundry.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fasterxml.classmate.ResolvedTypeWithMembers;
import com.laundry.entity.LaundryRegistrationEntity;
import com.laundry.entity.Price;
import com.laundry.entity.UserEntity;
import com.laundry.service.LaundryService;

@Controller
public class LaundryController {
	@Autowired
	private LaundryService laundryService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/laundry")
	public String getLoginPage() {
		
		return "login";
	}
	
	@RequestMapping("/registerUser")
	public String registerUser(Model model,@ModelAttribute UserEntity userEntity) {
		try {
			String res =  laundryService.saveRegister(userEntity);
			model.addAttribute("message",res);
			if(res.equals("Registration Successfully")) {
				return "redirect:/laundry";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
	}
	
	@RequestMapping("/loginUser")
	public String loginUser(Model model,UserEntity usrEntity) {
		try {
			String res =  laundryService.loginUser(usrEntity);
			
			if(res.equals("Success")) {
				session.setAttribute("user", usrEntity.getMobileNo());
				Price price = laundryService.getPrice();
				model.addAttribute("price",price);
				return "dashBoard";
			}
			model.addAttribute("message", res);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
	}
	
	@RequestMapping("/request")
	public String requestPage(Model model) {
		String mobile = (String) session.getAttribute("user");
		if(mobile != null) {
			Price price = laundryService.getPrice();
			model.addAttribute("price",price);
			return "request";
		}else {
			return "request";
		}
	}
	
	@RequestMapping("/dashBoard")
	public String dasBoard(Model model) {
		String mobile = (String) session.getAttribute("user");
		if(mobile != null) {
			Price price = laundryService.getPrice();
			model.addAttribute("price",price);
			return "dashBoard";
		}else {
			return "redirect:laundry";
		}
		
	}
	
	@RequestMapping("/lundryRequest")
	public String laundryRequest(Model model) {
		String mobile = (String) session.getAttribute("user");
		if(mobile != null) {
			List<LaundryRegistrationEntity> requestList = laundryService.getRequest();
			model.addAttribute("getAll",requestList);
			return "requestStatus";
		}else {
			return "redirect:laundry";
		}
		
	}
	
	@RequestMapping("lundryRequestPost")
	public String laundryRequest(@ModelAttribute LaundryRegistrationEntity
			laundryRegistrationEntity, Model model) {
		String message = "";
		try {
			message = laundryService.saveRequest(laundryRegistrationEntity);
			if(message.equals("Request Saved Successfully")) {
				List<LaundryRegistrationEntity> requestList = laundryService.getRequest();
				model.addAttribute("getAll",requestList);
				return "redirect:/lundryRequest";
			}
			else {
				model.addAttribute("message",message);
				return "redirect:/request";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/request";
	}
	
	@RequestMapping("/logOut")
	public String logOut() {
		session.setAttribute("user", null);
		return "redirect:/laundry";
	}
	
	@RequestMapping("/adminRequest")
	public String Adminrequest(Model model) {
		String mobile = (String) session.getAttribute("user");
		if(mobile != null) {
			List<LaundryRegistrationEntity> requestList = laundryService.getRequest();
			model.addAttribute("getAll",requestList);
			return "AdminRequest";
		}else {
			return "redirect:/laundry";
		}
	}
	
	@RequestMapping("/adminDashBoard")
	public String adminDashBoard(Model model) {
		String mobile = (String) session.getAttribute("user");
		if(mobile != null) {
			List<LaundryRegistrationEntity> adminList = laundryService.getAdminList(); 
			model.addAttribute("getAll", adminList);
			return "AdminRequest";
		}else {
			return "redirect:laundry";
		}
		
	}

	

}
