package top.greysun.crm.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@RequestMapping(value="main",method=RequestMethod.GET)
	public String frmMain(){
		return "redirect:/toMain";
	}
	
	@RequestMapping(value="top",method=RequestMethod.GET)
	public String top(){
		return "webTopFrame";
	}
	
	@RequestMapping(value="left",method=RequestMethod.GET)
	public String letf(){
		return "frmLeft";
	}
	
	@RequestMapping(value="waititem",method=RequestMethod.GET)
	public String waititem(){
		return "waititem";
	}
}
