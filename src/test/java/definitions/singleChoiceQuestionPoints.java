package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionPoints {
    private final String quizzesButtonXpath = "//a[contains(@href,'quizzes')]";
    private final String createNewQuizButtonXpath = "//span[contains(text(),'Create New Quiz')]/..";
    private final String titleXpath = "//input[contains(@placeholder,'Title Of The Quiz *')]";
    private final String addQuestionXpath = "//form//button//span//*[text()='add_circle']";
    private final String questionEditorXpath = "//span//*[contains(text(), 'Q1')]";
    private final String questionTypeXpath = "//mat-radio-button//label//*[contains(text(), 'Single-Choice')]";
    private final String questionXpath = "//*[contains(@placeholder, 'Question *')]";
    private final String option1Xpath = "//*[contains(@placeholder, 'Option 1*')]";
    private final String option2Xpath = "//*[contains(@placeholder, 'Option 2*')]";
    private final String selectedOptionXpath = "(//mat-radio-button)[last()]";
    private final String sliderXpath = "//mat-slider[@aria-valuemax='10']";
    private final String saveButtonXpath = "//button/span[contains(text(),'Save')]";
    private final String createdQuizXpath = "(//div[@class='quizzes']//span//mat-panel-title[contains(text(),'Try Test')])[last()]";
    private final String createdQuizInfoXpath = createdQuizXpath + "/ancestor::mat-expansion-panel";
    private final String createdScoreXpath = createdQuizInfoXpath + "//td[contains(text(), 'Maximum possible score')]/following-sibling::td";

    private void waitElement(String path) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(path)));
    }

    @And("I click on Quizzes button")
    public void iClickOnQuizzesButton() {
        getDriver().findElement(By.xpath(quizzesButtonXpath)).click();
    }

    @When("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() {
        waitElement(createNewQuizButtonXpath);
        getDriver().findElement(By.xpath(createNewQuizButtonXpath)).click();
    }

    @When("I type {string} title on Create New Quiz page")
    public void iTypeTitleOnCreateNewQuizPage(String title) {
        waitElement(titleXpath);
        getDriver().findElement(By.xpath(titleXpath)).sendKeys(title);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        waitElement(addQuestionXpath);
        getDriver().findElement(By.xpath(addQuestionXpath)).click();
    }

    @When("I click on Single-Choice radio button")
    public void iClickOnSingleChoiceRadioButton() {
        getDriver().findElement(By.xpath(questionTypeXpath)).click();
    }

    @Then("question editor shows")
    public void questionEditorShows() {
        waitElement(questionEditorXpath);
        assertThat(getDriver().findElement(By.xpath(questionEditorXpath)).isDisplayed()).isTrue();
    }

    @Then("question options shows")
    public void questionOptionsShows() {
        waitElement(questionXpath);
        assertThat(getDriver().findElement(By.xpath(questionXpath)).isDisplayed()).isTrue();
    }

    @When("I type {string} question on Create New Quiz page")
    public void iTypeQuestionOnCreateNewQuizPage(String question) {
        getDriver().findElement(By.xpath(questionXpath)).sendKeys(question);
    }

    @And("I type {int} first option")
    public void iTypeFirstOption(int option) {
        getDriver().findElement(By.xpath(option1Xpath)).sendKeys(Integer.toString(option));
    }

    @And("I type {int} second option")
    public void iTypeSecondOption(int option) {
        getDriver().findElement(By.xpath(option2Xpath)).sendKeys(Integer.toString(option));
    }

    @And("I click on second option radio button")
    public void iClickOnSecondOptionRadioButton() {
        getDriver().findElement(By.xpath(selectedOptionXpath)).click();
    }

    @And("I set slider {int}")
    public void iSetSlider(int value) {
        WebElement slider = getDriver().findElement(By.xpath(sliderXpath));

        if (value > 5)
            for (int i = 5; i < value ; i++)
                slider.sendKeys(Keys.ARROW_RIGHT);
        if (value < 5)
            for (int i = 5; i > value ; i--)
                slider.sendKeys(Keys.ARROW_LEFT);
    }

    @And("I click on Save button on Create New Quiz page")
    public void iClickOnSaveButtonOnCreateNewQuizPage() {
        getDriver().findElement(By.xpath(saveButtonXpath)).click();
    }

    @And("{string} quiz created")
    public void quizCreated(String title) {
        waitElement(createdQuizXpath);
        WebElement element = getDriver().findElement(By.xpath(createdQuizXpath));
        assertThat(element.getText()).contains(title);
    }

    @When("I click on created quiz")
    public void iClickOnCreatedQuiz() {
        getDriver().findElement(By.xpath(createdQuizXpath)).click();
    }

    @And("{string} score set on Quizzes page")
    public void scoreSetOnQuizzesPage(String score) {
        WebElement element = getDriver().findElement(By.xpath(createdScoreXpath));
        assertThat(element.getText()).isEqualTo(score);
    }
}
