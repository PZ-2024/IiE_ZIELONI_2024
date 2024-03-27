package net.zieloni.jcoffe;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Menu;
import javafx.scene.control.MenuBar;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Font;
import javafx.stage.Stage;

import java.io.IOException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        Font.loadFont(getClass().getResourceAsStream("/fonts/Boogaloo-Regular.ttf"), 12);
        Font.loadFont(getClass().getResourceAsStream("/fonts/Diplomata-Regular.ttf"), 12);
        FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("hello-view.fxml"));
        GridPane outerGridPane = fxmlLoader.load(); // Load the outer GridPane from the FXML file
        Scene scene = new Scene(outerGridPane, 320, 240);
        stage.setTitle("Hello!");
        stage.setScene(scene);
        stage.show();

        // Get the inner GridPane by its ID
        GridPane innerGridPane = (GridPane) outerGridPane.lookup("#innerGridPane");
        // Get the menu by its ID
        HBox menuBar = (HBox) outerGridPane.lookup("#menu");

        // Determine the height of the content on top of innerGridPane
        double contentHeight = menuBar.getHeight()/* Calculate the height of your content on top */;

        // Set min-height of innerGridPane to accommodate the content on top
        innerGridPane.setMinHeight(contentHeight);

        // Dynamically adjust background size based on scene dimensions
        innerGridPane.setStyle("-fx-background-size: cover;"); // Initially set to cover

        // Update background size when scene is resized
        scene.widthProperty().addListener((obs, oldVal, newVal) -> {
            innerGridPane.setStyle("-fx-background-size: " + newVal + "px " + (scene.getHeight() - contentHeight) + "px;");
        });
        scene.heightProperty().addListener((obs, oldVal, newVal) -> {
            innerGridPane.setStyle("-fx-background-size: " + scene.getWidth() + "px " + (newVal.doubleValue() - contentHeight) + "px;");
        });
    }


    public static void main(String[] args) {
        launch();
    }
}