package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class login {
    @When("I navigate to login Page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }
    @And("I type Email {string}")
    public void iTypeEmail(String Email) {
         getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
    }

    @And("I type Password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Password);
    }

    @And("I click on Sign-in button")
    public void iClickOnSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @Then("user is navigated to the home page")
    public void userIsNavigatedToTheHomePage() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).isDisplayed();
    }



    @Then("message {string}")
    public void message(String textOfMessage ) {
        String xPath = "//*[contains(text(),'"+textOfMessage+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();
    }



}
