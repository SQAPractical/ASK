package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationPasswordConfirmPassword {
    @When("I navigate to the registration page")
    public void iNavigateToTheRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type {string} into first name")
    public void iTypeIntoFirstName(String firstName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(firstName);

    }

    @And("I type {string} into last name")
    public void iTypeIntoLastName(String lastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lastName);

    }

    @And("I type {string} into email")
    public void iTypeIntoEmail(String email) {
        String nameOfThePage = getDriver().getCurrentUrl();
        if (nameOfThePage.contains("login")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
        }
        else {
            getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
        }
    }

    @And("I type {string} into group code")
    public void iTypeIntoGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);

    }

    @And("I type {string} into password")
    public void iTypeIntoPassword(String password) {
        String nameOfThePage = getDriver().getCurrentUrl();
        if (nameOfThePage.contains("login")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(password);
        }
        else {
            getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
        }

    }

    @And("I type {string} into confirm password")
    public void iTypeIntoConfirmPassword(String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);

    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();

    }

    @Then("The message {string} appears")
    public void theMessageAppears(String textOfMessage) throws InterruptedException
    {
        Thread.sleep(2000);
        String xPathWithMessage = "//*[contains(text(),'" + textOfMessage + "')]";
        assertThat(getDriver().findElement(By.xpath(xPathWithMessage)).isDisplayed()).isTrue();
    }
}
