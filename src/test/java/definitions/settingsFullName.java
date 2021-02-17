package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class settingsFullName {
//    @Given("I navigate to login page")
//    public void iNavigateToLoginMPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/login");
//    }

//    @When("I type email {string}")
//    public void iTypeEmail(String email) {
//        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
//    }

//    @And("I type password {string} on login page")
//    public void iTypePasswordOnLoginPage(String pass) {
//        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(pass);
//    }

    @And("I click Sign in button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type = 'submit']")).click();
        Thread.sleep(2000);
    }

    @And("I click Settings")
    public void iClickSettings() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]")).click();
    }

    @And("I click Change your name")
    public void iClickChangeYourName() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Name')]")).click();
    }

//    @And("I type new name {string}")
//    public void iTypeNewName(String newName) {
//        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).clear();
//        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).sendKeys(newName);
//    }

    @And("I click Change button")
    public void iClickChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary'][@aria-label='Close dialog']")).click();
        Thread.sleep(2000);
    }

    @And("I delete user name")
    public void iDeleteUserName() {
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).clear();
    }

    @Then("Massage {string} Appears")
    public void massageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }

    @And("I click on the field")
    public void iClickOnTheField() {
        getDriver().findElement(By.xpath("//form[@class='ng-dirty ng-invalid ng-touched']")).click();
    }

    @Then("new name is {string}")
    public void newNameIs(String newName) {
        assertThat(getDriver().findElement(By.xpath("//td[text()='"+newName+"']")).isDisplayed()).isTrue();
    }
}


