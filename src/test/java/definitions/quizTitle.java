package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizTitle {
    @And("I click Quizzes")
    public void iClickQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click create new Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type text {string} in the Title of Quiz")
    public void iTypeTextInTheTitleOfQuiz(String text) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I select question type textual")
    public void iSelectQuestionTypeTextual() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Textual')]/../..")).click();
    }

    @And("I type text in question")
    public void iTypeTextInQuestion() {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys("test question");
    }

    @And("I click on save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();

    }

    @Then("I check if the quiz {string} is created")
    public void iCheckIfTheQuizIsCreated(String quizName) throws InterruptedException {
        Thread.sleep(3000);
        String ListOfQuizzes = getDriver().findElement(By.xpath("//div[@class='quizzes']")).getText();

        assertThat(ListOfQuizzes.contains(quizName)).isTrue();
    }

    @And("I click on Title of the quiz")
    public void iClickOnTitleOfTheQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).click();
        //Thread.sleep(3000);

    }

    @And("I click outside the Ttile of the Quiz field")
    public void iClickOutsideTheTtileOfTheQuizField() {
        getDriver().findElement(By.xpath("//ac-quiz-builder-page[@class='ng-star-inserted']")).isDisplayed();
        getDriver().findElement(By.xpath("//ac-quiz-builder-page[@class='ng-star-inserted']")).click();

    }

    @Then("error message {string} should appear")
    public void errorMessageShouldAppear(String text) throws InterruptedException {
        Thread.sleep(3000);
        assertThat(getDriver().findElement(By.xpath("//mat-error[contains(text(),'This field is required')]")).isDisplayed()).isTrue();

    }

    @Then("I check if the quiz is created without the leading and trailing spaces")
    public void iCheckIfTheQuizIsCreatedWithoutTheLeadingAndTrailingSpaces() {
        //mat-panel-title[contains(text(),'123.')]
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-3393']//..//*[contains(text(),'123.')]")).isDisplayed();



    }


}
