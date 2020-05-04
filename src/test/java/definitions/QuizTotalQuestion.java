package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizTotalQuestion {

    @Then("I wait for {int} sec")
    public void iWaitForSec(int sec) throws InterruptedException {
        Thread.sleep(sec * 1000);
    }

    @Then("I click on {string} on the left menu")
    public void clickOnQuizzesOnTheLeftMenu(String text) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @Then("I create new Quizz")
    public void iCreateNewQuizz() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }

    @Then("I type {string} on Title Of The Quiz text box")
    public void iTypeOnTitleOfTheQuizTextBox(String text) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
    }

    @Then("I click on Add question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']")).click();
    }

    @Then("I select question Textual type")
    public void iSelectQuestionTextualType() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//div[contains(text(),'Question Type *')]/..//div[contains(text(), 'Textual')]")).click();
    }

    @Then("I type {string} on Question text box")
    public void iTypeOnQuestionTextBox(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Question *']")).sendKeys(text);

    }

    @Then("I Add second Question")
    public void iAddSecondQuestion() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted shift']//button[@class='mat-button mat-primary']")).click();
    }


    @Then("I select question Single-Choice type")
    public void iSelectQuestionSingleChoiceType() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q2')]/../../..//div[contains(text(), 'Question Type *')]/..//div[contains(text(), 'Single-Choice')]")).click();
        Thread.sleep(2000);
    }

    @Then("I type {string} on second Question text box")
    public void iTypeOnSecondQuestionTextBox(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q2')]/../../..//*[@placeholder='Question *']")).sendKeys(text);

    }

    @Then("I type {string} in first Option second Question text box")
    public void iTypeInFirstOptionSecondQuestionTextBox(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q2')]/../../..//*[@placeholder='Option 1*']")).sendKeys(text);
    }

    @Then("I type {string} in second Option second Question text box")
    public void iTypeInSecondOptionSecondQuestionTextBox(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q2')]/../../..//*[@placeholder='Option 2*']")).sendKeys(text);
    }

    @Then("I select first Option is correct answer")
    public void iSelectFirstOptionIsCorrectAnswer() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q2')]/../../..//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-radio-inner-circle']")).click();

    }

    @Then("I Add third Question")
    public void iAddThirdQuestion() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted shift']//button[@class='mat-button mat-primary']")).click();
    }

    @Then("I select question Multiple-Choice type")
    public void iSelectQuestionMultipleChoiceType() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]/../../..//div[contains(text(), 'Question Type *')]/..//div[contains(text(),'Multiple-Choice')]")).click();
    }

    @Then("I type {string} on third Question text box")
    public void iTypeOnThirdQuestionTextBox(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]/../../..//*[@placeholder='Question *']")).sendKeys(text);

    }

    @Then("I type {string} in first Option third Question text box")
    public void iTypeInFirstOptionThirdQuestionTextBox(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]/../../..//*[@placeholder='Option 1*']")).sendKeys(text);
    }


    @Then("I type {string} in second Option third Question text box")
    public void iTypeInSecondOptionThirdQuestionTextBox(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]/../../..//*[@placeholder='Option 2*']")).sendKeys(text);
    }

    @Then("I select first Option  is correct answer third Question")
    public void iSelectFirstOptionIsCorrectAnswerThirdQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]/../../..//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']")).click();

    }

    @Then("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
        Thread.sleep(4000);
    }

    @Then("I click on Quizz contains text abc")
    public void iClickOnQuizzContainsText() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'abc')]")).click();
    }

    @Then("total Questions field is displayed")
    public void totalQuestionsFieldIsDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//div[@class='mat-expansion-panel-content ng-trigger ng-trigger-bodyExpansion mat-expanded']//div[@class='horizontal-group']")).isDisplayed()).isTrue();
    }

    @Then("total Questions is {string}")
    public void totalQuestionsIs(String text) {
        String actualText = getDriver().findElement(By.xpath("//*[@class='mat-expansion-panel-header-title'][contains(text(),'abc')]/../../..//table[1]//tbody[1]//tr[1]//td[2]")).getText();
        assertThat(actualText).contains(text);
    }

    @Then("I delete quizz")
    public void iDeleteQuizz() {
        getDriver().findElement(By.xpath("//*[@class='mat-expansion-panel-header-title'][contains(text(),'abc')]/../../..//*[contains(text(),'Delete')]")).click();
    }

    @Then("I confirm delete quizz")
    public void iConfirmDeleteQuizz() throws InterruptedException {
        getDriver().findElement(By.xpath("//h1[contains(text(),'Confirmation')]/..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(4000);
    }


    @Then("I edit quizz")
    public void iEditQuizz() {
        getDriver().findElement(By.xpath("//*[@class='mat-expansion-panel-header-title'][contains(text(),'abc')]/../../..//*[contains(text(),'Edit')]")).click();

    }

    @Then("I choose third question")
    public void tChooseThirdQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]")).click();
    }

    @Then("I click Delete Question")
    public void iClickDeleteQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]/../../..//*[@class='mat-button mat-primary']//*[contains(text(),'Delete')]")).click();

    }

    @Then("I confirm delete third Question")
    public void iConfirmDeleteThirdQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//h1[contains(text(),'Confirmation')]/..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(4000);
    }

    @Then("button Delete Question shuld be displaed")
    public void elementWithXpathShuldBeDisplaed() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Q3')]/../../..//*[@class='mat-button mat-primary']")).isDisplayed()).isTrue();
    }

    @Then("I Add third in Question section")
    public void iAddThirdInQuestionSection() {
        getDriver().findElement(By.xpath("//div[@class='controls shift ng-star-inserted']//button[@class='mat-button mat-primary']")).click();

    }
}


