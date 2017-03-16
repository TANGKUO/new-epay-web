package com.wwl.security.key;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;

import javax.security.auth.x500.X500Principal;

import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.encoders.Base64;
import org.bouncycastle.x509.X509V3CertificateGenerator;

/**  
* @Title: KeyBuild.java
* @Package com.wwl.security.key
* @Description: TODO()
* @author wwl 
* @date 2017年3月14日 下午2:02:19
* @version V1.0  
*/
@SuppressWarnings("deprecation")
public class KeyBuild {
	  static {  
	        // 系统添加BC加密算法 以后系统中调用的算法都是BC的算法  
	        Security.addProvider(new BouncyCastleProvider());  
	    }  
	private SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
	/**
	 * 创建KeyStore 
	 * @return
	 * @throws KeyStoreException
	 * @throws NoSuchAlgorithmException
	 * @throws CertificateException
	 * @throws IOException
	 */
	private KeyStore keyStoreBuild() throws KeyStoreException, NoSuchAlgorithmException, CertificateException, IOException{
        KeyStore keystore = KeyStore.getInstance("PKCS12");  
        keystore.load(null, null);  
        return keystore;
	}
	
	/**
	 * RSA算法产生公钥和私钥
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	private KeyPair keyPairBuild() throws NoSuchAlgorithmException{
        KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");  
        kpg.initialize(1024);  
        KeyPair keyPair = kpg.generateKeyPair();
        return keyPair;
	}
	
	/**
	 * 证书创建
	 * @param cer
	 * @param filePath 
	 */
	@SuppressWarnings("unused")
	private  void cerBuild(X509Certificate cer,String filePath) throws Exception{  
		FileOutputStream fos = new FileOutputStream(filePath);  
//		sun.misc.BASE64Encoder base64 = new sun.misc.BASE64Encoder();
		byte[] b=cer.getEncoded();
		Base64.encode(b, fos);
		fos.close();  
	}  
		
	
	/**
	 * 创建cer、pfx密钥
	 * @param filePath 生产证书路径
	 * @param password 密钥库密码
	 * @param merName 商户证书名称
	 */
	public void pfxBuild(String filePath,String password,String merName) throws Exception{
		KeyStore keystore=keyStoreBuild();
		KeyPair keyPair=keyPairBuild();
		//颁发者
		String issuer = "C=CN,ST=BJ,L=BJ,O=CMBC,OU=民生银行开发,CN=民生银行新E付测试环境证书";  
        //使用者
        String subject ="C=CN,ST=BJ,L=BJ,O="+merName+",OU="+merName+",CN="+merName+"-测试新E付";  
        X509V3CertificateGenerator certGen = new X509V3CertificateGenerator();  
        
        certGen.setSerialNumber(BigInteger.valueOf(System.currentTimeMillis()));  
        certGen.setIssuerDN(new X500Principal(issuer));  
        certGen.setNotBefore(f.parse("2017-01-01"));  
        certGen.setNotAfter(f.parse("2020-01-01"));  
        certGen.setSubjectDN(new X500Principal(subject));  
        certGen.setPublicKey(keyPair.getPublic());  
        certGen.setSignatureAlgorithm("SHA1WithRSAEncryption");  
  
        X509Certificate cer = certGen.generateX509Certificate(keyPair.getPrivate());
//        cerBuild(cer,filePath+merName+"1.cer");
        System.out.println(cer.toString());  
        keystore.setKeyEntry("", keyPair.getPrivate(),     
        		password.toCharArray(), new Certificate[] { cer });  
        FileOutputStream fos =new FileOutputStream(filePath+merName+".pfx");  
        keystore.store(fos, password.toCharArray());  
        fos.close();
	}
	public static void main(String[] args) throws Exception {
		KeyBuild kb=new KeyBuild();
		String filePath="D:/";
		String password="123456";
		String merName="zhongyi07";
		kb.pfxBuild(filePath, password, merName);
	}
}

