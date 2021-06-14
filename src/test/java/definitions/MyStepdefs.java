package definitions;

import cucumber.api.java.en.Given;

import static support.TestContext.getDriver;

public class MyStepdefs {
    @Given("i open")
    public void iOpen() {
        getDriver().get("http://ask-stage.portnov.com/#/home");
    }
}
