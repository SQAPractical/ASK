package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static support.TestContext.getDriver;

public class MyStepdefs {
    @Given("Test")
    public void test() {
        getDriver().get("http://ask-stage.portnov.com/#/home");
    }


    @Given("Testbn")
    public void testbn() {
        System.out.println("Testing");
    }
}
