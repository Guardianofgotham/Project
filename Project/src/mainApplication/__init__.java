package mainApplication;

import java.io.FileInputStream;

import com.jfoenix.controls.JFXAlert;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import com.mysql.cj.x.protobuf.MysqlxPrepare;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

import java.io.FileNotFoundException;
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
	private JFXTextField userField;
	@FXML
	private JFXPasswordField passwordField;
	@FXML
	private JFXButton loginButton;
	@FXML
	private JFXButton createAccountButton;
	public static Statement executer;
	public static Stage mainStage;
	public static Connection connection;
	public static void main(String[] args) {
		launch(args);
	}

	static void connectToDatabase() throws SQLException {
		Thread toConnectToDatabase = new Thread(new Runnable(){
			@Override
			public void run() {
				String host = "jdbc:mysql://localhost:3306/dbms";
				String user = "hardik";
				String Password = "hardik";
				Connection con = null;
				try {
					con = DriverManager.getConnection(host,user,Password);
					__init__.executer = con.createStatement();
					__init__.connection = con;
					System.out.println("Connected to database");
				} catch (SQLException e) {
					System.out.println("Database is not setup");
				}
			}
		});
		toConnectToDatabase.start();
	}

	@FXML
	public void onLoginClicked(MouseEvent event) throws SQLException, IOException {
		String username = userField.getText();
		String password = passwordField.getText();
		boolean isValidUser = authenticate(username,password);
		if(isValidUser){
			changeScene("home");
		}
		else{
			System.out.println("User not found");
		}
	}

	@FXML
	public void forgotPasswordScreen(MouseEvent event) throws SQLException, IOException {
		changeScene("forgotPassword");
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
		changeScene("createAccount");
	}

	@Override
	public void start(Stage mainStage) throws Exception {
		String pathtoFXML = "src/resources/fxml/__init__window__.fxml";
		FXMLLoader loader = new FXMLLoader();
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		mainStage.setScene(sc);
		mainStage.setResizable(false);
		mainStage.show();
		__init__.mainStage=mainStage;
		__init__.connectToDatabase();
	}

	public static void showAlert() {
		Platform.runLater(new Runnable() {
			public void run() {
				JFXAlert alert = new JFXAlert();
				alert.setTitle("Message Here...");
				alert.setHeaderText("Look, an Information Dialog");
				alert.setContentText("I have a great message for you!");
				alert.showAndWait();
			}
		});
	}

	static void changeScene(String sceneName) throws IOException {
		String pathtoFXML = "src/resources/fxml/"+sceneName+".fxml";
		FXMLLoader loader = new FXMLLoader();
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		__init__.mainStage.setScene(sc);
	}

}
