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
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String Fname) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(Fname);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String Lname) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(Lname);
    }


    @And("I type email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(Email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String GroupCode) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='group']")).sendKeys(GroupCode);
    }

    @And("I type password {string}")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(Pass);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String ConfirmPass) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='confirmPassword']")).sendKeys(ConfirmPass);

    }

    @And("I click on Register me button")
    public void iClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }

    @Then("Text {string} appears")
    public void textAppears(String Text) throws InterruptedException {
        Thread.sleep(2000);

        WebElement Element = getDriver().findElement(By.xpath("//*[contains(text(),'"+Text+"')]"));
        assertThat(Element.isDisplayed()).isTrue();
    }

}