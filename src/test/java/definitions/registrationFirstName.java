package definitions;

import cucumber.api.java.en.And;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationFirstName {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");

    }

    @And("I type First Name {string}")
    public void iTypeFirstName(String FName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(FName);
    }

    @And("I type Last Name {string}")
    public void iTypeLastName(String LName) {

        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(LName);
    }

    @And("I type Email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
    }

    @And("I type Group Code {string}")
    public void iTypeGroupCode(String GCode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(GCode);
    }


    @And("I type Password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Password);
    }

    @And("I click on Register Me button")
    public void iClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();
    }


    @Then("Text {string} appears")
    public void textAppears(String text) throws InterruptedException {

        Thread.sleep(3000);
        String xPath = "//*[contains(text(),'"+text+"')]";
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }
  
    @Then("Text {string} should not appears")
    public void textShouldNotAppears(String Msg) throws InterruptedException{
        Thread.sleep(2000);
        String xPath = "//*[contains(text(),'"+Msg+"')]";
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isFalse();

    }

    @And("I type confirm Password {string}")
    public void iConfirmPassword(String CPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(CPassword);
    }
}
