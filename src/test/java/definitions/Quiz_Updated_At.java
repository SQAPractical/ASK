package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Quiz_Updated_At {
    @Then("I click on element Quizzes")
    public void iClickOnElementQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Quizzes')]")).click();
        Thread.sleep(3000);

    }

    @And("I click on element Create New Quiz")
    public void iClickOnElementCreateNewQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Create New')]")).click();
        Thread.sleep(2000);
    }

    @Then("I type {string} in Title of the quiz")
    public void iTypeInTitleOfTheQuiz(String Q_title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Q_title);
    }

//    @And("I click on Add Question button")
//    public void iClickOnAddQuestionButton() {
//        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']/button")).click();
//    }

    @And("choose single choice question type")
    public void chooseSingleChoiceQuestionType() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Single-Choice')]/..")).click();
    }

    @And("I type question {string}")
    public void iTypeQuestion(String question) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//div[@class='right']//textarea[@formcontrolname='question']")).sendKeys(question);
    }

    @Then("I type {string} in Option one")
    public void iTypeInOptionOne(String option1) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
    }

    @And("I type {string} on Option two")
    public void iTypeOnOptionTwo(String option2) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);

    }

    @Then("I choose option two as correct answer")
    public void iChooseOptionTwoAsCorrectAnswer() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 2*']/../../../../..//*[@class='mat-radio-button mat-accent']")).click();
    }

    @And("I click on Save")
    public void iClickOnSave() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
        Thread.sleep(3000);
    }

    @Then("compare Created and Updated date and time")
    public void compareCreatedAndUpdatedDateAndTime() throws InterruptedException {
        WebElement created = getDriver().findElement(By.xpath("//*[contains(text(),'Geography Test 3')]/../../..//*[contains(text(), 'Created At')]/..//*[contains(text(), '20')]"));
        WebElement updated = getDriver().findElement(By.xpath("//*[contains(text(),'Geography Test 3')]/../../..//*[contains(text(), 'Updated At')]/..//*[contains(text(), '20')]"));

        String createdText = created.getText();
        String updatedText = updated.getText();
        assertThat(createdText).isEqualTo(updatedText);
    }


    @And("I delete Quiz {string}")
    public void iDeleteQuiz(String QuizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(), 'Quizzes')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '" + QuizName + "')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '" + QuizName + "')]/../../..//*[contains(text(), 'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(2000);
    }


    @And("I find saved quiz")
    public void iLookForSavedQuizz() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Geography Test 3')]")).click();
    }

     @And("I click on element Edit")
    public void iClickOnElementEdit() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Geography Test 3')]/../../..//*[text()='Edit']")).click();
    }

    @Then("I click on element Add Question")
    public void iClickOnElementAddQuestion() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
    }

    @And("I select Textual radio button")
    public void iSelectTextualRadioButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2')]/../../..//*[contains(text(), 'Textual')]/../..//*")).click();
    }

    @Then("I type question two: {string}")
    public void iTypeQuestionTwo(String question) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2')]/../../..//*[@placeholder= 'Question *']")).sendKeys(question);
    }

    @Then("compare updated time with created")
    public void compareUpdatedTimeWithCreated() {
        WebElement created = getDriver().findElement(By.xpath("//*[contains(text(),'Geography Test 3')]/../../..//*[contains(text(), 'Created At')]/..//*[contains(text(), '20')]"));
        WebElement updated = getDriver().findElement(By.xpath("//*[contains(text(),'Geography Test 3')]/../../..//*[contains(text(), 'Updated At')]/..//*[contains(text(), '20')]"));

        String createdText = created.getText();
        String updatedText = updated.getText();
        assertThat(createdText).isNotEqualTo(updatedText);
    }
}