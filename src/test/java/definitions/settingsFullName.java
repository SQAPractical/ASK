package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.util.concurrent.TimeUnit;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsFullName {
    @Then("I select Settings from menu option")
    public void iSelectSettingsFromMenuOption() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Settings')]")).click();
        getDriver().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }

    @And("I click Change Your Name button")
    public void iClickChangeYourNameButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Change Your Name')]")).click();

    }

    @Then("Dialog box will appear")
    public void dialogBoxWillAppear() {
        getDriver().findElement(By.xpath("//*[@role='dialog']"));

    }

    @Then("I click on the text field")
    public void iClickOnTheTextField() {
         getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.COMMAND,"a"));

    }

    @Then("I delete the name in the text field")
    public void iDeleteTheNameInTheTextField() throws InterruptedException {

        Actions action = new Actions(getDriver());
        action.sendKeys(Keys.DELETE).build().perform();
        Thread.sleep(5000);
    }

    @Then("I click on disabled Change button")
    public void iClickOnDisabledChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-button-wrapper'][text()='Change']")).click();
        Thread.sleep(3000);
    }

    @And("I type {string} space {string} in the text field")
    public void iTypeSpaceInTheTextField(String char1, String char2) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(char1);

        Actions action = new Actions(getDriver());
        action.sendKeys(Keys.SPACE).build().perform();
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(char2);

    }

    @Then("I click Change button")
    public void iClickChangeButton() {
        getDriver().findElement(By.xpath("//*[text()='Change']")).click();

    }

    @And("Changed name {string} is displayed")
    public void changedNameIsDisplayed(String name) {
        String elementOnTable= "//*[@class='mat-card']";
        String xPath = "//td[contains(text(),'"+name+"')]";

        WebDriverWait wait = new WebDriverWait(getDriver(), 10);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnTable)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }

    @And("I click on Cancel button")
    public void iClickOnCancelButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Cancel')]")).click();
    }

    @And("Name {string} will be displayed")
    public void nameWillBeDisplayed(String expectedName) {
        String elementOnTable= "//*[@class='mat-card']";
        String xPath = "//td[contains(text(),'"+expectedName+"')]";

        WebDriverWait wait = new WebDriverWait(getDriver(), 10);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnTable)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();

    }

    @Then("I type {string}")
    public void iType(String char1) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(char1);
    }

    @And("Message displayed {string}")
    public void messageDisplayed(String expMessage) {
        getDriver().findElement(By.xpath("//../../*[contains(text(),'"+expMessage+"')]")).isDisplayed();


    }

    @Then("I type {string} space {string}")
    public void iTypeSpace(String firstName, String lastName) {

        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(" ", firstName);

        Actions action = new Actions(getDriver());
        action.sendKeys(Keys.SPACE).build().perform();
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(lastName," ");

    }
}


