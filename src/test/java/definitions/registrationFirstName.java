package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationFirstName {
    @Given("I navigate to registration page")
    public void iNavigateToRegistrationPage() {

        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @When("I type first name {string}")
    public void iTypeFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(fName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String lName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type password {string}")
    public void iTypePassword(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);
    }

    @And("I click Register Me")
    public void iClickRegisterMe() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);
    }

    @Then("Message {string} Appears")
    public void messageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'" + message + "')]")).isDisplayed()).isTrue();
    }
}
