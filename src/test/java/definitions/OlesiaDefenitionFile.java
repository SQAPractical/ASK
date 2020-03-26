package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class OlesiaDefenitionFile {
    @Given("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @Then("I should see page title as {string}")
    public void iShouldSeePageTitleAs(String pageTitle) {

    }

    @Then("I should see page title contains {string}")
    public void iShouldSeePageTitleContains(String pageTitle) {
        assertThat(getDriver().getTitle().contains(pageTitle));
    }

    @When("I click on menu item {string}")
    public void iClickOnMenuItem(String xpath) throws InterruptedException{
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("I wait for element with xpath {string} to be present")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @When("I type {string} into element with xpath {string}")
    public void iTypeIntoElementWithXpath(String textToPut, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(textToPut);
    }


    @Then("I wait for {int} sec")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @And("I click on element with xpath {string}")
    public void iClickOnElementWithXpath(String xpath) throws InterruptedException{
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @And("I type question {string}")
    public void iTypeQuestion(String questionText) {
        //label[contains(text(),'Question')]/..
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(questionText);
    }

    @And("I type optionOne {string}")
    public void iTypeOptionOne(String option) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(option);
    }

    @And("I type optionTwo {string}")
    public void iTypeOptionTwo(String option) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(option);
    }
}

