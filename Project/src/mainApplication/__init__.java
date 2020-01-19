package mainApplication;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import java.sql.*;

public class __init__ extends Application {



	public static void main(String[] args) {
		launch(args);
	}

	static Statement connectToDatabase(){
		try{
			String host = "jdbc:mysql://localhost:3306/test";
			String user = "hardik";
			String Password = "hardik";
			Connection con = DriverManager.getConnection(host,user,Password);
			Statement executer = con.createStatement();
			return executer;
		}
		catch(Throwable t){
			System.out.println("Please setup database");
			System.exit(0);
		}
		return null;
	}

	@Override
	public void start(Stage mainStage) throws Exception {

		String pathtoFXML = "src/resources/fxml/__init__window__.fxml";
		FXMLLoader loader = new FXMLLoader();
		System.out.println("Apple");
		FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
		AnchorPane root = (AnchorPane) loader.load(fxmlStream);
		Scene sc = new Scene(root);
		sc.getStylesheets().add("file:src/resources/css/mainWindow.css");
		mainStage.setScene(sc);
		mainStage.setResizable(false);
		mainStage.show();

		Statement executer = __init__.connectToDatabase();
		String query = "select * from supplier";
		ResultSet rs = executer.executeQuery(query);
		System.out.println(rs.toString());
		while(rs.next()) {
			System.out.println(rs.getString("sname"));
		}
	}

}
