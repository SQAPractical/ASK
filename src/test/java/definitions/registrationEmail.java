package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import jdk.jfr.Timespan;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import java.util.concurrent.TimeUnit;

import static org.hamcrest.MatcherAssert.assertThat;
import static support.TestContext.getDriver;

public class registrationEmail {
    @When("I open {string}  page")
    public void iOpenPage(String arg0) {
        getDriver().get("http://ask-stage.portnov.com/#/registration");

    }

    @And("I type first name {string}")
    public void iTypeFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(fName);

    }

    @And("I type last name {string}")
    public void iTypeLastName(String lName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lName);

    }

    @And("I type email {string}")
    public void iTypeLastEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }


    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(groupCode);
    }


    @And("I type password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(pass);
    }


    @And("I confirm password {string}")
    public void iConfirmPassword(String pass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(pass);
    }


    @And("I click Register Me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//button[@type = 'submit']")).click();
    }

    @Then("text {string} appears")
    public void textAppears(String text) throws InterruptedException {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.urlContains("http://ask-stage.portnov.com/#/registration-confirmation"));
        String actualString = getDriver().findElement(By.xpath("//h4")).getAttribute("innerHTML");
        String expectedString = text;
        Assert.assertEquals(actualString, expectedString);

    }
}

