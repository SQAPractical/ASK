package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCode {

//    @When("I type first name {string} on registration page")
//    public void iTypeFirstNameOnRegistrationPage(String firstName) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstName);
//    }

//    @And("I type last name {string} on registration page")
//    public void iTypeLastNameOnRegistrationPage(String lastName) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lastName);
//    }

//    @And("I type email {string} on registration page")
//    public void iTypeEmailOnRegistrationPage(String email) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
//    }

//    @And("I type group code {string} on registration page")
//    public void iTypeGroupCodeOnRegistrationPage(String groupCode) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(groupCode);
//    }

//    @And("I type password {string} on registration page")
//    public void iTypePasswordOnRegistrationPage(String password) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
//    }
//
//    @And("I type confirm password {string} on registration page")
//    public void iTypeConfirmPasswordOnRegistrationPage(String confirmPassword) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confirmPassword);
//    }
//
    @And("I click Register Me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
    }
    @Then("text {string} appears")
    public void textAppears(String text) {
        WebElement actualText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
        assertThat(actualText.isDisplayed()).isTrue();
    }

//    @When("^I click on element with xpath \"([^\"]*)\"$")
//    public void clickOnElementWithXpath(String xpath) throws InterruptedException {
//        Thread.sleep(2000);
//        getDriver().findElement(By.xpath(xpath)).click();
//    }

//    @Then("element with xpath {string} should be present")
//    public void elementWithXpathShouldBePresent(String xpath) {
//        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
//    }

    @And("I click on group code field")
    public void iClickOnGroupCodeField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).click();
    }

    @And("I click on password field")
    public void iClickOnPasswordField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).click();
    }
}
