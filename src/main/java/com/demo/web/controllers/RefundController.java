package com.demo.web.controllers;

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

import com.demo.web.bean.NSRReq;
import com.demo.web.util.ParseXml;
import com.trunkbow.comm.service.Signature;
import com.trunkbow.comm.util.HttpClientHelper;

@Controller
@RequestMapping(value = "/epay")
public class RefundController {
	private Log log=LogFactory.getLog(getClass());
	@Autowired
	private HttpClientHelper httpClientHelper;
	@Autowired
	private Signature signatureTest;
	@RequestMapping(value="/refund", method = {RequestMethod.GET})
    public String index(HttpServletRequest request,Model model){
        return "refund";
    }
	@RequestMapping(value="/refund", method = {RequestMethod.POST})
    public ModelAndView query(HttpServletRequest request,Model model,NSRReq NSRReq,String url){
		String xml=NSRReq.toString();
		log.info("订单查询原数据："+xml);
		String signXml=signatureTest.sign(xml, "NSRReq");
		log.info("订单查询签名后数据："+signXml);
		String resultXml=httpClientHelper.send(signXml, url);
		ModelAndView modelAndView = new ModelAndView();  
		model.addAttribute("message",resultXml);
		Map<String,String> result=ParseXml.parse(resultXml);
		model.addAttribute("result",result);
		modelAndView.setViewName("refundResult"); 
        return modelAndView;
    }
}
