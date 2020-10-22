package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class login {
    @Given("I open {string} page")
    public void iOpenPage(String url) {
        if(url.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        } else if (url.equalsIgnoreCase("registration")){
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
    }

    @When("I type email {string} on login page")
    public void iTypeEmailOnLoginPage(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type password {string} on login page")
    public void iTypePasswordOnLoginPage(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
    }

    @And("I click Sign in button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath(("//button[@type='submit']"))).click();
        Thread.sleep(3000);
    }

    @Then("Text {string} appears")
    public void textAppears(String text) {
        WebElement actualText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
        assertThat(actualText.isDisplayed()).isTrue();
    }

    @Then("Password displays in bullets, Copy, Cut disable")
    public void passwordDisplaysInBulletsCopyCutDisable() {
        WebElement passwordField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        String attribute = "type";
        String attributeValue = "password";
        assertThat(passwordField.getAttribute(attribute)).isEqualTo(attributeValue);
    }
}
