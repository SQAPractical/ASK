package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java8.Th;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.*;

public class quizTotalQueStepDefs {

    WebDriver driver;

//    @When("I click on Create New Quiz button")
//    public void iClickOnCreateNewQuizButton() {
//        getDriver().findElement(By.xpath("//span[text()='Create New Quiz']")).click();
//
//    }

    @And("I type title {string} of the quiz")
    public void iTypeTitleOfTheQuiz(String title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @And("I click on {string} button")
    public void iClickOnButton(String button) {
        getDriver().findElement(By.xpath("//span[contains(text(),'" + button + "')]")).click();
    }

//    @And("I click on Add Question button")
//    public void iClickOnAddQuestionButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]/..")).click();
//    }

    @Then("I find a quiz with title {string} from the list of quizzes and click on it")
    public void iFindAQuizWithTitleFromTheListOfQuizzesAndClickOnIt(String title) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + title + "')]/../..")).click();
    }

    @And("I verify total number of questions is {int} in the quiz with title {string}")
    public void iVerifyTotalNumberOfQuestionsIsInTheQuizWithTitle(int title, String num) {
        String actualNum = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + title + "')]/../../..//td[contains(text(),'" + num + "')]")).getText();
        assertThat(num).isEqualTo(actualNum);
    }

    @Then("I verify error message {string} appears")
    public void iVerifyErrorMessageAppears(String expectedError) {
        WebElement error = getDriver().findElement(By.xpath("//simple-snack-bar[contains(text(),'Quiz is not completed.')]/.."));
//        getWait().until(ExpectedConditions.visibilityOf(error));
        String actualError = getDriver().findElement(By.xpath("//simple-snack-bar[contains(text(),'Quiz is not completed.')]/..")).getText();
        assertThat(actualError.contains(expectedError));
    }

    @And("I select {string} option for the question {int}")
    public void iSelectOptionForTheQuestion(String option, int num) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + num + ": new empty question')]/../../..//div[contains(text(), '" + option + "')]/..")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + num + ": new empty question')]/../../..//div[contains(text(), '" + option + "')]/..")).click();
    }

    @And("I type {string} in the question {int} text field")
    public void iTypeInTheQuestionTextField(String question, int num) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + num + "')]/../../..//textarea")).sendKeys(question);
    }

    @Then("I add one more question")
    public void iAddOneMoreQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]/..")).click();
    }

    @And("I add {int} {string} questions starting with question {int} {string}")
    public void iAddQuestionsStartingWithQuestion(int totalNum, String option, int num, String question) throws InterruptedException {
        for (num = 1; num <= totalNum; num++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]/..")).click();
            Thread.sleep(500);
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + num + "')]/../../..//div[contains(text(), '" + option + "')]/..")).click();
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + num + "')]/../../..//textarea")).sendKeys(question);
        }
    }

    @And("I verify total number of questions is {string} in the quiz with title {string}")
    public void iVerifyTotalNumberOfQuestionsIsInTheQuizWithTitle(String expectedNum, String title) {
       String actualNum = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ title +"')]/../../..//mat-panel-description[contains(text(),'"+ expectedNum +"')]")).getText();
       assertThat(actualNum.equals(expectedNum));
    }

//    @Then("I click on {string} menu item")
//    public void iClickOnMenuItem(String item) {
//        getDriver().findElement(By.xpath("//h5[text()='Quizzes']/..")).click();
//    }

    @And("I delete a quiz with title {string}")
    public void iDeleteAQuizWithTitle(String title) throws InterruptedException {
        WebElement deleteButton = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ title +"')]/../../..//span[text()='Delete']/.."));
//        getWait().until(ExpectedConditions.visibilityOf(deleteButton));
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ title +"')]/../../..//span[text()='Delete']/..")).click();
        WebElement confirmation = getDriver().findElement(By.xpath("//h1[contains(text(),'Confirmation')]"));
//        getWait().until(ExpectedConditions.visibilityOf(confirmation));
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']//span[@class='mat-button-wrapper'][contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }
}
