package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class OlesiaDefenitionFile {
    @Given("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @Then("I should see page title as {string}")
    public void iShouldSeePageTitleAs(String pageTitle) {

    }

    @Then("I should see page title contains {string}")
    public void iShouldSeePageTitleContains(String pageTitle) {
        assertThat(getDriver().getTitle().contains(pageTitle));
    }
}
