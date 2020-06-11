package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java8.Th;
import org.openqa.selenium.By;


import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleQuestionOptions {
    @And("I click Quizzes menu item")
    public void iClickQuizzesMenuItem() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(1000);
    }

    @And("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String title) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(title);
        Thread.sleep(1000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        Thread.sleep(1000);
    }

    @And("I select Single-Choice question type")
    public void iSelectSingleChoiceQuestionType() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Single-Choice')]")).click();
        Thread.sleep(1000);
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(text);
        Thread.sleep(1000);
    }

    @And("I type Option{int} {string}")
    public void iTypeOption(int num1, String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Option "+num1+"*']")).sendKeys(text);
        Thread.sleep(1000);

    }


    @And("I select correct options")
    public void iSelectCorrectOptions() {
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-6']")).click();
    }



    @And("I type answers for {string} and {string}")
    public void iTypeAnswersForAnd(String arg0, String arg1) {
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(1000);
    }


    @Then("Quiz {string} is created")
    public void quizIsCreated(String text) throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
        Thread.sleep(1000);
    }

    @And("I delete Quiz {string}")
    public void iDeleteQuiz(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+text+"')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'SQA Test')]/../../..//span[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h1[contains(text(),'Confirmation')]/../..//span[@class='mat-button-wrapper'][contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }



    @And("I provide {int} Options of answers")
    public void iProvideOptionsOfAnswers(int opt) {
        int i=1;
        String[] question = {"A"};
        getDriver().findElement(By.xpath("//*[@placeholder='Option " + i + "*']")).sendKeys(question);
        for (i=2; i<opt; i++){
            getDriver().findElement(By.xpath("//*[@placeholder='Option " + i + "*']")).sendKeys(question);
            getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
        }
        getDriver().findElement(By.xpath("//*[@placeholder='Option "+opt+"*']")).sendKeys(question);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
    }



    @Then("field Option{int} is not displayed")
    public void fieldOptionIsNotDisplayed(int opt) {
        assertThat(getDriver().findElement(By.xpath("/*[@placeholder='Option \"+opt+\"*']")).isDisplayed()).isFalse();
    }




}
