package mainApplication;

import java.io.File;
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
    public static User currUser;


    public static void main(String[] args) {
        launch(args);
    }

    static void connectToDatabase() throws SQLException {
        String host = "jdbc:mysql://localhost:3306/dbms";
        String user = "hardik";
        String Password = "hardik";
        Connection con = null;
        try {
            con = DriverManager.getConnection(host, user, Password);
            __init__.executer = con.createStatement();
            __init__.connection = con;
            System.out.println("Connected to database");
        } catch (SQLException e) {
            System.out.println("Database is not setup");
        }
    }

    @FXML
    public void onLoginClicked(MouseEvent event) throws SQLException, IOException {
        String username = userField.getText();
        String password = passwordField.getText();
        boolean isValidUser = authenticate(username, password);
        if (isValidUser) {
            User local = createLocalSession(username);
            local.serialize();
            changeScene("home");
        } else {
            System.out.println("User not found");
        }
    }


    public static User createLocalSession(String username) throws SQLException {
        String query = "Select * from userAccounts where username=?;";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setString(1, username);
        ResultSet rs = pstmt.executeQuery();
        rs.next();
        User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3),
                rs.getString(4), rs.getString(5), rs.getInt(6),
                rs.getString(7), rs.getInt(8));
        __init__.currUser = u;
        return u;
    }

    @FXML
    public void forgotPasswordScreen(MouseEvent event) throws SQLException, IOException {
        changeScene("forgotPassword");
    }

    private boolean authenticate(String username, String password) throws SQLException {
        String query = "Select * from userAccounts where username='" + username + "' and password='" + password + "';";
        ResultSet rs = executer.executeQuery(query);
        if (!rs.next()) {
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
        __init__.connectToDatabase();
        __init__.mainStage = mainStage;
        if (!CheckUserExists()) {
            String pathtoFXML = "src/resources/fxml/__init__window__.fxml";
            FXMLLoader loader = new FXMLLoader();
            FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
            AnchorPane root = (AnchorPane) loader.load(fxmlStream);
            Scene sc = new Scene(root);
            mainStage.setScene(sc);
        } else {
            changeScene("home");
        }
        mainStage.setResizable(false);
        mainStage.show();

    }

    static boolean CheckUserExists() throws IOException {
        File fs = null;
        fs = new File("src/mainApplication/currUser");
        if (!fs.exists()) {
            return false;
        }
        User.deserialize();
        return true;
    }


    public static void changeScene(String sceneName) throws IOException {
        String pathtoFXML = "src/resources/fxml/" + sceneName + ".fxml";
        FXMLLoader loader = new FXMLLoader();
        FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
        AnchorPane root = (AnchorPane) loader.load(fxmlStream);
        Scene sc = new Scene(root);
        __init__.mainStage.setScene(sc);
    }

}
