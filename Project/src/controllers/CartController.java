package controllers;

import com.gluonhq.charm.glisten.control.DropdownButton;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;
import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import mainApplication.CartTable;
import mainApplication.HomeTable;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

public class CartController {

    @FXML // fx:id="home"
    private JFXButton home; // Value injected by FXMLLoader

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


    @FXML // fx:id="user_icon"
    private FontAwesomeIconView user_icon; // Value injected by FXMLLoader

    @FXML
    private Label userWelcomeLabel;

    @FXML
    private JFXButton buyButton;

    @FXML
    private AnchorPane rootAnchorPane;

    @FXML
    public static Stage mainStage;
    @FXML
    private Label userNameLabel;

    @FXML
    private TableView<CartTable> table; // Value injected by FXMLLoader


    public void homePressed(MouseEvent mouseEvent) throws Exception {
        userLoginController.userSetup();
    }

    @FXML
        // This method is called by the FXMLLoader when initialization is complete
    void initialize() throws SQLException, InterruptedException {
        assert home != null : "fx:id=\"home\" was not injected: check your FXML file 'cart.fxml'.";
//        assert my_account != null : "fx:id=\"my_account\" was not injected: check your FXML file 'cart.fxml'.";
//        assert wallet != null : "fx:id=\"wallet\" was not injected: check your FXML file 'home.fxml'.";
        assert logout != null : "fx:id=\"logout\" was not injected: check your FXML file 'cart.fxml'.";
        assert search_icon != null : "fx:id=\"search_icon\" was not injected: check your FXML file 'cart.fxml'.";
        assert search_bar != null : "fx:id=\"search_bar\" was not injected: check your FXML file 'cart.fxml'.";
        assert sort != null : "fx:id=\"sort\" was not injected: check your FXML file 'cart.fxml'.";
        assert advanced_search != null : "fx:id=\"advanced_search\" was not injected: check your FXML file 'cart.fxml'.";
        assert user_icon != null : "fx:id=\"user_icon\" was not injected: check your FXML file 'cart.fxml'.";
        assert table != null : "fx:id=\"table\" was not injected: check your FXML file 'cart.fxml'.";
        userWelcomeLabel.setText(userLoginController.currUser.getUsername() + "'s cart");
        this.initializeTable();
    }

    void initializeTable() throws SQLException, InterruptedException {
        if(table == null) System.out.println("Null table");
        table.getColumns().clear();
        TableColumn<CartTable, Integer> c1 = new TableColumn<CartTable, Integer>();
        c1.setCellValueFactory(new PropertyValueFactory<CartTable, Integer>("b_id"));
        c1.setText("#");

        TableColumn<CartTable, String> c2 = new TableColumn<CartTable, String>();
        c2.setCellValueFactory(new PropertyValueFactory<CartTable, String>("b_name"));
        c2.setText("Name");

        TableColumn<CartTable, String> c3 = new TableColumn<CartTable, String>();
        c3.setCellValueFactory(new PropertyValueFactory<CartTable, String>("auth_name"));
        c3.setText("Author");

        TableColumn<CartTable, Integer> c4 = new TableColumn<CartTable, Integer>();
        c4.setCellValueFactory(new PropertyValueFactory<CartTable, Integer>("pub_year"));
        c4.setText("Year");

        TableColumn<CartTable, String> c5 = new TableColumn<CartTable, String>();
        c5.setCellValueFactory(new PropertyValueFactory<CartTable, String>("genre"));
        c5.setText("Genre");

        TableColumn<CartTable, Integer> c6 = new TableColumn<CartTable, Integer>();
        c6.setCellValueFactory(new PropertyValueFactory<CartTable, Integer>("num_pages"));
        c6.setText("Number of Pages");

        TableColumn<CartTable, Integer> c7 = new TableColumn<CartTable, Integer>();
        c7.setCellValueFactory(new PropertyValueFactory<CartTable, Integer>("user_num_copies"));
        c7.setText("Number of Copies");

        TableColumn<CartTable, Integer> c8 = new TableColumn<CartTable, Integer>();
        c8.setCellValueFactory(new PropertyValueFactory<CartTable, Integer>("price"));
        c8.setText("Price");

        TableColumn<CartTable, String> c9 = new TableColumn<CartTable, String>();
        c9.setCellValueFactory(new PropertyValueFactory<CartTable, String>("nationality"));
        c9.setText("nationality");

        TableColumn<CartTable, String> c10 = new TableColumn<CartTable, String>();
        c10.setCellValueFactory(new PropertyValueFactory<CartTable, String>("language"));
        c10.setText("language");

        TableColumn<CartTable, String> c11 = new TableColumn<CartTable, String>();
        c11.setCellValueFactory(new PropertyValueFactory<CartTable, String>("description"));
        c11.setText("description");

        table.getColumns().addAll(c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11);
        ObservableList<CartTable> ob = CartTable.getObservableListForCartTable();
        table.setItems(ob);
    }

    public void logoutPressed(MouseEvent mouseEvent) {
    }

    public void search_iconPressed(MouseEvent mouseEvent) {
    }

    public void search_barPressed(MouseEvent mouseEvent) {
    }

    public void advanced_searchPressed(MouseEvent mouseEvent) {
    }

    public void tablePressed(MouseEvent mouseEvent) {
    }

    public void buyButtonPressed(MouseEvent mouseEvent) {
    }

    @FXML
    void addToWishlistPressed(MouseEvent event) throws SQLException {
        CartTable currItem = table.getSelectionModel().getSelectedItem();
        try{
            if(currItem!=null){
                String query = "insert into wishlist (u_id, b_id) value (?,?)";
                PreparedStatement pstmt = userLoginController.connection.prepareStatement(query);
                pstmt.setInt(1,userLoginController.currUser.getU_id());
                pstmt.setInt(2,currItem.getB_id());
                pstmt.executeUpdate();
            }
        }
        catch(SQLIntegrityConstraintViolationException e){
            System.out.println(e.getMessage());
        }
    }
    public void user_iconPressed(MouseEvent mouseEvent) {
    }
}
