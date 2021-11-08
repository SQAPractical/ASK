package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCode {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
<<<<<<< HEAD
=======

>>>>>>> master
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type first name {string}")
<<<<<<< HEAD
    public void iTypeFirstName(String FirstName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'firstName']")).sendKeys(FirstName);
    }

    @And("I type last name {string}")
    public void iTypeLasName(String LastName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'lastName']")).sendKeys(LastName);
    }


    @And("I type email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
    }


    @And("I type groupcode {string}")
    public void iTypeGroupcode(String GroupCode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(GroupCode);
    }


    @And("I type password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'password']")).sendKeys(Password);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String ConfirmPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'confirmPassword']")).sendKeys(ConfirmPassword);
    }


    @And("I click Register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @Then("message {string} appears")
    public void messageAppears(String Message) throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(), '"+Message+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }
=======
    public void iTypeFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(fName);

    }

    @And("I type last name {string}")
    public void iTypeLastName(String lName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lName);
    }

    @And("I type my email {string}")
    public void iTypeMyEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(groupCode);
    }

    @And("I type password {string}")
    public void iTypePassword(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(password);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Register Me')]")).click();
    }

    @Then("Message {string} appears")
    public void messageAppears(String mesg) throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'"+mesg+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I type first name <MyFirstName>")
    public void iTypeFirstNameMyFirstName() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys();
    }
>>>>>>> master
}
