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
    public void iOpenPage(String pageName) {
        if (pageName.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        } else if (pageName.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
    }

    @When("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
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
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'" + text + "')]")).isDisplayed()).isTrue();
    }

    @Then("Copy and cut options disable, password display in bullets")
    public void copyAndCutOptionsDisablePasswordDisplayInBullets() {
        WebElement passwordField = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        assertThat(passwordField.getAttribute("type")).isEqualTo("password");
    }

    @Then("error message should appear")
    public void errorMessageShouldAppear() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(), 'valid email')]")).isDisplayed()).isTrue();

    }

    @Then("password error message should appear")
    public void passwordErrorMessageShouldAppear() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(), 'Whitespaces')]")).isDisplayed()).isTrue();
    }

    @Then("Text this field is required appears")
    public void textThisFieldIsRequiredAppears() {
        assertThat(getDriver().findElement(By.xpath("//mat-error[@class='mat-error ng-star-inserted']")).isDisplayed()).isTrue();

    }
}
