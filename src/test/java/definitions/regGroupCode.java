package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class regGroupCode {
    @Given("I navigate to the registration page")
    public void iNavigateToTheRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");

    }

    @When("I type the first name {string}")
    public void iTypeTheFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(fName);
    }

    @And("I type the last name {string}")
    public void iTypeTheLastName(String lName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lName);
    }

    @And("I type the email {string}")
    public void iTypeTheEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type the group code {string}")
    public void iTypeTheGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type the password {string}")
    public void iTypeThePassword(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
    }

    @And("I confirm the password {string}")
    public void iConfirmThePassword(String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);
    }

    @And("I click the Register Me button")
    public void iClickTheRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);
    }

    @Then("the Message {string} Appears")
    public void theMessageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }

}
