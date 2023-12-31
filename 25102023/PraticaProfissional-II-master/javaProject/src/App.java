import javafx.application.Application;

public class App extends Application {
    @Override
    public void start (Stage primaryStage) {
        try {
            BorderPane root = new BorderPane(); Scene scene = new Scene(root,400,400); scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
            primaryStage.setScene (scene);
            primaryStage.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        Launch(args);
    }
}