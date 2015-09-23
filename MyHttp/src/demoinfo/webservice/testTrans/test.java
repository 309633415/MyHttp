package demoinfo.webservice.testTrans;

import java.util.Date;

import org.junit.Test;

import demoinfo.webservice.dto.Book;
import demoinfo.webservice.util.XMLToDto;



/**
 * ×ªÒë²âÊÔ
 * @author		zcl
 */
public class test {

	/**
	 * @throws JAXBException
	 */
	@Test
	public void showMarshaller()  {
		Book book = new Book();
		book.setId(100);
		book.setAuthor("James");
		book.setCalendar(new Date());
		book.setPrice(23.45f);	 //Ä¬ÈÏÊÇ0.0
		
		String str = XMLToDto.convertToXml(book);
		System.out.println(str);
	}

	/**
	 * @throws JAXBException
	 */
	@Test
	public void showUnMarshaller() {
		String str = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>" +
			"<book id=\"100\">" +
			"    <author>zcl</author>" +
			 "   <calendar>2015-05-28T09:25:56.004+08:00</calendar>" +
			  "  <price_1>23.45</price_1>" +
			"</book>";
		
		Book book = XMLToDto.converyToJavaBean(str, Book.class);
		System.out.println(book);
	}
}
