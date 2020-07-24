package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationFirstName {
    @And("I type email {string} on registration page")
    public void iTypeEmailOnRegistrationPage(String regEmail) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(regEmail);}

    @And("I type password {string} on registration page")
    public void iTypePasswordOnRegistrationPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);}

    @When("I type first name {string}")
    public void iTypeFirstName(String FirstName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(FirstName);}

    @And("I type last name {string}")
    public void iTypeLastName(String LastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(LastName);}

    @And("I type group code {string}")
    public void iTypeGroupCode(String GroupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(GroupCode);}

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confPass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confPass);}

    @And("I click Register Me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);}
}
