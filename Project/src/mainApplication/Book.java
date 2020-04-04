package mainApplication;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Observable;

public class Book {
    int b_id,price,pub_year,num_pages,num_copies;
    String b_name, description, language;
    Book()
    {

    }

    public static Book createBook(ResultSet rs) throws SQLException {
        Book b = new Book();
        b.setB_id(rs.getInt("b_id"));
        b.setPrice(rs.getInt("price"));
        b.setPub_year(rs.getInt("pub_year"));
        b.setNum_pages(rs.getInt("num_pages"));
        b.setNum_copies(rs.getInt("num_copies"));
        b.setB_name(rs.getString("b_name"));
        b.setDescription(rs.getString("description"));
        b.setLanguage(rs.getString("language"));
        return b;
    }

    public static ArrayList<Book> getBookList() throws SQLException {
        ArrayList<Book> booksList = new ArrayList<Book>();
        String Query = "Select * from books;";
        PreparedStatement pstmt =  __init__.connection.prepareStatement(Query);
        ResultSet rs = pstmt.executeQuery();
        while(rs.next()){
            booksList.add(createBook(rs));
        }
        return booksList;
    }

    public static ArrayList<Book> getBookConditionList(ResultSet rs) throws SQLException {
        ArrayList<Book> booksList = new ArrayList<Book>();
        while(rs.next()){
            booksList.add(createBook(rs));
        }
        return booksList;
    }

    public static ObservableList<Book> getObservableList(ArrayList<Book> books){
        ObservableList<Book> ls = FXCollections.observableArrayList(books);
        return ls;
    }

    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getPub_year() {
        return pub_year;
    }

    public void setPub_year(int pub_year) {
        this.pub_year = pub_year;
    }

    public int getNum_pages() {
        return num_pages;
    }

    public void setNum_pages(int num_pages) {
        this.num_pages = num_pages;
    }

    public int getNum_copies() {
        return num_copies;
    }

    public void setNum_copies(int num_copies) {
        this.num_copies = num_copies;
    }

    public String getB_name() {
        return b_name;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Override
    public String toString() {
        return "Book{" +
                "b_id=" + b_id +
                ", price=" + price +
                ", pub_year=" + pub_year +
                ", num_pages=" + num_pages +
                ", num_copies=" + num_copies +
                ", b_name='" + b_name + '\'' +
                ", description='" + description + '\'' +
                ", language='" + language + '\'' +
                '}';
    }
}
