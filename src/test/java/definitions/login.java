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

    @And("I type into email {string}")
    public void iTypeIntoEmail(String email)
    {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type into password {string}")
    public void iTypeIntoPassword(String password)
    {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(password);
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton()
    {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }
    @Then("{string} name appears")
    public void nameAppears(String fullName) throws InterruptedException {
        Thread.sleep(2000);
        String xPathWithMessage = "//*[contains(text(),'"+fullName+"')]";
        assertThat(getDriver().findElement(By.xpath(xPathWithMessage)).isDisplayed()).isTrue();
    }
    @Then("{string} appears")
    public void appears(String authentication) throws InterruptedException
    {
        Thread.sleep(2000);
        String xPathWithMessage = "//*[contains(text(),'"+authentication+"')]";
        assertThat(getDriver().findElement(By.xpath(xPathWithMessage)).isDisplayed()).isTrue();
    }

    @And("I confirm that the password {string} is masked")
    public void iConfirmThatThePasswordIsMasked(String password)
    {
        WebElement input = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        boolean isEncrypted = input.getAttribute("type").equals("password");
    }

    @And("I check cut function for password")
    public void iCheckCutFunctionForPassword()
    {

    }
}
