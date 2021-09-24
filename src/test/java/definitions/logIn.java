package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class logIn {


//    @When("I Navigate to login page")
//    public void iNavigateToLoginPage() {
//getDriver().get("http://ask-stage.portnov.com/#/login");
//    }


    @And("I type Email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(Email);
    }

    @And("I type Password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(Password);
    }

    @And("I click Sign In button.")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @Then("Main menu appears")
    public void mainMenuAppears() {
        WebElement Element = getDriver().findElement(By.xpath("//ac-home-page"));
        assertThat(Element.isDisplayed()).isTrue();
    }

    @Then("Message {string} appears")
    public void messageAppears(String Message) {
        WebElement Element = getDriver().findElement(By.xpath("//*[contains(text(), '"+Message+"')]"));
        assertThat(Element.isDisplayed()).isTrue();
    }

    @And("I click on Email field")
    public void iClickOnEmailField() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).click();
    }

    @And("I click on Password field")
    public void iClickOnPasswordField() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).click();
    }


    @Then("Password in bullets, copy, cut disabled")
    public void passwordInBulletsCopyCutDisabled() {
        String attribute = "type";
        String expectedAttributeValue = "password";
        String xPathForPasswordField = "//input[@placeholder='Password *']";

        String actualAttributeValue = getDriver().findElement(By.xpath(xPathForPasswordField)).getAttribute(attribute);

        assertThat(actualAttributeValue.equals(expectedAttributeValue)).isTrue();
    }
}
