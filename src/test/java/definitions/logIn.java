package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class logIn {
    @And("I Type Email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname ='email']")).sendKeys(Email);
    }

    @And("I type Password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname ='password']")).sendKeys(Password);
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type ='submit']")).click();
        Thread.sleep(2000);
    }

    @Then("Password in bullets. Copy and Cut disable")
    public void passwordInBulletsCopyAndCutDisable() {
        String expectedAttribute = "type";
        String expectedAttributeValue = "password";
        String xpathForPassField = "//input[@formcontrolname ='password']";

        String actualAttributeValue = getDriver().findElement(By.xpath(xpathForPassField)).getAttribute(expectedAttribute);

        assertThat(actualAttributeValue.equals(expectedAttributeValue)).isTrue();

    }
}
