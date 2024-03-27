package net.zieloni.jcoffe;

import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.*;

import java.net.URL;
import java.util.ResourceBundle;

public class HelloController implements Initializable {
    public TextField emailField;
    public PasswordField passwordField;
    public Button submitButton;
    @FXML
    private Label welcomeText;
    @FXML
    private Button homeButton;


    @FXML
    protected void onHelloButtonClick() {
        welcomeText.setText("Welcome to JavaFX Application!");
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        setButtonBackground(homeButton, "/images/logo.png");
    }
    private void setButtonBackground(Button button, String iconFilename) {
        Image icon = new Image(getClass().getResourceAsStream(iconFilename));
        BackgroundImage backgroundImage = new BackgroundImage(icon, BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER, new BackgroundSize(1.0, 1.0, true, true, false, false));
        Background background = new Background(backgroundImage);
        button.setBackground(background);
    }

    private void addSizeListener(Button button) {
        button.widthProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> observable, Number oldValue, Number newValue) {
                updateBackgroundSize(button);
            }
        });

        button.heightProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> observable, Number oldValue, Number newValue) {
                updateBackgroundSize(button);
            }
        });
    }

    private void updateBackgroundSize(Button button) {
        Background background = button.getBackground();
        if (background != null && !background.getImages().isEmpty()) {
            BackgroundImage backgroundImage = background.getImages().get(0);
            BackgroundSize backgroundSize = new BackgroundSize(button.getWidth(), button.getHeight(), false, false, true, true);
            backgroundImage = new BackgroundImage(backgroundImage.getImage(), backgroundImage.getRepeatX(), backgroundImage.getRepeatY(), backgroundImage.getPosition(), backgroundSize);
            button.setBackground(new Background(backgroundImage));
        }
    }
    @FXML
    protected void login(){
        if(emailField.getText().equals("j.grzebyk@gmail.com") && passwordField.getText().equals("1234")){
            System.out.println("Zalogowano");
        }
        else{
            System.out.println("Nie mo konta");
        }
    }
}