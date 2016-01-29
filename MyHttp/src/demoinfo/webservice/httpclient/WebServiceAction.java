package demoinfo.webservice.httpclient;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

import com.opensymphony.xwork2.ActionSupport;

public class WebServiceAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String province;
	private String city;
	private String result;

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String execute(){
		WeatherUtil weatherUtil = new WeatherUtil();
		System.out.println(province +"************"+city);
		int provinceCode = weatherUtil.getProvinceCode(province.trim());   
		int cityCode = weatherUtil.getCityCode(provinceCode, city.trim());     
		List<String>weatherList = weatherUtil.getWeather(cityCode);   
		result="";
		for(String weather:weatherList){   
			result += weather;
			result+= "<br/>";
			System.out.println(weather);   
		}   			
		return SUCCESS;
	}

	/*@SuppressWarnings("deprecation")
	public String execute(){
		try {  
			final String SERVER_URL = "http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx/getMobileCodeInfo"; // 定义需要获取的内容来源地址  
			HttpPost request = new HttpPost(SERVER_URL);    	//构建HttpPost对象
			List<BasicNameValuePair> params = new ArrayList<BasicNameValuePair>();  //键值对List
			params.add(new BasicNameValuePair("mobileCode", number));  //（注意这里的号码必须大于6位）  
			params.add(new BasicNameValuePair("userId", ""));   
			request.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));   //将传入的参数转换为UTF-8编码，封装到request
			HttpResponse httpResponse = new DefaultHttpClient().execute(request);    //提交HttpClient请求
			if (httpResponse.getStatusLine().getStatusCode() != 404)  
			{  
				String result = EntityUtils.toString(httpResponse.getEntity());  	//获取返回值
				if("<h1>Service Unavailable</h1>".equals(result)){
					result="此电话号码错误";
				}
				address =  result;
			}  
		} catch (Exception e) {  
			address =  "此电话号码错误";
			e.printStackTrace();  
		}  
		return SUCCESS;
	}*/

}
