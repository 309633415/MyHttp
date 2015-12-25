package demoinfo.webservice.dto;

import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * @author		zcl
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement
@XmlType(name = "book", propOrder = { "author", "calendar", "price", "id" })
public class Book {

	@XmlElement(required = true)
	private String author;

	@XmlElement(name = "price_1", required = true)
	private float price;

	@XmlElement
	private Date calendar;

	@XmlAttribute
	private Integer id;

	public String getAuthor() {
		return author;
	}
	public float getPrice() {
		return price;
	}

	public Date getCalendar() {
		return calendar;
	}
	public Integer getId() {
		return id;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public void setCalendar(Date calendar) {
		this.calendar = calendar;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Book [author=" + author + ", price=" + price + ", calendar=" + calendar + ", id=" + id + "]";
	}

}
