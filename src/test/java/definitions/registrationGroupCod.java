package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCod {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");

    }

    @Then("I fill out First name {string}")
    public void iFillOutFirstName(String firstname){
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'firstName']")).sendKeys(firstname);

    }

    @And("I fill out Last name {string}")
    public void iFillOutLastName(String lname) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'lastName']")).sendKeys(lname);
    }

    @And("I fill out email {string}")
    public void iFillOutEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String gcode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'group']")).sendKeys(gcode);
    }

    @And("I type password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'password']")).sendKeys(pass);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confpass) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'confirmPassword']")).sendKeys(confpass);
        Thread.sleep(3000);
    }

    @And("I click on {string} button")
    public void iClickOnButton(String registr) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(4000);
    }

    @Then("Message {string} appears")
    public void messageAppears(String expectedMessage) throws InterruptedException {
        Thread.sleep(3000);
        String xPathForMessage = "//*[contains(text(),'"+expectedMessage+"')]";

        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPathForMessage));

        assertThat(elementWithMessage.isDisplayed()).isTrue();
        Thread.sleep(2000);

    }
}
