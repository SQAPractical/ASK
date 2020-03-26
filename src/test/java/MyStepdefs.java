import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class MyStepdefs {
    @Given("I open {string}")
    public void iOpen(String arg0) {

    }

    @And("I type {string}")
    public void iType(String arg0) {
        System.out.println("arg0");
    }
}
