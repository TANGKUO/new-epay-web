package com.demo.web.old.controllers;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.web.old.bean.OQReq;
import com.demo.web.util.ParseXml;
import com.trunkbow.comm.service.Signature;
import com.trunkbow.comm.util.HttpClientHelper;

@Controller
@RequestMapping(value = "/old")
public class OrderQueryController {
	private Log log=LogFactory.getLog(getClass());
	@Autowired
	private HttpClientHelper httpClientHelper;
	@Autowired
	private Signature signatureTest;
	@RequestMapping(value="/query", method = {RequestMethod.GET})
    public String index(HttpServletRequest request,Model model){
        return "old/query";
    }
	@RequestMapping(value="/query", method = {RequestMethod.POST})
    public ModelAndView query(HttpServletRequest request,Model model,OQReq OQReq,String url){
		String xml=OQReq.toString();
		log.info("订单查询原数据："+xml);
		String signXml=signatureTest.sign(xml, "OQReq");
		log.info("订单查询签名后数据："+signXml);
		String resultXml=httpClientHelper.send(signXml, url);
		ModelAndView modelAndView = new ModelAndView();  
		model.addAttribute("message",resultXml);
		Map<String,String> result=ParseXml.parse(resultXml);
		model.addAttribute("result",result);
		modelAndView.setViewName("old/queryResult"); 
		log.info(result);
        return modelAndView;
    }
}
