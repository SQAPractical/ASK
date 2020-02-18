package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizCreate {


    @Then("^I wait for element with xpath \"([^\"]*)\" to be present$")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @Then("^I wait for Quizzes to be present$")
    public void iWaitForQuizzesToBePresent() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(),'Quizzes')]")));
    }

    @Then("I click Quizzes")
    public void iClickQuizzes() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @Then("I click Create new quiz button")
    public void iClickCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]/../../button")).click();
    }

    @And("I click Title of the quiz")
    public void iClickTitleOfTheQuiz() {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).click();
    }

    @Then("I wait for Title of the quiz to be present")
    public void iWaitForTitleOfTheQuizToBePresent() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@placeholder='Title Of The Quiz *']")));
    }

    @And("I type {string} into title field")
    public void iTypeIntoTitleField(String title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @And("I click Add question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']/button")).click();
    }

    @And("I click Textual radio-button")
    public void iClickTextualRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]/../div[@class='mat-radio-container']")).click();
    }

    @And("I type {string} into Question* field")
    public void iTypeIntoQuestionField(String question) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question);
    }

    @And("I click Question*")
    public void iClickQuestion() {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).click();
    }


    @And("I wait for Question* for be present")
    public void iWaitForQuestionForBePresent() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@placeholder='Question *']")));
    }

    @Then("I wait for List of Quizzes is present")
    public void iWaitForListOfQuizzesIsPresent() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(),'List of Quizzes')]")));
    }

    @And("I click on {string} quiz")
    public void iClickOnQuiz(String quiz) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quiz+"')]/../../../*[1]")).click();
    }

    @And("I click on active Delete button")
    public void iClickOnActiveDeleteButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Title-555')]/../../../div[@style='visibility: visible;']//span[contains(text(),'Delete')]/../../button[@color='warn']")).click();
    }

    @And("I wait for confirmation delete dialog")
    public void iWaitForConfirmationDeleteDialog() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h1[@class='mat-dialog-title']")));
    }

    @And("I click on confirmation delete button")
    public void iClickOnConfirmationDeleteButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']")).click();
    }

    @Then("I verify there is no quiz with title {string}")
    public void iVerifyThereIsNoQuizWithTitle(String quiz) {
        assertThat(getDriver().findElements(By.xpath("//*[contains(text(),'"+quiz+"')]/../../../*[1]"))).hasSize(0);
    }

    @And("I log out")
    public void iLogOut() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
    }
}

