package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;

import static support.TestContext.getDriver;

public class textualQuestionText {
    @When("I navigate to Login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(1000*seconds);
    }
}
