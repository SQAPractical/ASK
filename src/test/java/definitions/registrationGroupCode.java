package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

import static org.assertj.core.api.Assertions.assertThat;


public class registrationGroupCode {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
        
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String FName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(FName);


    }

    @And("I type last name {string}")
    public void iTypeLastName(String LName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(LName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String Group) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(Group);
    }

    @And("I type password {string}")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(Pass);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String ConfirmPass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(ConfirmPass);

    }

    @And("I click on Register Me button")
    public void iClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }


    @Then("Message {string} appears")
    public void messageAppears(String Message) throws InterruptedException {
        Thread.sleep(2000);
        String xPath = "//*[contains(text(),'"+Message+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));

        assertThat(elementWithMessage.isDisplayed()).isTrue();
    }
}
