package demoinfo.struts2.crud;

import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class BookDao {
   private static final BookDao instance;
   private static final ConcurrentMap<String, Book> data;
   
   static {
       instance = new BookDao();
       data = new ConcurrentHashMap<String, Book>();
       data.put("978-0735619678", new Book("978-0735619678", "Code Complete, Second Edition", 32.99));
       data.put("978-0596007867", new Book("978-0596007867", "The Art of Project Management", 35.96));
       data.put("978-0201633610", new Book("978-0201633610", "Design Patterns: Elements of Reusable Object-Oriented Software", 43.19));
       data.put("978-0596527341", new Book("978-0596527341", "Information Architecture for the World Wide Web: Designing Large-Scale Web Sites", 25.19));
       data.put("978-0735605350", new Book("978-0735605350", "Software Estimation: Demystifying the Black Art", 25.19));
   }
   
   private BookDao() {}
   
   public static BookDao getInstance() {
       return instance;
   }
   
   public Collection<Book> getBooks() {
       return data.values();
   }
   
   public Book getBook(String isbn) {
       return data.get(isbn);
   }
   
   public void storeBook(Book book) {
       data.put(book.getIsbn(), book);
   }
       
   public void removeBook(String isbn) {
       data.remove(isbn);
   }
   
   public void removeBooks(String[] isbns) {
       for(String isbn : isbns) {
           data.remove(isbn);
       }
   }
}
