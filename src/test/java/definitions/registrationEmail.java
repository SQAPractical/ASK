package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationEmail {
    @When("I open {string} page")
    public void iOpenPage(String pageName) {
        if (pageName.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
        else if (pageName.equalsIgnoreCase("login")){
            getDriver().get("http://ask-stage.portnov.com/#/login");
        }
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'firstName']")).sendKeys(fName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String lName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'lastName']")).sendKeys(lName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String gCode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'group']")).sendKeys(gCode);
    }

    @And("I type password {string}")
    public void iTypePassword(String pswrd) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'password']")).sendKeys(pswrd);
    }

    @And("I type to confirm password {string}")
    public void iTypeToConfirmPassword(String cPswrd) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'confirmPassword']")).sendKeys(cPswrd);
    }

    @Then("I click on Register Me button")
    public void iClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[text()='Register Me']")).click();
    }

    @Then("text {string} appears")
    public void textAppears(String text) throws InterruptedException {
        Thread.sleep(2000);
        WebElement expectedText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
        assertThat(expectedText.isDisplayed()).isTrue();
    }
}