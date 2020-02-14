package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class userEmailRegist {
    @Given("I open register page")
    public void iOpenRegisterPage() {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }

    @When("I enter First Name {string}")
    public void iEnterFirstName(String firstName) {
        getDriver().findElement(By.xpath("//*[@placeholder='First Name']")).sendKeys(firstName);
    }


    @And("I enter Last Name {string}")
    public void iEnterLastName(String lastName) {
        getDriver().findElement(By.xpath("//*[@placeholder='Last Name']")).sendKeys(lastName);
    }

    @And("I enter Email {string}")
    public void iEnterEmail(String email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email']")).sendKeys(email);
    }

    @And("I enter Group Code {string}")
    public void iEnterGroupCode(String grCode) {
        getDriver().findElement(By.xpath("//*[@placeholder='Group Code']")).sendKeys(grCode);
    }

    @And("I enter Password {string}")
    public void iEnterPassword(String passwd) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password']")).sendKeys(passwd);
    }

    @And("I confirm Password {string}")
    public void iConfirmPassword(String confirmPass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(confirmPass);
    }

    @And("I click on {string} button")
    public void iClickOnButton(String arg0) {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @And("I'm waiting for {int} sec")
    public void iWaitForSec(int time) throws Throwable {
        time = time * 1000;
        Thread.sleep(time);
    }

    @Then("I can see message {string}")
    public void iCanSeeMessage(String message) {
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

}
