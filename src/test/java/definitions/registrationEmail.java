package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import static java.lang.Thread.*;
import static support.TestContext.getDriver;

public class registrationEmail {
    @Given("I open registration page")
    public void iOpenRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @When("I type First Name {string}")
    public void iTypeFirstName(String arg0) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'First Name']")).sendKeys(arg0);
    }

    @And("I type Last Name {string}")
    public void iTypeLastName(String arg0) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Last Name']")).sendKeys(arg0);
    }

    @And("I type Email {string}")
    public void iTypeEmail(String arg0) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Email']")).sendKeys(arg0);
    }

    @And("I type group {string}")
    public void iTypeGroup(String arg0) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Group Code']")).sendKeys(arg0);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String arg0) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Confirm Password']")).sendKeys(arg0);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }

    @Then("message {string} will be appeared")
    public void messageWillBeAppeared(String arg0) {
        Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(),'"+arg0+"')]")).getText().equals(arg0));
    }

    @And("I type registration password {string}")
    public void iTypeRegistrationPassword(String arg0) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Password']")).sendKeys(arg0);
    }

    @Then("I wait some minutes")
    public void iWaitSomeMinutes() throws InterruptedException {
        sleep(2000);
    }
}
