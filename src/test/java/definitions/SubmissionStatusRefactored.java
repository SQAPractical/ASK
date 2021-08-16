package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.HashMap;
import java.util.function.Function;

import static support.TestContext.getDriver;

public class SubmissionStatusRefactored {

    private HashMap<String, String> goodiesBag = new HashMap<>();
    private WebDriverWait await() { return await(15); }

    private WebDriverWait await(int timeoutInSeconds) { return await(timeoutInSeconds, 200); }

    private WebDriverWait await(long timeOutInSeconds, long sleepInMillis) { return new WebDriverWait(getDriver(), timeOutInSeconds, sleepInMillis); }

    private void awaitVisible(WebElement element) { await().until(ExpectedConditions.visibilityOf(element)); }

    private void awaitVisible(By by) { await().until(ExpectedConditions.visibilityOfElementLocated(by)); }

    private void awaitClickable(WebElement element) { await().until(ExpectedConditions.elementToBeClickable(element)); }

    private void awaitClickable(By by) { await().until(ExpectedConditions.elementToBeClickable(by)); }

    private JavascriptExecutor getExec() { return (JavascriptExecutor) getDriver(); }

    private void scrollTo(WebElement element) { getExec().executeScript("arguments[0].scrollIntoView(false);", element); }

    @Given("I login with email {string} and password {string}")
    public void iLoginWithEmailAndPassword(String emailAddress, String password) {
        String buttonXpath = "//button/span[contains(text(), 'Sign In')]";
        String emailXpath = "//input[@formcontrolname='email']";
        String passwordXpath = "//input[@formcontrolname='password']";

        awaitClickable(By.xpath(buttonXpath));

        WebElement emailField = getDriver().findElement(By.xpath(emailXpath));
        WebElement passwordField = getDriver().findElement(By.xpath(passwordXpath));
        WebElement signInButton = getDriver().findElement(By.xpath(buttonXpath));

        emailField.sendKeys(emailAddress);
        passwordField.sendKeys(password);
        signInButton.click();
        awaitVisible(By.xpath("//h5[contains(text(), 'Home')]"));
    }

    @When("I click {string} sidebar button")
    public void iClickSidebarButton(String buttonText) {
        String menuXpath = "//h5[contains(text(),'"+buttonText+"')]";
        // Wait until it's clickable
        awaitClickable(By.xpath(menuXpath));
        // ... and click on it!
        getDriver().findElement(By.xpath(menuXpath)).click();
        System.out.println("Yay!");
    }

    @When("I select student {string} of {string} group")
    public void iSelectStudentOfGroup(String studentName, String groupId) {
        String studentXpath = "//div[@class='mat-list-text'][contains(., '"+studentName+"')]/span[text()='"+groupId+"']";

        WebElement student = getDriver().findElement(By.xpath(studentXpath));
        scrollTo(student);
        awaitClickable(student);
        student.click();
    }

    @And("I log out")
    public void iLogOut() {
        iClickSidebarButton("Log Out");
        String popupButtonXpath = "//ac-modal-confirmation//button/span[text()='Log Out']";
        awaitClickable(By.xpath(popupButtonXpath));
        getDriver().findElement(By.xpath(popupButtonXpath)).click();
    }
}
