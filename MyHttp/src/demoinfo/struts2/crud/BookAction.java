package demoinfo.struts2.crud;

import java.util.Collection;

import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
   private static final long serialVersionUID = 872316812305356L;
   
   private String isbn;
   private String[] isbns;
   private Book book;
   private Collection<Book> books;
   private BookDao dao =  BookDao.getInstance();
       
   public Book getBook() {
       return book;
   }

   public void setBook(Book book) {
       this.book = book;
   }

   public String getIsbn() {
       return isbn;
   }

   public void setIsbn(String isbn) {
       this.isbn = isbn;
   }

   public String[] getIsbns() {
       return isbns;
   }

   public void setIsbns(String[] isbns) {
       this.isbns = isbns;
   }
       
   public Collection<Book> getBooks() {
       return books;
   }

   public void setBooks(Collection<Book> books) {
       this.books = books;
   }

   public String load() {
       book = dao.getBook(isbn);
       return SUCCESS;
   }

   public String list() {
       books = dao.getBooks();
       return SUCCESS;
   }
       
   public String store() {
       dao.storeBook(book);
       return SUCCESS;
   }
   
   public String remove() {
       if(null != isbn) {
           dao.removeBook(isbn);
       } else {
           dao.removeBooks(isbns);
       }
       return SUCCESS;
   }
}

