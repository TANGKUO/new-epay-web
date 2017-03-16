package com.demo.web.util;

import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.commons.io.IOUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**  
* @Title: ParseXml.java
* @Package com.demo.web.util
* @Description: TODO()
* @author wwl 
* @date 2017年2月28日 下午4:41:42
* @version V1.0  
*/
public class ParseXml {
	public static Map<String,String> parse(String xml){
		HashMap<String,String> dataMap = new HashMap<String,String>();
		if(null==xml||"".equals(xml)){
			dataMap.put("Flag", "0");
			return dataMap;
		}else{
			dataMap.put("Flag", "1");
		}
		DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
		docBuilderFactory.setNamespaceAware(true);
		DocumentBuilder docBuilder;
		Document doc = null;
		try {
			docBuilder = docBuilderFactory.newDocumentBuilder();
			doc = docBuilder.parse(IOUtils.toInputStream(xml));
		} catch (Exception e) {
			e.printStackTrace();
		}
		Node messageNode = doc.getElementsByTagName("Message").item(0);
		NodeList nodeList=messageNode.getChildNodes();
		for(int i=0;i<nodeList.getLength();i++){
			Node nodes=nodeList.item(i);
			NodeList dataNodeList=nodes.getChildNodes();
			if(dataNodeList.toString().contains("Signature"))break;//排除签名数据解析
			for(int j=0;j<dataNodeList.getLength();j++){
				Node node = dataNodeList.item(j);
				if(node.getFirstChild() == null){
					dataMap.put(node.getNodeName(),"");	
				}else{
					if(node.getFirstChild().hasChildNodes()){
						NodeList subNodeList = node.getChildNodes();
						for (int k=0; k<subNodeList.getLength(); k++){
							Node subNode = subNodeList.item(k);
							dataMap.put(subNode.getNodeName(),subNode.getFirstChild().getNodeValue());	
						}
					}else{
						dataMap.put(node.getNodeName(),node.getFirstChild().getNodeValue());	
					}
				}
			}
		}
		return dataMap;
	}
}

