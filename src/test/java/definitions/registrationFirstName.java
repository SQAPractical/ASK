package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationFirstName {
    @And("I type email {string} on registration page")
    public void iTypeEmailOnRegistrationPage(String regEmail) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(regEmail);}

    @And("I type password {string} on registration page")
    public void iTypePasswordOnRegistrationPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);}
}
