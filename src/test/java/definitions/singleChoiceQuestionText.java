package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.byLessThan;
import static support.TestContext.getDriver;

public class singleChoiceQuestionText {
    @And("I click on Quizzes menu button")
    public void iClickOnQuizzesMenuButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }


    @And("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }

    @And("Element with text {string} is displayed on new quiz form")
    public void elementWithTextIsDisplayedOnNewQuizForm(String element) {
        String elementOnNewQuizForm = "//*[@formcontrolname = 'name']";
        WebDriverWait wait = new WebDriverWait(getDriver(),5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnNewQuizForm)));
        assertThat(getDriver().findElement(By.xpath(elementOnNewQuizForm)).isDisplayed()).isTrue();
    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//*[@formcontrolname = 'name']")).sendKeys(quizTitle);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
    }

    @And("Element with text {string} is displayed on quiz form")
    public void elementWithTextIsDisplayedOnQuizForm(String element) {
        String elementOnTheForm = "//*[@class='left wide']";
        WebDriverWait wait = new WebDriverWait(getDriver(),5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnTheForm)));
        assertThat(getDriver().findElement(By.xpath(elementOnTheForm)).isDisplayed()).isTrue();
    }

    @And("I click on Single-Choice button")
    public void iClickOnSingleChoiceButton() {
        getDriver().findElement(By.xpath("//label[@for='mat-radio-3-input']//div[@class='mat-radio-label-content']")).click();
    }

    @And("Element with text {string} is displayed on single choice question form")
    public void elementWithTextIsDisplayedOnSingleChoiceQuestionForm(String element) {
        String elementSingleChoiceQuestion = "//*[@formcontrolname='question']";
        WebDriverWait wait = new WebDriverWait(getDriver(),5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementSingleChoiceQuestion)));
        assertThat(getDriver().findElement(By.xpath(elementSingleChoiceQuestion)).isDisplayed()).isTrue();

    }

    @And("I type question {string}")
    public void iTypeQuestion(String singleChoiceQuestion) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(singleChoiceQuestion);
    }


    @And("I type firstOption  {string}")
    public void iTypeFirstOption(String firstOption) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).sendKeys(firstOption);
    }

    @And("I type secondOption {string}")
    public void iTypeSecondOption(String secondOption) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 2*']")).sendKeys(secondOption);
    }


    @And("I click on firstOption button as correct answer")
    public void iClickOnFirstOptionButtonAsCorrectAnswer() {
        getDriver().findElement(By.xpath("//*[@id='mat-radio-6']")).click();
    }

    @And("I click on Save button")
    public void iClickOnSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @Then("Message {string} displayed on single choice question field")
    public void messageDisplayedOnSingleChoiceQuestionField(String element) {
        String elementOnSingleChoiceQuestionField = "//*[contains(text(),'This field is required')]";
        WebDriverWait wait = new WebDriverWait(getDriver(),5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnSingleChoiceQuestionField)));
        assertThat(getDriver().findElement(By.xpath(elementOnSingleChoiceQuestionField)).isDisplayed()).isTrue();
    }

    @Then("Element with text {string} is displayed on the top")
    public void elementWithTextIsDisplayedOnTheTop(String element) {
        String elementOnTheTop = "//*[contains(text(),'List of Quizzes')]";
        WebDriverWait wait = new WebDriverWait(getDriver(),5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnTheTop)));
        assertThat(getDriver().findElement(By.xpath(elementOnTheTop)).isDisplayed()).isTrue();
    }

    @Then("Pop-up message {string} appears")
    public void popUpMessageAppears(String element) {
        String elementPopUpMessage = "//*[contains(text(),'Quiz is not completed.')]";
        WebDriverWait wait = new WebDriverWait(getDriver(),5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementPopUpMessage)));
        assertThat(getDriver().findElement(By.xpath(elementPopUpMessage)).isDisplayed()).isTrue();
    }


    @Then("Element with text {string} is not displayed on the top  because of error")
    public void elementWithTextIsNotDisplayedOnTheTopBecauseOfError(String element) {
        String elementNotVisible = "//*[contains(text(),'Quiz is not completed.')]";
        WebDriverWait wait = new WebDriverWait(getDriver(),5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementNotVisible)));
        assertThat(getDriver().findElement(By.xpath(elementNotVisible)).isDisplayed()).isFalse();
    }
}
