package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(.,'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @Then("Element with text {string} is displayed on home page")
    public void elementWithTextIsDisplayedOnHomePage(String footerText) {
        String xPath = "//footer[@class='padded']";
        WebElement textElement = getDriver().findElement(By.xpath(xPath));
        assertThat(textElement.isDisplayed()).isTrue();
    }

    @Then("Snackbar with text {string} is displayed")
    public void snackbarWithTextIsDisplayed(String authenticationFailed) {
        String xPath = "//*[contains(text(),'" + authenticationFailed + "')]";
        WebElement textElement = getDriver().findElement(By.xpath(xPath));
        assertThat(textElement.isDisplayed()).isTrue();
    }

    @Then("Password displays in bullets, copy, cut - disabled")
    public void passwordDisplaysInBulletsCopyCutDisabled() {
        String xPath = "//*[@formcontrolname='password']";
        String attribute = "type";
        String attributeValue = "password";
        String expectedAttributeValue = getDriver().findElement(By.xpath(xPath)).getAttribute(attribute);
        assertThat(expectedAttributeValue).isEqualTo(attributeValue);
    }

    @And("I click on next field")
    public void iClickOnNextField() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).click();
        Thread.sleep(2000);
    }

    @Then("red error message {string} appears underneath")
    public void redErrorMessageAppearsUnderneath(String errorEmail) {
        String xPath = "//*[@role='alert'][contains(text(),'" + errorEmail + "')]";
        WebElement textElement = getDriver().findElement(By.xpath(xPath));
        assertThat(textElement.isDisplayed()).isTrue();
    }

    @And("I click on previous field")
    public void iClickOnPreviousField() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).click();
        Thread.sleep(2000);
    }

}