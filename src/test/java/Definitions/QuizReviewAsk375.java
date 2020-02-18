package Definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.util.concurrent.TimeUnit;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizReviewAsk375 {

    @Given("open page with name {string} and url: {string}")
    public void openPageWithNameAndUrl(String name, String url) {
        getDriver().get(url);
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);

    }


    @Then("type in field with name {string} this text: {string} and with XPath: {string}")
    public void typeInFieldWithNameThisTextAndWithXPath(String name, String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);

    }

    @Then("click button with name {string} and with XPath {string}")
    public void clickButtonWithNameAndWithXPath(String name, String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);


    }

    @And("verify text {string} with XPath {string} appears")
    public void verifyTextWithXPathAppears(String text, String xpath) {
        //String newXPath = "//*[contains(text(),'" + text + "')]";  // when we use static xpath and custom text inside
        WebElement element = getDriver().findElement(By.xpath(xpath));
        assertThat(element.isDisplayed()).isTrue();
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }


    @And("wait {int} seconds")
    public void waitSeconds(int time) throws InterruptedException {
        time = time * 1000;
        Thread.sleep(time);
    }

    @Then("wait when element will be present with {string} and XPath {string}")
    public void waitWhenElementWillBePresentWithAndXPath(String name, String xpath) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        assertThat(element.isDisplayed()).isTrue();
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @Then("select {string} by text in dropdown list with name {string} and XPath {string}")
    public void selectByTextInDropdownListWithNameAndXPath(String text, String header, String xpath) {

        Select droplist = new Select(getDriver().findElement(By.xpath(xpath)));
        droplist.selectByVisibleText(text);
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @When("text SOUT {string}")
    public void textSOUT(String text) {
        System.out.println(text);
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @Then("multiple click {int} times on button with name {string} and with XPath {string}")
    public void multipleClickTimesOnButtonWithNameAndWithXPath(int rounds, String name, String xpath) {
        for (int i=0;i<rounds;i++)
        {
            getDriver().findElement(By.xpath(xpath)).click();
        };
    }
}