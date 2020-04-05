/**
 * Sample Skeleton for 'home.fxml' Controller Class
 */

package controllers;

import com.gluonhq.charm.glisten.control.DropdownButton;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;
import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.scene.control.MenuItem;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import mainApplication.Book;
import mainApplication.__init__;

public class HomeController {

    @FXML // ResourceBundle that was given to the FXMLLoader
    private ResourceBundle resources;

    @FXML // URL location of the FXML file that was given to the FXMLLoader
    private URL location;

    @FXML // fx:id="home"
    private JFXButton home; // Value injected by FXMLLoader

    @FXML // fx:id="my_account"
    private JFXButton my_account; // Value injected by FXMLLoader

    @FXML // fx:id="profile"
    private JFXButton profile; // Value injected by FXMLLoader

    @FXML // fx:id="wallet"
    private JFXButton wallet; // Value injected by FXMLLoader

    @FXML // fx:id="wishlist"
    private JFXButton wishlist; // Value injected by FXMLLoader

    @FXML // fx:id="logout"
    private JFXButton logout; // Value injected by FXMLLoader

    @FXML // fx:id="search_icon"
    private FontAwesomeIconView search_icon; // Value injected by FXMLLoader

    @FXML // fx:id="search_bar"
    private JFXTextField search_bar; // Value injected by FXMLLoader

    @FXML // fx:id="sort"
    private DropdownButton sort; // Value injected by FXMLLoader

    @FXML // fx:id="advanced_search"
    private JFXButton advanced_search; // Value injected by FXMLLoader

    @FXML // fx:id="go_to_cart"
    private JFXButton go_to_cart; // Value injected by FXMLLoader

    @FXML // fx:id="user_icon"
    private FontAwesomeIconView user_icon; // Value injected by FXMLLoader

    @FXML // fx:id="table"
    private TableView<Book> table; // Value injected by FXMLLoader

    @FXML
    void advanced_searchPressed(MouseEvent event) {
        System.out.println("advanced_searchPressed");
    }

    @FXML
    void go_to_cartPressed(MouseEvent event) {
        System.out.println("go_to_cartPressed");
    }

    @FXML
    void homePressed(MouseEvent event) {
        System.out.println("homePressed");
    }

    @FXML
    void logoutPressed(MouseEvent event) throws IOException {
        System.out.println("logoutPressed");
        __init__.changeScene("__init__window__");
        File fs = new File("src/mainApplication/currUser");
        if(fs.exists()){
            fs.delete();
        }

    }

    @FXML
    void my_accountPressed(MouseEvent event) {
        System.out.println("my_accountPressed");
    }

    @FXML
    void profilePressed(MouseEvent event) {
        System.out.println("profilePressed");
    }

    @FXML
    void search_barPressed(MouseEvent event) {
        System.out.println("search_barPressed");
    }

    @FXML
    void search_iconPressed(MouseEvent event) throws SQLException {
        System.out.println("search_iconPressed");
        String userSearch = search_bar.getText();
        String Query = "Select * from books where b_name like ?;";
        PreparedStatement pstmt = __init__.connection.prepareStatement(Query);
        pstmt.setString(1,"%"+userSearch+"%");
        ResultSet rs = pstmt.executeQuery();
        table.setItems(Book.getObservableList(Book.getBookConditionList(rs)));
    }

    @FXML
    void sortPressed(MouseEvent event) {
        System.out.println("sortPressed");
    }

    @FXML
    void tablePressed(MouseEvent event) {
        System.out.println("tablePressed");
    }

    @FXML
    void user_iconPressed(MouseEvent event) {
        System.out.println("user_iconPressed");
    }

    @FXML
    void walletPressed(MouseEvent event) {
        System.out.println("walletPressed");
    }

    @FXML
    void wishlistPressed(MouseEvent event) {
        System.out.println("wishlistPressed");
    }

    @FXML // This method is called by the FXMLLoader when initialization is complete
    void initialize() throws SQLException {
        assert home != null : "fx:id=\"home\" was not injected: check your FXML file 'home.fxml'.";
        assert my_account != null : "fx:id=\"my_account\" was not injected: check your FXML file 'home.fxml'.";
        assert profile != null : "fx:id=\"profile\" was not injected: check your FXML file 'home.fxml'.";
        assert wallet != null : "fx:id=\"wallet\" was not injected: check your FXML file 'home.fxml'.";
        assert wishlist != null : "fx:id=\"wishlist\" was not injected: check your FXML file 'home.fxml'.";
        assert logout != null : "fx:id=\"logout\" was not injected: check your FXML file 'home.fxml'.";
        assert search_icon != null : "fx:id=\"search_icon\" was not injected: check your FXML file 'home.fxml'.";
        assert search_bar != null : "fx:id=\"search_bar\" was not injected: check your FXML file 'home.fxml'.";
        assert sort != null : "fx:id=\"sort\" was not injected: check your FXML file 'home.fxml'.";
        assert advanced_search != null : "fx:id=\"advanced_search\" was not injected: check your FXML file 'home.fxml'.";
        assert go_to_cart != null : "fx:id=\"go_to_cart\" was not injected: check your FXML file 'home.fxml'.";
        assert user_icon != null : "fx:id=\"user_icon\" was not injected: check your FXML file 'home.fxml'.";
        assert table != null : "fx:id=\"table\" was not injected: check your FXML file 'home.fxml'.";
        this.initializeTable();
    }

    void initializeTable() throws SQLException {
        table.getColumns().clear();
        TableColumn<Book, Integer> c1 = new TableColumn<Book, Integer>();
        c1.setCellValueFactory(new PropertyValueFactory<Book, Integer>("b_id"));
        c1.setText("#");

        TableColumn<Book, String> c2 = new TableColumn<Book, String>();
        c2.setCellValueFactory(new PropertyValueFactory<Book, String>("b_name"));
        c2.setText("Name");

        TableColumn<Book, String> c3 = new TableColumn<Book, String>();
        c3.setCellValueFactory(new PropertyValueFactory<Book, String>("b_name"));
        c3.setText("Author");

        TableColumn<Book, Integer> c4 = new TableColumn<Book, Integer>();
        c4.setCellValueFactory(new PropertyValueFactory<Book, Integer>("pub_year"));
        c4.setText("Year");

        TableColumn<Book, String> c5 = new TableColumn<Book, String>();
        c5.setCellValueFactory(new PropertyValueFactory<Book, String>("b_name"));
        c5.setText("Genre");

        TableColumn<Book, Integer> c6 = new TableColumn<Book, Integer>();
        c6.setCellValueFactory(new PropertyValueFactory<Book, Integer>("num_pages"));
        c6.setText("Number of Pages");

        TableColumn<Book, Integer> c7 = new TableColumn<Book, Integer>();
        c7.setCellValueFactory(new PropertyValueFactory<Book, Integer>("num_copies"));
        c7.setText("Number Of Copies");

        TableColumn<Book, Integer> c8 = new TableColumn<Book, Integer>();
        c8.setCellValueFactory(new PropertyValueFactory<Book, Integer>("price"));
        c8.setText("Price");

        table.getColumns().addAll(c1,c2,c3,c4,c5,c6,c7,c8);
        table.setItems(Book.getObservableList(Book.getBookList()));

    }

}
