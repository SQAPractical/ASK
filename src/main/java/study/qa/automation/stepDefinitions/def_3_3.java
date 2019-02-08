package study.qa.automation.stepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static study.qa.automation.utils.TestContext.getDriver;

public class def_3_3 {
    @And("^Select Textual Type of question One$")
    public void selectTextualTypeOfQuestionOne() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question Two$")
    public void selectTextualTypeOfQuestionTwo() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q2:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(1000);
    }

    @And("^Type text of Question Two \"([^\"]*)\"$")
    public void typeTextOfQuestionTwo(String arg0) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//*[@placeholder='Question *']")).sendKeys(arg0);
        Thread.sleep(1000);

    }
    @And("^Select Textual Type of question Three$")
    public void selectTextualTypeOfQuestionThree() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(1000);
    }

    @And("^Type text of Question Three \"([^\"]*)\"$")
    public void typeTextOfQuestionThree(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//*[@placeholder='Question *']")).sendKeys(arg0);
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question Four$")
    public void selectTextualTypeOfQuestionFour() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q4:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(1000);
    }

    @And("^Type text of Question Four \"([^\"]*)\"$")
    public void typeTextOfQuestionFour(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//*[@placeholder='Question *']")).sendKeys(arg0);
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question Five$")
    public void selectTextualTypeOfQuestionFive() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q5:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(1000);

    }

    @And("^Type text of Question Five \"([^\"]*)\"$")
    public void typeTextOfQuestionFive(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//*[@placeholder='Question *']")).sendKeys(arg0);
        Thread.sleep(1000);
    }

    @Then("^Verify that this quiz \"([^\"]*)\" was created$")
    public void verifyThatThisQuizWasCreated(String arg0) throws Throwable {
        getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'Testing Assignment Aziz')]")).click();
        Thread.sleep(5000);
        System.out.println("Verify that quiz was created");;
    }
}
