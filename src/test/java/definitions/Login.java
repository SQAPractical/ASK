package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Login {
    @Given("I open {string} page")
    public void iOpenPage(String pageName) {
        if (pageName.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        }
        else if (pageName.equalsIgnoreCase("registration")){
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

    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(500);
    }

    @Then("Text {string} appears")
    public void textAppears(String text) {
        WebElement expectedText  = getDriver().findElement(By.xpath("//*[contains(text(), '"+text+"')]"));
        assertThat(expectedText.isDisplayed()).isTrue();
    }
}
