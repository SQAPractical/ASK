package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;
public class registrationFirstName {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }
    @And("I type first name {string}")
    public void iTypeFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(fName);
    }
    @And("I type last name {string}")
    public void iTypeLastName(String lName) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='lastName']")).sendKeys(lName);
    }
    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }
    @And("I type group code {string}")
    public void iTypeGroupCode(String group) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(group);
    }
    @And("I type password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(pass);
    }
    @And("I confirm password {string}")
    public void iConfirmPassword(String confirmPass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confirmPass);
    }

    @And("I click Register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();
    }

    @Then("Text {string} appears")
    public void textAppears(String expectedText) throws InterruptedException {
        Thread.sleep(2000);

        String xpath = "//*[contains(text(),'"+expectedText+"')]";
        WebElement element = getDriver().findElement(By.xpath(xpath));

        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I click on first name field")
    public void iClickOnFirstNameField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).click();
    }

    @And("I click on last name field")
    public void iClickOnLastNameField() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='lastName']")).click();
    }

}