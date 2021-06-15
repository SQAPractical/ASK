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
        getDriver().findElement(By.xpath("//*[@formcontrolname='firstName']")).sendKeys(FName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String LName) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='lastName']")).sendKeys(LName);

    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
       getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='group']")).sendKeys(groupCode);
    }

    @And("I type password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(pass);
    }
    @And("I confirm password {string}")
    public void iConfirmPassword(String ConfPass) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='confirmPassword']")).sendKeys(ConfPass);
    }

    @And("I click on register me button")
    public void iClickOnRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();
        Thread.sleep(2000);
    }

    @Then("Text {string} appears")
    public void textAppears(String expectedText) {
        String xPath = "//*[contains(text(),'"+expectedText+"')]";
        WebElement textElement = getDriver().findElement(By.xpath(xPath));
        assertThat(textElement.isDisplayed()).isTrue();
    }

}
