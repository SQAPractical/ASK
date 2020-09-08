package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Multi_choice {
    @Then("I click Quizzes button")
    public void iClickQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click Create New Quiz button")
    public void iClickCreateNewQuizzButton() throws InterruptedException {
            getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
            Thread.sleep(2000);
    }

//    @Then("I type Quiz Title {string}")
//    public void iTypeQuizTitle(String QTitle) {
//        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(QTitle);
//    }

    @Then("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
        Thread.sleep(2000);
    }

    @Then("I click Multiple-Choice button")
    public void iClickMultipleChoiceButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Multiple-Choice')]")).click();
        Thread.sleep(2000);
    }


//    @Then("I wait {int} seconds")
//    public void iWaitSeconds(int sec) throws InterruptedException {
//        Thread.sleep(sec * 1000);
//    }

    @And("I type Question {string}")
    public void iTypeQuestion(String question) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Question *']")).sendKeys(question);
    }

    @Then("I click Add Option button {int} times")
    public void iClickAddOptionButtonTimes(int NumOfCl) {
        for (int i = 0; i < NumOfCl; i++){
        getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
           // getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option '"+3+"''"+"''"+i+"'*']")).sendKeys("answer");
        }

    }



    @And("I choose correct answer")
    public void iChooseCorrectAnswer() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']")).click();
        Thread.sleep(2000);
    }

    @Then("I click on Save button")
    public void iClickOnSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();


    }


    @Then("I delete Quiz {string}")
    public void iDeleteQuiz(String QuizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+QuizName+"')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '"+QuizName+"')]/../../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(5000);

    }



    @Then("Error message appears")
    public void errorMessageAppears() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Quiz is not completed')]")).isDisplayed()).isTrue();

        //assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//mat-error")).isDisplayed()).isTrue();

    }


    @And("T type {string} in {int} options")
    public void tTypeInOptions(String answ, int NumOfOpt) {
        for (int i = 1; i <= NumOfOpt; i++){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option "+i+"*']")).sendKeys(answ);
        }
    }
}

