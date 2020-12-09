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
        getDriver().get("http://ask-stage.portnov.com/#/registration");
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
    public void iTypePassword(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'password']")).sendKeys(password);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confPassword) {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(confPassword);
    }

    @And("I click Register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[text()='Register Me']")).click();
    }

    @Then("Text {string} appears")
    public void textAppears(String text) throws InterruptedException {
        Thread.sleep(2000);
        WebElement expectedText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
        assertThat(expectedText.isDisplayed()).isTrue();

        //assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();

    }
}
