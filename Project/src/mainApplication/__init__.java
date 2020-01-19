package mainApplication;

import java.io.FileInputStream;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

import java.io.IOException;
import java.sql.*;

public class __init__ extends Application {

	@FXML
	private AnchorPane rootAnchorPane;
	@FXML
	private Label userNameLabel;
	@FXML
	private Label passwordLabel;
	@FXML
	private TextField userField;
	@FXML
	private PasswordField passwordField;
	@FXML
	private Button loginButton;
	@FXML
	private Button createAccountButton;
	static Statement executer;
	static Stage mainStage;

	public static void main(String[] args) {
		launch(args);
	}

	static void connectToDatabase() throws SQLException {
		Platform.runLater(new Runnable(){
			@Override
			public void run() {
				String host = "jdbc:mysql://localhost:3306/test";
				String user = "hardik";
				String Password = "hardik";
				Connection con = null;
				try {
					con = DriverManager.getConnection(host,user,Password);
					__init__.executer = con.createStatement();
					System.out.println("Connected to database");
				} catch (SQLException e) {
					System.out.println("Database is not setup");
				}
			}
		});

	}

	@FXML
	public void onLoginClicked(MouseEvent event) throws SQLException {
		String username = userField.getText();
		String password = passwordField.getText();
		boolean isValidUser = authenticate(username,password);
		if(isValidUser){
			System.out.println("Yes, user found");
		}
		else{
			System.out.println("User not found");
		}
	}

	private boolean authenticate(String username,String password) throws SQLException {
		String query = "Select * from userAccounts where username='"+username+"' and password='"+password+"';";
		ResultSet rs = executer.executeQuery(query);
		if(!rs.next()){
			return false;
		}
		return true;
	}

	// Event Listener on Button[#createAccountButton].onMouseClicked
	@FXML
	public void onSignUp(MouseEvent event) throws IOException {
		String pathtoFXML = "src/resources/fxml/createAccount.fxml";
		FXMLLoader loader = new FXMLLoader();
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		sc.getStylesheets().add("file:src/resources/css/createAccount.css");
		mainStage.setScene(sc);
		mainStage.show();
	}

	@Override
	public void start(Stage mainStage) throws Exception {
		String pathtoFXML = "src/resources/fxml/__init__window__.fxml";
		FXMLLoader loader = new FXMLLoader();
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		sc.getStylesheets().add("file:src/resources/css/mainWindow.css");
		mainStage.setScene(sc);
		mainStage.setResizable(false);
		mainStage.show();
		__init__.mainStage=mainStage;
		__init__.connectToDatabase();
		__init__.showAlert();
	}

	public static void showAlert() {
		Platform.runLater(new Runnable() {
			public void run() {
				Alert alert = new Alert(Alert.AlertType.INFORMATION);
				alert.setTitle("Message Here...");
				alert.setHeaderText("Look, an Information Dialog");
				alert.setContentText("I have a great message for you!");
				alert.showAndWait();
			}
		});
	}


}
