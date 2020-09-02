package definitions;

import cucumber.api.java.en.Given;

import static support.TestContext.getDriver;

public class login {
    @Given("I open {string} page")
    public void iOpenPage(String pagenName) {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }
}
