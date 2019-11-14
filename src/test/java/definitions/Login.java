package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Login {
    @Then("I verify user name {string} is displayed")
    public void iVerifyUserNameIsDisplayed(String name) {
              assertThat(getDriver().findElement(By.xpath("")).isDisplayed()).isTrue();
    }

    @Then("I verify error message {string} appears")
    public void iVerifyErrorMessageAppears(String message) {

    }
}
