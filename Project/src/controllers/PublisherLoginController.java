package controllers;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import mainApplication.Main;

import java.io.FileInputStream;
import java.io.IOException;

public class PublisherLoginController {
    public void passwordFieldPressed(MouseEvent mouseEvent) {
    }
    public void onLoginClicked(MouseEvent mouseEvent) {
    }
    public void onMainPageClicked(MouseEvent mouseEvent) throws IOException {
        String pathtoFXML = "src/resources/fxml/Main.fxml";
        FXMLLoader loader = new FXMLLoader();
        FileInputStream fxmlStream = new FileInputStream(pathtoFXML);
        AnchorPane root = (AnchorPane) loader.load(fxmlStream);
        Scene sc = new Scene(root);
        Main.mainStage.setScene(sc);
    }
}
