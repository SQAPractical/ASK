package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizTotalQuestion {
    @And("I click on Quizzes")
    public void iClickOnQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type title of quiz {string}")
    public void iTypeTitleOfQuiz(String title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @And("I click on add question button")
    public void iClickOnAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(2000);
    }

    @And("I add {int} questions to quiz")
    public void iAddQuestionsToQuiz(int questionsNumber) throws InterruptedException {
        for (int i = 1; i <= questionsNumber; i++) {
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q" + i + "')]/../../..//div[contains(text(),'Textual')]/..//*[@class='mat-radio-container']")).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q" + i + "')]/../../..//textarea[@placeholder='Question *']")).sendKeys("text of question");
            Thread.sleep(1000);
        } Thread.sleep(2000);

    }

    @And("I click on save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }


    @Then("List of Quizzes page appears")
    public void listOfQuizzesPageAppears() throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath("//h4[contains(text(),'List of Quizzes')]")).isDisplayed()).isTrue();
        Thread.sleep(1000);
    }

    @And("I click on {string} quiz")
    public void iClickOnQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        Thread.sleep(1000);
    }

    @And("I delete {string} quiz")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//span[contains(text(),'Delete')]")).click();
        Thread.sleep(1000);
    }
}
