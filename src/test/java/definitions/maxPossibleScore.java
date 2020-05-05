package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import javax.print.DocFlavor;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class maxPossibleScore {
    @Then("I wait for {int}sec")
    public void iWaitForSec(int sec) throws InterruptedException {
        Thread.sleep(2000);
    }

    @Then("I click on Quizzes tab")
    public void iClickOnQuizzesTab() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @Then("I click on create new quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }

    @Then("I should see the Quiz title")
    public void iShouldSeeTheQuizTitle() throws InterruptedException {
        Thread.sleep(2000);
        String actualText = getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).getText();

    }

    @Then("I click on textual radio button")
    public void iClickOnTextualRadioButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();
    }

    @And("I type question {string}")
    public void iTypeQuestion(String text) throws InterruptedException {
        Thread.sleep(2000);
         getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(text);
    }


}
