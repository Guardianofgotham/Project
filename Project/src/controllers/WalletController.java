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
import mainApplication.Main;
import mainApplication.WalletTable;

import java.io.IOException;
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
    private Label cardNoLabel;

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


    public void user_iconPressed(MouseEvent mouseEvent) {
        System.out.println("User icon pressed");
    }

    @FXML
        // This method is called by the FXMLLoader when initialization is complete
    void initialize() throws SQLException, InterruptedException {
        assert home != null : "fx:id=\"home\" was not injected: check your FXML file 'Wallet.fxml'.";
        assert user_icon != null : "fx:id=\"user_icon\" was not injected: check your FXML file 'Wallet.fxml'.";
        assert table != null : "fx:id=\"table\" was not injected: check your FXML file 'Wallet.fxml'.";
        userWelcomeLabel.setText(userLoginController.currUser.getUsername() + "'s wallet");
        String query = "select * from useraccounts where u_id = " + userLoginController.currUser.getU_id() + ";";
        ResultSet rs = userLoginController.executer.executeQuery(query);
        int bonus = 0;
        int balance = 0;
        String card_num = "";
        while (rs.next()){
            bonus += rs.getInt("bonus_pts");
            balance += rs.getInt("balance");
            card_num = rs.getString("card_number");
        }
        bonusLabel.setText(String.valueOf(bonus));
        balanceLabel.setText(String.valueOf(balance));
        cardNoLabel.setText(card_num);

        this.initializeTable();
    }

    void initializeTable() throws SQLException, InterruptedException {
        if(table == null) System.out.println("Null table");
        table.getColumns().clear();
        TableColumn<WalletTable, Integer> c1 = new TableColumn<WalletTable, Integer>();
        c1.setCellValueFactory(new PropertyValueFactory<WalletTable, Integer>("total_bill"));
        c1.setText("Total Bill");

        TableColumn<WalletTable, String> c2 = new TableColumn<WalletTable, String>();
        c2.setCellValueFactory(new PropertyValueFactory<WalletTable, String>("b_name"));
        c2.setText("Book Name");

        TableColumn<WalletTable, String> c3 = new TableColumn<WalletTable, String>();
        c3.setCellValueFactory(new PropertyValueFactory<WalletTable, String>("ordered_at"));
        c3.setText("Transaction Time & Date");
        c1.prefWidthProperty().bind(table.widthProperty().multiply(0.25));
        c2.prefWidthProperty().bind(table.widthProperty().multiply(0.375));
        c3.prefWidthProperty().bind(table.widthProperty().multiply(0.375));
        c1.setStyle( "-fx-alignment: CENTER;");
        c2.setStyle( "-fx-alignment: CENTER;");
        c3.setStyle( "-fx-alignment: CENTER;");

        table.getColumns().addAll(c2, c1, c3);

        ObservableList<WalletTable> ob = WalletTable.getObservableListForWalletTable();
        table.setItems(ob);
    }

    public void transferClicked(MouseEvent mouseEvent) throws IOException {
        Main.changeScene("transferMoney");
    }

}
