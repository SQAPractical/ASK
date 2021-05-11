package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class A5564 {
//    @When("I navigate to login page")
//    public void iNavigateToLoginPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/login");
//    }

//    @And("I type {string}")
//    public void iType(String email) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
//    }

//    @And("I type Password {string}")
//    public void iTypePassword(String password) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
//    }

    @And("I click on Sing In button")
    public void iClickOnSingInButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }
    @And("I click on {string} menu item")
    public void iClickOnMenuItem(String arg0) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//a[@href='/#/users-management']")).click();
    }

    @And("I click on {string} account")
    public void iClickOnAccount(String userName) throws InterruptedException {
        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//*[contains(text(), '"+userName+"')]/..//*[contains(text(), 'Group: 1234')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '"+userName+"')]")).click();
    }

    @And("I click on {string} button")
    public void iClickOnButton(String arg0) {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();
    }

    @And("I click on {string}")
    public void iClickOn(String arg0)throws InterruptedException {
        Thread.sleep(500);
        getDriver().findElement(By.xpath("//button[@class='mat-menu-item ng-star-inserted']")).click();
    }

    @And("I type {string} in {string} input field")
    public void iTypeInInputField(String arg0, String arg1) throws InterruptedException {
        Thread.sleep(500);
        String xpath =  "//input[@formcontrolname='name']";
        getDriver().findElement(By.xpath(xpath)).clear();
        getDriver().findElement(By.xpath(xpath)).sendKeys(arg0);
    }

    @And("I click on {string} changeButton")
    public void iClickOnChangeButton(String arg0) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
    }

    @Then("displayed Group {string}")
    public void displayedGroup(String arg0) {
        getDriver().findElement(By.xpath("//*[text()[contains(.,'ABC')]]"));
    }

    @Then("disabled {string} button")
    public void disabledButton(String arg0) {
        getDriver().findElement(By.xpath("//mat-dialog-container//..//button[@disabled]"));
    }

    @And("I delete data in {string} input field")
    public void iDeleteDataInInputField(String arg0) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).clear();
    }


}
