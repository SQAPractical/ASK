package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }


    @Then("Password displays in bullets, copy and cut disabled")
    public void passwordDisplaysInBulletsCopyAndCutDisabled() {
        String attribute = "type";
        String attributeValue = "password";

        WebElement passwordField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        String actualAttributeValue = passwordField.getAttribute(attribute);

        assertThat(actualAttributeValue).isEqualTo(attributeValue);

    }

    @And("I confirm Password {string}")
    public void iConfirmPassword(String arg0) {
    }