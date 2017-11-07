package top.greysun.common.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


public class WebUtils {
	public static  HttpServletRequest getRequest(){
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	}
	
	public static  HttpSession getSession(){
		return getRequest().getSession();
	}
}
