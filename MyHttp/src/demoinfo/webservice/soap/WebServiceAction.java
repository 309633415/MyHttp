package demoinfo.webservice.soap;

import com.opensymphony.xwork2.ActionSupport;

public class WebServiceAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String city;
	private String result;

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
		result= weatherUtil.getWeather(city.trim());
		result = result.replaceAll("。", "。<br/>");
		return SUCCESS;
	}

}
