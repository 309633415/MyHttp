package demoinfo.webservice.soap;

public class SoapTest {
	public static void main(String[] args) throws Exception {
		WeatherUtil weatherUtil = new WeatherUtil();
		String weatherInfo = weatherUtil.getWeather("北京");
		System.out.println(weatherInfo);
	}
}
