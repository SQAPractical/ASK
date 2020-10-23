package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationPasswordConfirmPassword {
    @When("I click Register now button")
    public void iClickRegisterNowButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-primary']")).click();
        Thread.sleep(2000);
    }

    @And("I type first name {string} on registration page")
    public void iTypeFirstNameOnRegistrationPage(String firstName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(firstName);
    }

    @And("I type last name {string} on registration page")
    public void iTypeLastNameOnRegistrationPage(String lastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lastName);
    }

    @And("I type email {string} on registration page")
    public void iTypeEmailOnRegistrationPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type group code {string} on registration page")
    public void iTypeGroupCodeOnRegistrationPage(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type password {string} on registration page")
    public void iTypePasswordOnRegistrationPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
    }

    @And("I type confirm password {string} on registration page")
    public void iTypeConfirmPasswordOnRegistrationPage(String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);
    }

    @And("I click Register me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        java.lang.Thread.sleep(2000);
    }
}
