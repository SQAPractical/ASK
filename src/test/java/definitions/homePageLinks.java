package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageLinks {
    @Given("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type Email {string}")
    public void iTypeEmail(String expectedEmail) {
        String xpath="//input[@formcontrolname='email']";
        WebElement element=getDriver().findElement(By.xpath(xpath));
        element.sendKeys(expectedEmail);

    }

    @And("I type Password {string}")
    public void iTypePassword(String expectedPassword) {
        String password="//input[@formcontrolname='password']";
        WebElement element=getDriver().findElement(By.xpath(password));
        element.sendKeys(expectedPassword);
    }

    @Then("I push {string} button")
    public void iPushButton(String expectedButton) {
        String button="//span[text()='"+expectedButton+"']";
        WebElement element=getDriver().findElement(By.xpath(button));
        element.click();
    }

    @And("I go to {string}")
    public void iGoTo(String link) throws InterruptedException {
        Thread.sleep(5000);
        String linkToGo="//h5[text()='Submissions']/parent::div";
//        WebDriverWait wait=new WebDriverWait(getDriver(),15);
//        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(linkToGo)));
//
        WebElement linkElement=getDriver().findElement(By.xpath(linkToGo));
        linkElement.click();

    }

    @Then("I verify the page by text {string}")
    public void iVerifyThePageByText(String expectedText) throws InterruptedException {
        Thread.sleep(5000);
        String text="//h4[text()='"+expectedText+"']";
        WebElement element=getDriver().findElement(By.xpath(text));
        assertThat(element.isDisplayed()).isTrue();

    }
}
