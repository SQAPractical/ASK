package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.*;

public class QuizTotalQueStepDefs {

    @Then("I click on {string} menu item")
    public void iClickOnMenuItem(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[text()='"+ menuItem +"']/../..")).click();
    }

    @When("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//span[text()='Create New Quiz']")).click();

    }

    @And("I type title {string} of the quiz")
    public void iTypeTitleOfTheQuiz(String title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @And("I click on {string} button")
    public void iClickOnButton(String button) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+ button +"')]")).click();
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        Thread.sleep(1000);
    }

    @Then("I find a quiz with title {string} from the list of quizzes and click on it")
    public void iFindAQuizWithTitleFromTheListOfQuizzesAndClickOnIt(String title) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ title +"')]/../..")).click();
    }

    @And("I verify total number of questions is {int} in the quiz with title {string}")
    public void iVerifyTotalNumberOfQuestionsIsInTheQuizWithTitle(int title, String num) {
        String actualNum = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ title +"')]/../../..//td[contains(text(),'"+ num +"')]")).getText();
        assertThat(num).isEqualTo(actualNum);
    }

    @And("I select {string} option for the question number {string}")
    public void iSelectOptionForTheQuestionNumber(String option, String num) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+ num +"')]/../../..//div[contains(text(),'"+ option +"')]/..")).click();
    }

    @And("I type  {string} in the question {string} text field")
    public void iTypeInTheQuestionTextField(String question, String num) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+ num +"')]/../../..//textarea[@formcontrolname='question']")).sendKeys(question);
    }

    @And("I verify total number of questions is {string} in the quiz with title {string}")
    public void iVerifyTotalNumberOfQuestionsIsInTheQuizWithTitle(String num, String title) {
        String actualNum = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ title +"')]/../../..//td[contains(text(),'"+ num +"')]")).getText();
        assertThat(num).isEqualTo(actualNum);
    }

    @And("I delete a quiz with title {string}")
    public void iDeleteAQuizWithTitle(String title) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ title +"')]/../../..//span[text()='Delete']/..")).click();
    }

    @Then("I verify error message {string} appears")
    public void iVerifyErrorMessageAppears(String expectedError) {
        String actualError = getDriver().findElement(By.xpath("//simple-snack-bar[contains(text(),'Quiz is not completed.')]")).getText();
        assertThat(actualError).contains(expectedError);
    }
}
