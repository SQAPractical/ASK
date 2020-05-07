package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class SingleChoiceText {


    @Then("I click on Quizzes in the left menu")
    public void iClickOnQuizzez() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'edit')]/..")).click();

    }

    @Then("list of Quizzes appears")
    public void listOfQuizzesAppears() throws InterruptedException {

//       I wait for element to be present
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//mat-card[@class='page mat-card ng-star-inserted']")));
//Element should be displayed
        assertThat(getDriver().findElement(By.xpath("//mat-card[@class='page mat-card ng-star-inserted']")).isDisplayed()).isTrue();
    }

    @Then("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//div[@class='controls']//button[@class='mat-raised-button mat-primary']")).click();

    }

    @Then("frame Title Of The Quiz appears")
    public void frameTitleOfTheQuizAppears() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@placeholder='Title Of The Quiz *']/../../../../../..")));
        assertThat(getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']/../../../../../..")).isDisplayed()).isTrue();

    }


    @Then("I click Add Question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//button[@class='mat-button mat-primary']")).click();
    }

    @Then("I choose the question type Single Choice")
    public void iChooseTheQuestionTypeSingleChoice() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
    }

    @Then("I type text of the question {string}")
    public void iTypeTextOfTheQuestion(String textOfQuestion) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(textOfQuestion);

    }


    @Then("I type {string} as Option one")
    public void iTypeAsOptionOne(String option1) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).sendKeys(option1);

    }

    @Then("I type {string} as Option two")
    public void iTypeAsOptionTwo(String option2) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 2*']")).sendKeys(option2);

    }

    @Then("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]/..")).click();

    }

    @Then("I select Option one as a correct answer")
    public void iSelectOptionOneAsACorrectAnswer() {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-radio-inner-circle']")).click();
    }

    @Then("I click on {string}")
    public void iClickOn(String titleOfQuiz) {
        getDriver().findElement(By.xpath("//*[contains(text(),'" + titleOfQuiz + "')]/../..")).click();

    }

    @Then("I click on Preview button")
    public void iClickOnPreviewButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quiz Senina')]/../../..//*[contains(text(),'Preview')]/..")).click();
    }

    @Then("PREVIEW MODE appears")
    public void previewMODEAppears() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(),'PREVIEW MODE')]/..")));
//Element should be displayed
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'PREVIEW MODE')]/..")).isDisplayed()).isTrue();
    }

    @Then("text of question should be {string}")
    public void textOfQuestionShouldBe(String textOfQuestion) {

        String actualText = getDriver().findElement(By.xpath("//*[contains(text(),'Question 1 / 1')]/../*[contains(text(),'" + textOfQuestion + "')]")).getText();


        assertThat(actualText).containsIgnoringCase(textOfQuestion);

    }

    @Then("^I wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("I close PREVIEW MODE")
    public void iClosePREVIEWMODE() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Close')]/..")).click();

    }

    @Then("I delete {string}")
    public void iDelete(String titleOfQuiz) throws InterruptedException {

        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'" + titleOfQuiz + "')]/../../..//*[contains(text(),'Delete')]/..")).click();
        Thread.sleep(2000);


        getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']/*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);

    }

    @Then("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String titleOfQuiz) {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(titleOfQuiz);

    }
}

