package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizDelete {

    @Then("^element with xpath \"([^\"]*)\" should be displayed$")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("^element with xpath \"([^\"]*)\" should not be present$")
    public void elementWithXpathShouldNotPresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(0);
    }

    @Then("^I wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("^I click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("^I scroll to the element with xpath \"([^\"]*)\" with offset (\\d+)$")
    public void iScrollToTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

    @Then("^I scroll to the element contains text \"([^\"]*)\" with offset (\\d+)$")
    public void iScrollToTheElementContainsTextWithOffsetNumber(String text_val, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'"+ text_val +"')]"));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

    @Then("I unfold quiz {string} details")
    public void iUnfoldQuizDetails(String quizName) throws Exception {
        iClickOnElementWithXpath("//mat-panel-title[contains(text(),'"+quizName+"')]");
    }

    @And("^I click Delete button in quiz details$")
    public void iClickDeleteButtonInQuizDetails() throws Throwable {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Test quiz for Delete Quiz functionality - 01')]/../../..//*[text()='Delete']")).click();
        Thread.sleep(3000);
    }

    @And("^I click \"([^\"]*)\" button in pop-up confirmation window$")
    public void iClickDeleteButtonInPopUpConfirmationWindow(String buttonName) throws Throwable {
        getDriver().findElement(By.xpath("//mat-dialog-container[contains(@id,'mat-dialog')]//span[text()='"+buttonName+"']/..")).click();
        Thread.sleep(3000);
    }

    @And("I delete cookies")
    public void iDeleteCookies() {
        getDriver().manage().deleteAllCookies();
    }
}
