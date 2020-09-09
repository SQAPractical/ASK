package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionOptions {
    @And("I click submit button")
    public void iClickSubmitButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }

//    @And("I click Quizzes")
//    public void iClickQuizzes() throws InterruptedException {
//        getDriver().findElement(By.xpath("//h5[contains(text(), 'Quizzes')]")).click();
//        Thread.sleep(3000);
//    }

    @And("I click Create New Quiz")
    public void iClickCreateNewQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(3000);
    }

    @And("I type in title of quiz {string}")
    public void iTypeInTitleOfQuiz(String title) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
        Thread.sleep(3000);
    }

//    @And("I click Add Question")
//    public void iClickAddQuestion() throws InterruptedException {
//        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//button[@class='mat-button mat-primary']")).click();
//        Thread.sleep(3000);
//    }

    @And("I click single choice button")
    public void iClickSingleChoiceButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div/div/mat-radio-group/mat-radio-button[2]/label[1]/div[1]")).click();
        Thread.sleep(3000);
    }

//    @And("I type question {string}")
//    public void iTypeQuestion(String question) {
//        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(question);
//    }

    @And("I create {int} options")
    public void iCreateOptions(int totalOptions) {
        for (int i = 1; i <= totalOptions ; i++) {
            if (i > 2) {
                getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();
            }
            getDriver().findElement(By.xpath("//textarea[@placeholder='Option " +  i + "*']")).sendKeys("Answer " + i);
        }
    }

    @And("I set option {int} as answer")
    public void iSetOptionAsAnswer(int one) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='right']//mat-radio-group[1]//mat-radio-button[1]")).click();
        Thread.sleep(3000);
    }

//    @And("I click Save")
//    public void iClickSave() throws InterruptedException {
//        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
//        Thread.sleep(3000);
//    }

    @Then("message {string} shows")
    public void messageShows(String errorMessage) {
//        getDriver().findElement(By.xpath("//*[contains(text(), " + errorMessage + ")"));
//        assertThat(getDriver()).isTrue();
        assertEquals(getDriver().findElement(By.xpath("//*[contains(text(), " + errorMessage + ")")), errorMessage);
    }
}