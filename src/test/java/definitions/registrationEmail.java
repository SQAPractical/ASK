package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationEmail {
    @When("I type {string} into First Name input field")
    public void iTypeIntoFirstNameInputField(String firstName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(firstName);
    }

    @And("I type {string} into Last Name input field")
    public void iTypeIntoLastNameInputField(String lastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lastName);
    }

    @And("I type {string} into Email field")
    public void iTypeIntoEmailField(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }


    @And("I type {string} into Group Code field")
    public void iTypeIntoGroupCodeField(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type {string} into Password field")
    public void iTypeIntoPasswordField(String pass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(pass);
    }

    @And("I type {string} into Confirm Password field")
    public void iTypeIntoConfirmPasswordField(String confPass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confPass);
    }

    @And("I click on Register Me button")
    public void iClickOnRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);
    }

}
