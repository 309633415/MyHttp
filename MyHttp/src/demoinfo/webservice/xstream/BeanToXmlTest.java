package demoinfo.webservice.xstream;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class BeanToXmlTest {
	public static void main(String[] args) {
		//XStream初始化
		XStream xstream = new XStream(new DomDriver()); 
		//设置节点对应的实体类
		xstream.alias("person", Person.class);
		Person person = new Person("Tom","Hello , I am Tom !");
		//将JavaBean转换成xml
		String xml = xstream.toXML(person);
		System.out.println(xml);
	}
}
