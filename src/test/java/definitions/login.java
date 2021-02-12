package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.StringSelection;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    private final String submitPath = "//button[@type='submit']";
    private final String emailPath = "//input[@formcontrolname='email']";
    private final String passwordPath = "//input[@formcontrolname='password']";

    @Given("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @When("I type email {string} on login page")
    public void iTypeEmailOnLoginPage(String email) {
        getDriver().findElement(By.xpath(emailPath)).sendKeys(email);
    }

    @And("I type password {string} on login page")
    public void iTypePasswordOnLoginPage(String password) {
        getDriver().findElement(By.xpath(passwordPath)).sendKeys(password);
    }

    @And("I click on sing in button")
    public void iClickOnSingInButton() {
        getDriver().findElement(By.xpath(submitPath)).click();
    }

    @Then("{string} page loaded")
    public void pageLoaded(String text) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.urlContains("/" + text));

        String url = getDriver().getCurrentUrl();
        assertThat(url).endsWith("/" + text);
    }

    @Then("password field display input in bullets")
    public void passwordFieldDisplayInputInBullets() {
        WebElement element = getDriver().findElement(By.xpath(passwordPath));
        String type = element.getAttribute("type");
        assertThat(type).isEqualTo("password");
    }

    private String getPasswordText(String ch)  {
        WebElement element = getDriver().findElement(By.xpath(passwordPath));

        Toolkit toolkit = Toolkit.getDefaultToolkit();
        Clipboard clipboard = toolkit.getSystemClipboard();
        clipboard.setContents(new StringSelection(""), null);

        Actions actions = new Actions(getDriver());
        actions.moveToElement(element).click();
        actions.keyDown(Keys.META).sendKeys("a").keyUp(Keys.META).build().perform();
        actions.keyDown(Keys.META).sendKeys(ch).keyUp(Keys.META).build().perform();

        try {
            return (String) clipboard.getData(DataFlavor.stringFlavor);
        } catch (UnsupportedFlavorException | IOException e) {
            return "";
        }
    }

    @Then("password is not cut")
    public void passwordIsNotCut() {
        assertThat(getPasswordText("x").isEmpty()).isTrue();
    }

    @Then("password is not copy")
    public void passwordIsNotCopy() {
        assertThat(getPasswordText("c").isEmpty()).isTrue();
    }

    @Then("{string} message appears on login page")
    public void messageAppearsOnLoginPage(String message) {
        String xPath = "//*[text()='" + message + "']";
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xPath)));

        WebElement element = getDriver().findElement(By.xpath(xPath));
        assertThat(element.isDisplayed()).isTrue();
    }

    @When("I click on {string} link on login page")
    public void iClickOnLinkOnLoginPage(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'" + text + "')]")).click();
    }
}
