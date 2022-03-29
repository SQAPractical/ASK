package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    @When("I navigate to login page")
    public void iNavigateToLoginPage()
    {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton()
    {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @And("I confirm that the password {string} is masked")
    public void iConfirmThatThePasswordIsMasked(String password)
    {
        WebElement input = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        boolean isEncrypted = input.getAttribute("type").equals("password");
        assertThat(isEncrypted).isTrue();
//        String attributeType = "type";
//        String expectedAttributeValue = "password";
//
//        String ActualAttributeValue = input.getAttribute(attributeType);
//        assertThat(ActualAttributeValue.equals(expectedAttributeValue)).isTrue();

    }

}
