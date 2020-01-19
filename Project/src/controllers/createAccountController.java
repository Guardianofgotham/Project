package controllers;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;
import mainApplication.__init__;

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
	public void createAccount(MouseEvent event) {
		if(!checkInput(usernameField,emailField,passField,confPassField)){
			return;
		}

	}

	private static boolean checkInput(TextField usernameField, TextField emailField, PasswordField passField,PasswordField confPassField){
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
