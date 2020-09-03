package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationFirstName {
    @When("I type first name {string}")
<<<<<<< HEAD
    public void iTypeFirstName(String firstName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(firstName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String lastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lastName);
    }

    @And("I type email {string} on registration page")
    public void iTypeEmailOnRegistrationPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type password {string} on registration page")
    public void iTypePasswordOnRegistrationPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confirmPassword){
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);
=======
    public void iTypeFirstName(String FirstName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(FirstName);



    }

    @And("I type last name {string}")
    public void iTypeLastName(String LastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(LastName);
    }

    @And("I type email {string} on registration page")
    public void iTypeEmailOnRegistrationPage(String Email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys((Email));

    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String Groupcode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(Groupcode);

    }

    @And("I type password {string} on registration page")
    public void iTypePasswordOnRegistrationPage(String Password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(Password);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String ConfirmPassword) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(ConfirmPassword);
>>>>>>> master
    }

    @And("I click register me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
<<<<<<< HEAD
=======

>>>>>>> master
        Thread.sleep(2000);
    }
}
