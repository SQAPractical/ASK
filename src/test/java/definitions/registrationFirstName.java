package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
<<<<<<< HEAD
import static support.TestContext.getDriver;
public class registrationFirstName {
    @When("I type first name {string}")
    public void iTypeFirstName(String firstname) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(firstname);

    }

    @And("I type last name {string}")
    public void iTypeLastName(String lastname) {

        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lastname);

    }

    @And("I type email {string} on registration page")
    public void iTypeEmailOnRegistrationPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
=======

import static support.TestContext.getDriver;

public class registrationFirstName {
    @When("I type first name {string}")
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
>>>>>>> master

    }

    @And("I type group code {string}")
<<<<<<< HEAD
    public void iTypeGroupCode(String group) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(group);
=======
    public void iTypeGroupCode(String Groupcode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(Groupcode);
>>>>>>> master

    }

    @And("I type password {string} on registration page")
<<<<<<< HEAD
    public void iTypePasswordOnRegistrationPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);

    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String ConfirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(ConfirmPassword);

    }

    @And("I click register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();

=======
    public void iTypePasswordOnRegistrationPage(String Password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(Password);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String ConfirmPassword) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(ConfirmPassword);
    }

    @And("I click register me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();

        Thread.sleep(2000);
>>>>>>> master
    }
}
