package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
//import jdk.nashorn.internal.ir.LiteralNode;
import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;
import static support.TestContext.getDriver;

public class UserGroupCode {

    @When("I type first name {string}")
    public void iTypeFirstName(String Fname) {
        getDriver().findElement(By.xpath("//*[@placeholder='First Name']")).sendKeys(Fname);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String Lname) {
        getDriver().findElement(By.xpath("//*[@placeholder='Last Name']")).sendKeys(Lname);
    }

    @And("I type email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email']")).sendKeys(Email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String Gcode) {
        getDriver().findElement(By.xpath("//*[@placeholder='Group Code']")).sendKeys(Gcode);
    }

    @And("I type password {string}")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password']")).sendKeys(Pass);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String Cpass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(Cpass);
    }

    @When("I click sign up button")
    public void iClickSignUpButton()  {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();

    }

    @Given("I get confirm message contains {string}")
    public void iGetConfirmMessageContains(String text) throws Throwable {
        Thread.sleep(7000);
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }
}
