package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    @Given("I open {string} page")
    public void iOpenPage(String page) {
        if (page.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-qa.portnov.com/#/login");
        } else if (page.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        }
    }

    @When("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }


    @And("I type password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(pass);
    }

    @And("I click Sign in button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @Then("Text {string} appears")
    public void textAppears(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),"+text+")]")).isDisplayed()).isTrue();
    }

    @Then("simple snack bar appear")
    public void simpleSnackBarAppear() {
        assertThat(getDriver().findElement(By.xpath("//simple-snack-bar[contains(text(),'Authentication failed. User not found or password')]")).isDisplayed()).isTrue();

    }

    @Then("alert appears")
    public void alertAppears() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'This field is required')]")).isDisplayed()).isTrue();
    }

    @Then("alert {string} appears")
    public void alertAppears(String alert) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Should be a valid')]")).isDisplayed()).isTrue();
    }

}




