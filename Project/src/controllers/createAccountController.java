package controllers;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;
import mainApplication.__init__;

import java.io.FileInputStream;
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
	private TextField usernameField;
	@FXML
	private TextField emailField;
	@FXML
	private PasswordField passField;
	@FXML
	private PasswordField confPassField;
	@FXML
	private TextField numberField;

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
		__init__.executer.executeUpdate(query);
		System.out.println("Query executed");
	}

	@FXML
	public void returnToMainScreen(MouseEvent event) throws Exception{
		String pathtoFXML = "src/resources/fxml/__init__window__.fxml";
		FXMLLoader loader = new FXMLLoader();
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		sc.getStylesheets().add("file:src/resources/css/mainWindow.css");
		__init__.mainStage.setScene(sc);
	}

	public static boolean doesUsernameExist(TextField usernameField) throws SQLException {
		String query = "select * from userAccounts where username='"+usernameField.getText()+"';";
		ResultSet rs = __init__.executer.executeQuery(query);
		if(rs.next()){
			showAlert("Username already exists !!!", "Please try different name");
			return true;
		}
		return false;
	}

	public static boolean emailExists(TextField emailField) throws SQLException {
		String query = "select * from userAccounts where email_id='"+emailField.getText()+"';";
		ResultSet rs = __init__.executer.executeQuery(query);
		if(rs.next()){
			showAlert("email already exists !!!", "go to forget password!!!");
			return true;
		}
		return false;
	}

	public static boolean numberExists(TextField numberField) throws SQLException {
		String query = "select * from userAccounts where contact_no='"+numberField.getText()+"';";
		ResultSet rs = __init__.executer.executeQuery(query);
		if(rs.next()){
			showAlert("number already exists with some other account !!!", "use another number");
			return true;
		}
		return false;
	}

	private static boolean checkInput(TextField usernameField, TextField emailField, PasswordField passField,PasswordField confPassField,TextField numberField){
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
