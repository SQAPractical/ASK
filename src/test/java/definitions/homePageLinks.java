package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

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
        String linkToGo="//h5[contains(text(),'"+link+"')]/parent::div";

//        WebDriverWait wait=new WebDriverWait(getDriver(),15);
//        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(linkToGo)));
//
        WebElement linkElement=getDriver().findElement(By.xpath(linkToGo));
        linkElement.click();

    }

    @Then("I verify the page by text {string}")
    public void iVerifyThePageByText(String expectedText) throws InterruptedException {
        Thread.sleep(5000);
        String text="//*[contains(text(),'"+expectedText+"')]";
        WebElement element=getDriver().findElement(By.xpath(text));
        assertThat(element.isDisplayed()).isTrue();

    }

    @And("After I push {string}")
    public void afterIPush(String nextPageButton) throws InterruptedException {
        Thread.sleep(5000);
        String nextButton="//div[@class='mat-tab-label-content' and contains(text(),'"+nextPageButton+"')]";
        WebElement element=getDriver().findElement(By.xpath(nextButton));
        element.click();
    }

    @And("I choose first person on the list")
    public void iChooseFirstPersonOnTheList() {
        String button="//div[@class='mat-list-item-content']/parent::mat-list-item[@class='mat-list-item mat-2-line']";
        List<WebElement> elements=getDriver().findElements(By.xpath(button));
        elements.get(0).click();
    }

    @Then("I verify that new page contains text {string}")
    public void iVerifyThatNewPageContainsText(String expText) {
        String text="//td[text()='"+expText+"']";
        WebDriverWait wait=new WebDriverWait(getDriver(),15);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(text)));
        WebElement element=getDriver().findElement(By.xpath(text));
        assertThat(element.isDisplayed()).isTrue();
    }


    @And("Let choose First person on the list")
    public void letChooseFirstPersonOnTheList() {
        String button="//div[@class='mat-list-item-content']/parent::mat-list-item[@class='mat-list-item image']";
        List<WebElement> elements=getDriver().findElements(By.xpath(button));
        elements.get(0).click();
    }

    @Then("I verify by {string} link")
    public void iVerifyByLink(String expLink) {
        String link="//span[text()='"+expLink+"']";
        WebDriverWait wait=new WebDriverWait(getDriver(),15);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(link)));
        WebElement element=getDriver().findElement(By.xpath(link));
        assertThat(element.isDisplayed()).isTrue();

    }

    @And("In the pop up window I confirm {string}")
    public void inThePopUpWindowIConfirm(String arg0) {
        String button="//span[@class='mat-button-wrapper' and text()='Log Out']";
        WebDriverWait wait=new WebDriverWait(getDriver(),15);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(button)));
        WebElement element=getDriver().findElement(By.xpath(button));
        element.click();

    }

    @And("Then I push {string} button")
    public void thenIPushButton(String arg0) {
        String button="//h5[text()='Log Out']/parent::div";
        WebDriverWait wait=new WebDriverWait(getDriver(),15);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(button)));
        WebElement element=getDriver().findElement(By.xpath(button));
        element.click();

    }

    @And("I click {string} link")
    public void iClickLink(String linkText) {
        String link="//span[text()='"+linkText+"']";
        WebDriverWait wait=new WebDriverWait(getDriver(),15);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(link)));
        WebElement element=getDriver().findElement(By.xpath(link));
        element.click();

    }
}
