package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Registration_LastName {
    @When("I type {string} into First Name field")
    public void iTypeIntoFirstNameField(String FirstName) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-0']")).sendKeys(FirstName);
    }

    @When("I type {string} into Last Name field")
    public void iTypeIntoLastNameField(String LastName) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-1']")).sendKeys(LastName);
    }

    @And("I type {string} into email field")
    public void iTypeIntoEmailField(String email) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(email);
    }

    @And("I type {string} into Group Code field")
    public void iTypeIntoGroupCodeField(String GroupCode) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-3']")).sendKeys(GroupCode);
    }

    @And("I type {string} into Password field")
    public void iTypeIntoPasswordField(String Password) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-4']")).sendKeys(Password);
    }

    @And("I type {string} into Confirm Password field")
    public void iTypeIntoConfirmPasswordField(String ConfirmPassword) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-5']")).sendKeys(ConfirmPassword);
    }

    @Then("Text {string} should appear")
    public void textShouldAppear(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }

    @Then("error message should appear")
    public void errorMessageShouldAppear() {
        assertThat(getDriver().findElement(By.xpath("//div[@class='cdk-visually-hidden']")).isDisplayed()).isTrue();
    }
}
