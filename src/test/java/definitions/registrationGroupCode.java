package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCode {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String FirstName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'firstName']")).sendKeys(FirstName);
    }

    @And("I type last name {string}")
    public void iTypeLasName(String LastName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'lastName']")).sendKeys(LastName);
    }


    @And("I type email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
    }


    @And("I type groupcode {string}")
    public void iTypeGroupcode(String GroupCode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(GroupCode);
    }


    @And("I type password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'password']")).sendKeys(Password);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String ConfirmPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'confirmPassword']")).sendKeys(ConfirmPassword);
    }


    @And("I click Register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @Then("message {string} appears")
    public void messageAppears(String Message) throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(), '"+Message+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }
}
