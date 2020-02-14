package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class userFirstName {
    @Given("I open login page")
    public void iOpenLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @Given("I open registration page")
    public void iOpenRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String FName) {
        getDriver().findElement(By.xpath("//*[@placeholder='First Name']")).sendKeys(FName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String LName) {
        getDriver().findElement(By.xpath("//*[@placeholder='Last Name']")).sendKeys(LName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String Group) {
        getDriver().findElement(By.xpath("//*[@placeholder='Group Code']")).sendKeys(Group);

    }

    @And("I type password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password']")).sendKeys(pass);

    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String ConfPass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(ConfPass);

    }

    @And("I click Register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Register Me')]")).click();
    }

    @Then("{string} message appears")
    public void messageAppears(String message) {

        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int time) throws Throwable  {
        time = time * 1000;
        Thread.sleep(time);
    }
}
