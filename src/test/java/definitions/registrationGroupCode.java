package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCode {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage()
    {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String firstName)
    {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(firstName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String lastName)
    {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lastName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email)
    {
        String nameOfThePage = getDriver().getCurrentUrl();
        if (nameOfThePage.contains("login")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
        }
        else {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }}

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode)
    {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type password {string}")
    public void iTypePassword(String password)

    {
        String nameOfThePage = getDriver().getCurrentUrl();
        if (nameOfThePage.contains("login")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(password);
        }
        else {
            getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
        }}

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confirmPassword)
    {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);
    }

    @And("I click on Register Me button")
    public void iClickOnRegisterMeButton()
    {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @Then("Message {string} appears")
    public void messageAppears(String textOfMessage) throws InterruptedException
    {
        Thread.sleep(2000);
        String xPathWithMessage = "//*[contains(text(),'" + textOfMessage + "')]";
        assertThat(getDriver().findElement(By.xpath(xPathWithMessage)).isDisplayed()).isTrue();
    }
}
