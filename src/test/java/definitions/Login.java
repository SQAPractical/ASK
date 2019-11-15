package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;

import static support.TestContext.getDriver;

public class Login {


    @Then("^I verify user name \"([^\"]*)\" is displayed$")
    public void iVerifyUserNameIsDisplayed(String name) throws Throwable {
        assertThat(getDriver().findElement(By.xpath("//h3[contains(text(),'"+name+"')]")).isDisplayed()).isTrue();
    }

    @Then("^I verify error message \"([^\"]*)\" appears$")
    public void iVerifyErrorMessageAppears(String message) throws Throwable {
        assertThat(getDriver().findElement(By.xpath("//*[text()='"+message+"']")).isDisplayed()).isTrue();
    }
}

