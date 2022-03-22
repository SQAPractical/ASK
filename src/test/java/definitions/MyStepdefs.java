package definitions;

import cucumber.api.java.en.Given;

import static support.TestContext.getDriver;

public class MyStepdefs {
    @Given("Test")
    public void test() {
        getDriver().get("http://ask-stage.portnov.com/#/home");
    }
}
