// Created by Elena

package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationFirstName {


    @Then("I type FirstName {string} on registration page")
    public void iTypeFirstNameOnRegistrationPage(String firstName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstName);
    }

    @And("I type LastName {string} on registration page")
    public void iTypeLastNameOnRegistrationPage(String lastName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lastName);
    }

    @Then("I type Email {string} on registration page")
    public void iTypeEmailOnRegistrationPage(String email) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(email);
    }

    @And("I type Group Code {string} on registration page")
    public void iTypeGroupCodOnRegistrationPage(String GroupCode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(GroupCode);
    }

    @Then("I type Password {string} on registration page")
    public void iTypePasswordOnRegistrationPage(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
    }
    @And("I type Confirm Password {string} on registration page")
    public void iTypeConfirmPasswordOnRegistrationPage(String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confirmPassword);
    }

//    @Then("I click Register Me button")
//    public void iClickRegisterMeButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
//        Thread.sleep(3000);

//    }
    //Scenario2

    @And("Click on FirstName field")
    public void clickOnFirstNameField() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).click();
        Thread.sleep(2000);
    }

    @Then("I type {string} in firstName field")
    public void iTypeInFirstNameField(String firstName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstName);
    }
    //Scenario4

    @Then("I type {string} in firstName field,{string} in lastName,{string} in mail field,{string} in groupCod field,{string} in password field, {string} in confirm password field")
    public void iTypeInFirstNameFieldInLastNameInMailFieldInGroupCodFieldInPasswordFieldInConfirmPasswordField(String firstName, String lastName, String email, String groupCod, String password, String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstName);
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lastName);
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(email);
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(groupCod);
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confirmPassword);
    }


    @Then("I type in {string} in firstName field,{string} in lastName,{string} in mail field,{string} in groupCod field,{string} in password field, {string} in confirm password field")
    public void iTypeInInFirstNameFieldInLastNameInMailFieldInGroupCodFieldInPasswordFieldInConfirmPasswordField(String firstName, String lastName, String email, String groupCod, String password, String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstName);
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lastName);
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(email);
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(groupCod);
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confirmPassword);
    }

    @And("Click on lastName field")
    public void clickOnLastNameField() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).click();
        Thread.sleep(2000);
    }
}
