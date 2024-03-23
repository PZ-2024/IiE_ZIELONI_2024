module net.zieloni.jcoffe {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.web;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;
    requires org.kordamp.ikonli.javafx;
    requires org.kordamp.bootstrapfx.core;
    requires eu.hansolo.tilesfx;

    opens net.zieloni.jcoffe to javafx.fxml;
    exports net.zieloni.jcoffe;
    exports net.zieloni.jcoffe.objects;
    opens net.zieloni.jcoffe.objects to javafx.fxml;
}