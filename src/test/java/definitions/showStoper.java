package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class showStoper {
    @And("I click Quizzes link")
    public void iClickQuizzesLink() throws InterruptedException {
        getDriver().findElement(By.xpath("(//*[@class='mat-list-text'])[4]")).click();
        Thread.sleep(2000);
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);

    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String quiz) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quiz);

    }


    @Then("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        Thread.sleep(2000);
    }

    @And("I fill out question name {string}")
    public void iFillOutQuestionName(String question) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(question);

    }
    @And("I fill out Option one with {string}")
    public void iFillOutOptionOneWith(String optionOne) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(optionOne);
    }
    @And("I fill out Option two with {string}")
    public void iFillOutOptionTwoWith(String option) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(option);
    }


    @Then("^I click on element using JavaScript with xpath \"([^\"]*)\"$")
    public void iClickOnElementUsingJavaScriptWithXpath(String xpath) throws InterruptedException {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
        Thread.sleep(2000);
    }

    @Then("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);

    }

    @Then("I click on element with xpath {string}")
    public void iClickOnElementWithXpath(String xpath) throws InterruptedException {
        getDriver().findElement(By.xpath(xpath)).click();
        Thread.sleep(2000);
    }

    @And("I click on Close button on PREVIEW MODE")
    public void iClickOnCloseButtonOnPREVIEWMODE() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Close')]")).click();
        Thread.sleep(2000);

    }
    @And("I delete quiz {string}")
    public void iDeleteQuiz(String arg0) throws InterruptedException {

        getDriver().findElement(By.xpath("(//h1[contains(text(),'Confirmation')])/../../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);

    }

}