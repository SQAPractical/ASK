package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.StringSelection;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.util.ArrayList;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStDelete {
    private ArrayList<String> tabs;
    private String email = "";
    private String group = "";

    private void clickOnElementByPath(String path) {
        try {
            Thread.sleep(2000);
            getDriver().findElement(By.xpath(path)).click();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Given("I navigate to Email Generator")
    public void iNavigateToEmailGenerator() {
        ((JavascriptExecutor)getDriver()).executeScript("window.open()");
        tabs = new ArrayList<>(getDriver().getWindowHandles());

        getDriver().switchTo().window(tabs.get(0));
        getDriver().get("https://generator.email/");
    }

    @And("I navigate to registration page in new tab")
    public void iNavigateToRegistrationPageInNewTab() throws InterruptedException {
        getDriver().switchTo().window(tabs.get(1));
        getDriver().get("http://ask-stage.portnov.com/#/registration");
        Thread.sleep(2000);;
    }

    @When("I click on copy button and save generated email")
    public void iClickOnCopyButtonAndSaveGeneratedEmail() throws IOException, UnsupportedFlavorException {
        Toolkit toolkit = Toolkit.getDefaultToolkit();
        Clipboard clipboard = toolkit.getSystemClipboard();
        clipboard.setContents(new StringSelection(""), null);

        String path = "//button[@id='copbtn']";
        clickOnElementByPath(path);
        email = (String) clipboard.getData(DataFlavor.stringFlavor);
    }

    @And("I type generated email")
    public void iTypeGeneratedEmail() {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @When("I switch tab to {int}")
    public void iSwitchTabTo(int num) throws InterruptedException {
        getDriver().switchTo().window(tabs.get(num - 1));
        Thread.sleep(2000);
    }

    @And("I click on {string} button in email")
    public void iClickOnButtonInEmail(String button) throws InterruptedException {
        Thread.sleep(8000);
        getDriver().navigate().refresh();

        String path = String.format("//a[contains(text(),'%1$s')]", button);
        clickOnElementByPath(path);
    }

    @And("I click on Back To Login Page button")
    public void iClickOnBackToLoginPageButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button//span[text()='Back to Login Page']")).click();
        Thread.sleep(2000);
    }

    @And("I type generated email on Login page")
    public void iTypeGeneratedEmailOnLoginPage() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I choose student account {string}")
    public void iChooseStudentAccount(String name) {
        String path = String.format("//*[text()='%1$s']", name);
        clickOnElementByPath(path);
    }

    @And("I click on Delete User button")
    public void iClickOnDeleteUserButton() {
        clickOnElementByPath("//button//*[contains(.,'delete')]/..");
    }

    @And("I click on Delete button on Confirmation dialog")
    public void iClickOnDeleteButtonOnConfirmationDialog() {
        clickOnElementByPath("//button//*[contains(.,'Delete')]/..");
    }

    @Then("student {string} deleted")
    public void studentDeleted(String name) {
        String path = String.format("//*[text()='%1$s']", name);
        int count = getDriver().findElements(By.xpath(path)).size();
        assertThat(count).isEqualTo(0);
    }

    @And("I click on Options settings button")
    public void iClickOnOptionsSettingsButton() {
        clickOnElementByPath("//button//*[contains(.,'settings')]");
    }

    @And("I click on Change User's Group button")
    public void iClickOnChangeUserSGroupButton() {
        clickOnElementByPath("//button//*[contains(.,'group')]/..");
    }

    @And("I click Change on Confirmation dialog")
    public void iClickChangeOnConfirmationDialog() {
        clickOnElementByPath("//button//*[contains(.,'Change')]/..");
    }

    @And("I type New User's Group {string}")
    public void iTypeNewUserSGroup(String groupName) throws InterruptedException {
        group = groupName;
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//input[@formcontrolname='name']"));
        element.clear();
        element.sendKeys(group);
    }

    @Then("group changed on User Details page")
    public void groupChangedOnUserDetailsPage() throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//td[text()='Group']/following-sibling::td"));
        assertThat(element.getText()).isEqualTo(group);
    }

    @And("I remove text from New User's Group field")
    public void iRemoveTextFromNewUserSGroupField() throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//input[@formcontrolname='name']"));

        Actions actions = new Actions(getDriver());
        actions.moveToElement(element).click();
        actions.keyDown(Keys.META).sendKeys("a").keyUp(Keys.META).build().perform();
        actions.sendKeys(Keys.DELETE).build().perform();
    }

    @Then("{string} message appears on Confirmation dialog")
    public void messageAppearsOnConfirmationDialog(String message) throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//mat-error"));
        assertThat(element.getText()).isEqualTo(message);
    }
}
