package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
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

    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String group) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(group);

    }

    @And("I type password {string} on registration page")
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

    }
}
