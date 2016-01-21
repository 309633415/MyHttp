package demoinfo.webservice.xstream;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class XmlToBeanTest {
	public static void main(String[] args) {
		//XStream初始化
		XStream xstream = new XStream(new DomDriver()); 
		//设置节点对应的实体类
		xstream.alias("person", Person.class);
		String str ="<person>"+
								"<name>Bob</name>"+
								"<sayHello>Hello , I am Bob !</sayHello>"+
						  "</person>";
		//将xml转换成JavaBean
		Person person = (Person)xstream.fromXML(str);
		System.out.println(person.getSayHello());
	}
}