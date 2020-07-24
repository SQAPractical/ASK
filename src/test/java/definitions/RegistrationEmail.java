package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class RegistrationEmail {
    @Given("I open {string} page")
    public void iOpenPage(String page) {
        if (page.equalsIgnoreCase("login")){
       getDriver().get("http://ask-qa.portnov.com/#/login");}

        else if (page.equalsIgnoreCase("registration")){
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        }
    }

    @When("I type name {string}")
    public void iTypeName(String name) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(name);
    }

    @And("I type LastName {string}")
    public void iTypeLastName(String LastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(LastName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type GroupCode {string}")
    public void iTypeGroupCode(String GroupCode ) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(GroupCode);
    }

    @And("I type Password {string}")
    public void iTypePassword(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
    }

    @And("I type ConfirmPassword {string}")
    public void iTypeConfirmPassword(String ConfirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(ConfirmPassword);
    }

    @And("I click Sign in button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);

    }

    @Then("Text {string} appears")
    public void textAppears(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }
}

