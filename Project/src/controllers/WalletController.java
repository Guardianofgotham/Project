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
import mainApplication.WalletTable;

import java.sql.ResultSet;
import java.sql.SQLException;

public class WalletController {



    @FXML // fx:id="user_icon"
    private FontAwesomeIconView user_icon; // Value injected by FXMLLoader

    @FXML
    private Label userWelcomeLabel;

    @FXML
    private Label bonusLabel;

    @FXML
    private Label balanceLabel;

    @FXML // fx:id="home"
    private JFXButton home; // Value injected by FXMLLoader

    @FXML
    private AnchorPane rootAnchorPane;

    @FXML
    public static Stage mainStage;

    @FXML
    private TableView<WalletTable> table; // Value injected by FXMLLoader


    public void homePressed(MouseEvent mouseEvent) throws Exception {
        userLoginController.userSetup();
    }

    public void tablePressed(MouseEvent mouseEvent) {
        System.out.println("Table pressed");
    }

    public void addMoneyClicked(MouseEvent mouseEvent) {
    }

    public void cartDetailsClicked(MouseEvent mouseEvent) {
    }

    public void SendGiftClicked(MouseEvent mouseEvent) {
    }

    public void user_iconPressed(MouseEvent mouseEvent) {
        System.out.println("User icon pressed");
    }

    @FXML
        // This method is called by the FXMLLoader when initialization is complete
    void initialize() throws SQLException, InterruptedException {
        assert home != null : "fx:id=\"home\" was not injected: check your FXML file 'cart.fxml'.";
        assert user_icon != null : "fx:id=\"user_icon\" was not injected: check your FXML file 'cart.fxml'.";
        assert table != null : "fx:id=\"table\" was not injected: check your FXML file 'cart.fxml'.";
        userWelcomeLabel.setText(userLoginController.currUser.getUsername() + "'s wallet");
        String query = "select * from useraccounts where u_id = " + userLoginController.currUser.getU_id() + ";";
        ResultSet rs = userLoginController.executer.executeQuery(query);
        int bonus = 0;
        while (rs.next()){
            bonus += rs.getInt("bonus_pts");
        }
        bonusLabel.setText(String.valueOf(bonus));
        int balance = 0;
        query = "select * from card_details where u_id = " + userLoginController.currUser.getU_id() + ";";
        rs = userLoginController.executer.executeQuery(query);
        while (rs.next()){
            balance += rs.getInt("balance");
        }
        balanceLabel.setText(String.valueOf(balance));
        this.initializeTable();
    }

    void initializeTable() throws SQLException, InterruptedException {
        if(table == null) System.out.println("Null table");
        table.getColumns().clear();
        TableColumn<WalletTable, Integer> c1 = new TableColumn<WalletTable, Integer>();
        c1.setCellValueFactory(new PropertyValueFactory<WalletTable, Integer>("total_bill"));
        c1.setText("Total Bill");

        TableColumn<WalletTable, String> c2 = new TableColumn<WalletTable, String>();
        c2.setCellValueFactory(new PropertyValueFactory<WalletTable, String>("card_num"));
        c2.setText("Card Number");

        TableColumn<WalletTable, String> c3 = new TableColumn<WalletTable, String>();
        c3.setCellValueFactory(new PropertyValueFactory<WalletTable, String>("ordered_at"));
        c3.setText("Transaction Time & Date");

        table.getColumns().addAll(c2, c1, c3);
        ObservableList<WalletTable> ob = WalletTable.getObservableListForWalletTable();
        table.setItems(ob);
    }

}
