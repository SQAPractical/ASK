package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static java.lang.Thread.sleep;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class LogIn {
    @When("I navigate to log in page")
    public void iNavigateToLogInPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }


    @And("I type email {string} to email field")
    public void iTypeEmailToEmailField(String Email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(Email);
    }

    @And("I type password {string} to log in")
    public void iTypePasswordToLogIn(String Pass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(Pass);
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton() {
        getDriver().findElement(By.xpath("//span[text()='Sign In']")).click();
    }

    @And("student {string} appears")
    public void studentAppears(String StudentN) throws InterruptedException {
        Thread.sleep(2000);

        String xPath = "//*[contains(text(),'"+StudentN+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));

        assertThat(elementWithMessage.isDisplayed()).isTrue();
    }



}
