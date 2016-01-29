package demoinfo.webservice.httpclient;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class WeatherUtil {   
	private static String SERVICES_HOST = "www.webxml.com.cn";   
	private static String WEATHER_SERVICES_URL = "http://webservice.webxml.com.cn/WebServices/WeatherWS.asmx/";   
	private static String PROVINCE_CODE_URL = WEATHER_SERVICES_URL    
			+ "getRegionProvince";   
	private static String CITY_CODE_URL = WEATHER_SERVICES_URL   
			+ "getSupportCityString?theRegionCode=";   
	private static String WEATHER_QUERY_URL = WEATHER_SERVICES_URL   
			+ "getWeather?theUserID=&theCityCode=";   

	public int getProvinceCode(String provinceName){    
		Document document;   
		DocumentBuilderFactory documentBF = DocumentBuilderFactory.newInstance();   
		documentBF.setNamespaceAware(true);   
		int provinceCode = 0;   
		try{   
			DocumentBuilder documentB = documentBF.newDocumentBuilder();   
			InputStream inputStream = getSoapInputStream(PROVINCE_CODE_URL);    //具体webService相关   
			document = documentB.parse(inputStream);   
			NodeList nodeList = document.getElementsByTagName("string");    //具体webService相关   
			int len = nodeList.getLength();   
			for(int i = 0; i < len; i++){   
				Node n = nodeList.item(i);   
				String result = n.getFirstChild().getNodeValue();   
				String[] address = result.split(",");   
				String pName = address[0];   
				String pCode = address[1];   
				if(pName.equalsIgnoreCase(provinceName)){   
					provinceCode = Integer.parseInt(pCode);   
				}    
			}   
			inputStream.close();   
		}catch(DOMException e){   
			e.printStackTrace();   
		}catch(ParserConfigurationException e){   
			e.printStackTrace();   
		}catch (SAXException e){       
			e.printStackTrace();   
		}catch(IOException e){   
			e.printStackTrace();   
		}   
		return provinceCode;   
	}   

	public int getCityCode(int provinceCode, String cityName){      
		Document doc;   
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();   
		dbf.setNamespaceAware(true);   
		int cityCode = 0;   
		try{   
			DocumentBuilder db = dbf.newDocumentBuilder();   
			InputStream is = getSoapInputStream(CITY_CODE_URL + provinceCode);    //具体webService相关   
			doc = db.parse(is);   
			NodeList nl = doc.getElementsByTagName("string");    //具体webService相关   
			int len = nl.getLength();   
			for(int i = 0; i < len; i++){   
				Node n = nl.item(i);   
				String result = n.getFirstChild().getNodeValue();   
				String[] address = result.split(",");   
				String cName = address[0];   
				String cCode = address[1];   
				if(cName.equalsIgnoreCase(cityName)){   
					cityCode = Integer.parseInt(cCode);   
				}   
			}   
			is.close();   
		}catch(DOMException e){   
			e.printStackTrace();   
		}catch(ParserConfigurationException e){   
			e.printStackTrace();   
		}catch (SAXException e){   
			e.printStackTrace();   
		}catch(IOException e) {   
			e.printStackTrace();   
		}   
		return cityCode;   
	}   

	public InputStream getSoapInputStream(String url){   
		InputStream inputStream = null;   
		try{   
			URL urlObj = new URL(url);   
			URLConnection urlConn = urlObj.openConnection();   
			urlConn.setRequestProperty("Host", SERVICES_HOST);    //具体webService相关   
			urlConn.connect();   
			inputStream = urlConn.getInputStream();   
		}catch(MalformedURLException e){   
			e.printStackTrace();   
		}catch(IOException e){   
			e.printStackTrace();   
		}   
		return inputStream;   
	}   

	public List<String> getWeather(int cityCode){   
		List<String> weatherList = new ArrayList<String>();           
		Document document;   
		DocumentBuilderFactory documentBF = DocumentBuilderFactory.newInstance();   
		documentBF.setNamespaceAware(true);   
		try{   
			DocumentBuilder documentB = documentBF.newDocumentBuilder();   
			InputStream inputStream = getSoapInputStream(WEATHER_QUERY_URL + cityCode);   
			document = documentB.parse(inputStream);   
			NodeList nl = document.getElementsByTagName("string");   
			int len = nl.getLength();   
			for(int i = 0; i < len; i++){   
				Node n = nl.item(i);   
				String weather = n.getFirstChild().getNodeValue();   
				weatherList.add(weather);   
			}   
			inputStream.close();   
		}catch(UnsupportedEncodingException e){   
			e.printStackTrace();   
		}catch (DOMException e){   
			e.printStackTrace();   
		}catch (ParserConfigurationException e){   
			e.printStackTrace();   
		}catch(SAXException e){   
			e.printStackTrace();   
		} catch (IOException e){   
			e.printStackTrace();   
		}   
		return weatherList;   
	}  
}
