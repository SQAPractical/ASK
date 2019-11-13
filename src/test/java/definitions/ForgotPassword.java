package definitions;

import cucumber.api.PendingException;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

public class ForgotPassword {
    @When("^I click Forgot Password link$")
    public void iClickForgotPasswordLink() throws Throwable {
        getDriver().findElement(By.xpath("//a[contains(text(),'I forgot my password')]")).click();
        Thread.sleep(2000);
    }

    @And("^I type email address \"([^\"]*)\"$")
    public void iTypeEmailAddress(String Email) throws Throwable {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(Email);
    }

    @And("^I click on Request Password Reset button$")
    public void iClickOnRequestPasswordResetButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Request Password Reset')]")).click();
        Thread.sleep(2000);
    }

    @Then("^message \"([^\"]*)\" appears$")
    public void messageAppears(String message) throws Throwable {
        String Result = getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).getText();
        assertThat(Result.equalsIgnoreCase(message));
    }
}
