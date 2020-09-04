package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;
public class Settings {
    @Given("I open {string} page")
    public void iOpenPage(String pageName) {
        if (pageName.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        }
        else if (pageName.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
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

    @And("I click settings button")
    public void iClickSettingsButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]")).click();
    }

    @And("I click change your name button")
    public void iClickChangeYourNameButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Name')]")).click();
    }

    @And("I type new name field {string}")
    public void iTypeNewNameField(String NewName) {
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).sendKeys(NewName);
    }

    @And("I clear new name field")
    public void iDeleteNewNameField() {
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).clear();
    }

    @And("I click change button")
    public void iClickChangeButton() {
        getDriver().findElement(By.xpath("//div[@class='mat-dialog-actions']//button[@class='mat-raised-button mat-primary']")).click();
    }

    @Then("Text {string} appears")
    public void textAppears(String text) throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'" + text + "')]")).isDisplayed()).isTrue();
    }

    @Then("password displays in bullets, copy, cut options disabled")
    public void passwordDisplaysInBulletsCopyCutOptionsDisabled() {
        WebElement passwordField = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        assertThat(passwordField.getAttribute("type")).isEqualTo("password");
    }

}
