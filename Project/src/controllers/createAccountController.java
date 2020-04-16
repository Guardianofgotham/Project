package controllers;

import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;
import mainApplication.Main;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class createAccountController {
	@FXML
	private AnchorPane background;
	@FXML
	private GridPane gridpane;
	@FXML
	private Label userNameLabel;
	@FXML
	private Label emailLabel;
	@FXML
	private Label passwordField;
	@FXML
	private Label confirmPassLabel;
	@FXML
	private JFXTextField usernameField;
	@FXML
	private JFXTextField emailField;
	@FXML
	private JFXPasswordField passField;
	@FXML
	private JFXPasswordField confPassField;
	@FXML
	private JFXTextField numberField;

	@FXML
	public void createAccount(MouseEvent event) throws SQLException {
		if(!checkInput(usernameField,emailField,passField,confPassField,numberField)){
			return;
		}
		if(doesUsernameExist(usernameField)){
			return;
		}
		if (emailExists(emailField)) {
			return;
		}
		if (numberExists(numberField)) {
			return;
		}

		showAlert("Account Created","Go back to login screen");
		String query = "insert into userAccounts(username, password, email_id, contact_no) value ('"+usernameField.getText()+"','"+passField.getText()+"','"+emailField.getText()+"','"+numberField.getText()+"');";
		userLoginController.executer.executeUpdate(query);
		System.out.println("Query executed");
	}

	public void onMainPageClicked(MouseEvent mouseEvent) throws IOException {
		String pathtoFXML = "src/resources/fxml/Main.fxml";
		FXMLLoader loader = new FXMLLoader();
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		Main.mainStage.setScene(sc);
	}

	@FXML
	public void returnToMainScreen(MouseEvent event) throws Exception{
		String pathtoFXML = "src/resources/fxml/userLogin.fxml";
		FXMLLoader loader = new FXMLLoader();
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		Main.mainStage.setScene(sc);
	}

	public static boolean doesUsernameExist(JFXTextField usernameField) throws SQLException {
		String query = "select * from userAccounts where username=?;";
		PreparedStatement pstmt = userLoginController.connection.prepareStatement(query);
		pstmt.setString(1,usernameField.getText());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			showAlert("Username already exists !!!", "Please try different name");
			return true;
		}
		return false;
	}

	public static boolean emailExists(JFXTextField emailField) throws SQLException {
		String query = "select * from userAccounts where email_id=?;";
		PreparedStatement pstmt = userLoginController.connection.prepareStatement(query);
		pstmt.setString(1,emailField.getText());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			showAlert("email already exists !!!", "go to forget password!!!");
			return true;
		}
		return false;
	}

	public static boolean numberExists(JFXTextField numberField) throws SQLException {
		String query = "select * from userAccounts where contact_no=?;";
		PreparedStatement pstmt = userLoginController.connection.prepareStatement(query);
		pstmt.setString(1,numberField.getText());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			showAlert("number already exists with some other account !!!", "use another number");
			return true;
		}
		return false;
	}

	private static boolean checkInput(JFXTextField usernameField, JFXTextField emailField, PasswordField passField,PasswordField confPassField,JFXTextField numberField){
		if(usernameField.getText().length()==0){
			showAlert("Username Cannot Be Empty","Enter Your Username in username Field");
			return false;
		}
		if(emailField.getText().length()==0){
			showAlert("email Cannot Be Empty","Enter Your email in email Field");
			return false;
		}
		if(passField.getText().length()==0){
			showAlert("Password Cannot Be Empty","Enter Your Password in Password Field");
			return false;
		}
		if(confPassField.getText().length()==0){
			showAlert("Confirm Password Cannot Be Empty","Confirm Your Password in Confirmation Field");
			return false;
		}
		if(!passField.getText().equals(confPassField.getText())){
			showAlert("Password mismatch","Both password and confirm password should be same");
			return false;
		}
		if(passField.getText().length()<8){
			showAlert("Password too short","Password should be at-least 8 characters long ");
			return false;
		}
		return true;
	}

	public static void showAlert(String message,String resolve) {
		Platform.runLater(new Runnable() {
			public void run() {
				Alert alert = new Alert(Alert.AlertType.INFORMATION);
				alert.setTitle("Error");
				alert.setHeaderText(message);
				alert.setContentText(resolve);
				alert.showAndWait();
			}
		});
	}
}
