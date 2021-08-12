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
    public void iTypeFirstName(String FName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname =  'firstName']")).sendKeys(FName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String LName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'lastName']")).sendKeys(LName);

    }

    @And("I type email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'email']")).sendKeys(Email);

    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String Group) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'group']")).sendKeys(Group);
    }

    @And("I type password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'password']")).sendKeys(Password);

    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String ConfirmPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'confirmPassword']")).sendKeys(ConfirmPassword);
    }

    @And("I click on Register Me button")
    public void iClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }

    @Then("Message {string} appears")
    public void messageAppears(String ExpectedMessage) throws InterruptedException {
        Thread.sleep(2000);
        String xPath = "//*[contains(text(),'"+ExpectedMessage+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();
    }
}
