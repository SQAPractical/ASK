package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationEmail {
    @Given("I navigate to registration webpage")
    public void iNavigateToRegistrationWebpage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I fill out first name {string}")
    public void iFillOutFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(fName);
    }

    @And("I fill out last name {string}")
    public void iFillOutLastName(String lName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lName);
    }

    @And("I fill out email {string}")
    public void iFillOutEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I fill out group {string}")
    public void iFillOutGroup(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I fill out password {string}")
    public void iFillOutPassword(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
    }

    @And("I fill out confirm password {string}")
    public void iFillOutConfirmPassword(String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);
    }

    @Then("Message {string} appears")
    public void messageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }
}
