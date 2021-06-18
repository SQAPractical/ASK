package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
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
    public void iClickOnSignInButton() {
        getDriver().findElement(By.xpath("//span[contains(.,'Sign In')]")).click();


    }

    @Then("Element with text {string} is displayed on home page")
    public void elementWithTextIsDisplayedOnHomePage(String element) throws InterruptedException {
        String elementOnHomePage = "//footer[contains(text(),'Assessment Control @ Portnov')]";
        String xPath = "//*[contains(text(),'"+element+"')]";
        Thread.sleep(1000);
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnHomePage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }

    @Then("Password displays in bullets, copy, cut - disabled")
    public void passwordDisplaysInBulletsCopyCutDisabled() {
        String xPath = "//*[@formcontrolname='password']";
        String attribute = "type";
        String attributeValue = "password";

        String expectedAttributeValue = getDriver().findElement(By.xpath(xPath)).getAttribute(attribute);
        assertThat(expectedAttributeValue).isEqualTo(attributeValue);
    }
}
