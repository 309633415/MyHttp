package demoinfo.webservice.httpclient;

import java.util.List;

public class HttpClientTest2 {

	public static void main(String[] args) throws Exception{      
		WeatherUtil weatherUtil = new WeatherUtil();
		int provinceCode = weatherUtil.getProvinceCode("北京");   
		int cityCode = weatherUtil.getCityCode(provinceCode, "北京");     
		List<String> weatherList = weatherUtil.getWeather(cityCode);   
		for(String weather:weatherList){   
			System.out.println(weather);   
		}   
	}   
}
