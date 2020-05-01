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
    public void iTypeFirstName(String firstName) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'First Name']")).sendKeys(firstName);
    }

    @And("I type Last Name {string}")
    public void iTypeLastName(String lastName) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Last Name']")).sendKeys(lastName);
    }

    @And("I type Email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Email']")).sendKeys(email);
    }

    @And("I type group {string}")
    public void iTypeGroup(String group) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Group Code']")).sendKeys(group);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confirmpass) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Confirm Password']")).sendKeys(confirmpass);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }

    @Then("message {string} will be appeared")
    public void messageWillBeAppeared(String message) {
        Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).getText().equals(message));
    }

    @And("I type registration password {string}")
    public void iTypeRegistrationPassword(String pass) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Password']")).sendKeys(pass);
    }

    @Then("I wait some minutes")
    public void iWaitSomeMinutes() throws InterruptedException {
        sleep(2000);
    }
}
