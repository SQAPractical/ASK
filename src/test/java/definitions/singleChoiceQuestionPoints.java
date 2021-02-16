package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionPoints {
    private void waitElement(String path) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 15);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(path)));
    }

    @And("I click on Quizzes button")
    public void iClickOnQuizzesButton() {
        String path = "//a[contains(@href,'quizzes')]";
        getDriver().findElement(By.xpath(path)).click();
    }

    @When("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() {
        String path = "//span[contains(text(),'Create New Quiz')]/..";
        waitElement(path);
        getDriver().findElement(By.xpath(path)).click();
    }

    @When("I type {string} title on Create New Quiz page")
    public void iTypeTitleOnCreateNewQuizPage(String title) {
        String path = "//input[contains(@placeholder,'Title Of The Quiz *')]";
        waitElement(path);
        getDriver().findElement(By.xpath(path)).sendKeys(title);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        String path = "//form//button//span//*[text()='add_circle']";
        waitElement(path);
        getDriver().findElement(By.xpath(path)).click();
    }

    @When("I click on Single-Choice radio button")
    public void iClickOnSingleChoiceRadioButton() {
        String path = "//mat-radio-button//label//*[contains(text(), 'Single-Choice')]";
        getDriver().findElement(By.xpath(path)).click();
    }

    @Then("question editor shows")
    public void questionEditorShows() {
        String path = "//span//*[contains(text(), 'Q1')]";
        waitElement(path);
        assertThat(getDriver().findElement(By.xpath(path)).isDisplayed()).isTrue();
    }

    @Then("question options shows")
    public void questionOptionsShows() {
        String path = "//*[contains(@placeholder, 'Question *')]";
        waitElement(path);
        assertThat(getDriver().findElement(By.xpath(path)).isDisplayed()).isTrue();
    }

    @When("I type {string} question on Create New Quiz page")
    public void iTypeQuestionOnCreateNewQuizPage(String question) {
        String path = "//*[contains(@placeholder, 'Question *')]";
        getDriver().findElement(By.xpath(path)).sendKeys(question);
    }

    @And("I type {int} first option")
    public void iTypeFirstOption(int option) {
        String path = "//*[contains(@placeholder, 'Option 1*')]";
        getDriver().findElement(By.xpath(path)).sendKeys(Integer.toString(option));
    }

    @And("I type {int} second option")
    public void iTypeSecondOption(int option) {
        String path = "//*[contains(@placeholder, 'Option 2*')]";
        getDriver().findElement(By.xpath(path)).sendKeys(Integer.toString(option));
    }

    @And("I click on second option radio button")
    public void iClickOnSecondOptionRadioButton() {
        String selectedOptionXpath = "(//mat-radio-button)[last()]";
        getDriver().findElement(By.xpath(selectedOptionXpath)).click();
    }

    @And("I set slider {int}")
    public void iSetSlider(int value) {
        int maxValue = 10;
        int minValue = 1;
        if (value < minValue || value > maxValue)
            return;

        String sliderXpath = "//mat-slider[@aria-valuemax='10']";
        WebElement slider = getDriver().findElement(By.xpath(sliderXpath));

        int avgValue = (maxValue - minValue + 1) / 2;
        if (value > avgValue)
            for (int i = avgValue; i < value ; i++)
                slider.sendKeys(Keys.ARROW_RIGHT);
        if (value < avgValue)
            for (int i = avgValue; i > value ; i--)
                slider.sendKeys(Keys.ARROW_LEFT);
    }

    @And("I click on Save button on Create New Quiz page")
    public void iClickOnSaveButtonOnCreateNewQuizPage() {
        String saveButtonXpath = "//button/span[contains(text(),'Save')]";
        getDriver().findElement(By.xpath(saveButtonXpath)).click();
    }

    @And("{string} quiz created")
    public void quizCreated(String title) {
        String path = String.format("(//div[@class='quizzes']//span//mat-panel-title[contains(text(),'%1$s')])", title);
        waitElement(path);
        WebElement element = getDriver().findElement(By.xpath(path));
        assertThat(element.getText()).contains(title);
    }

    @When("I click on created quiz {string}")
    public void iClickOnCreatedQuiz(String title) {
        String path = String.format("(//div[@class='quizzes']//span//mat-panel-title[contains(text(),'%1$s')])", title);
        getDriver().findElement(By.xpath(path)).click();
    }

    @And("{string} score set on {string} quiz")
    public void scoreSetOnQuizzesPage(String score, String title) {
        String path = String.format("(//div[@class='quizzes']//span//mat-panel-title[contains(text(),'%1$s')])/ancestor::mat-expansion-panel//td[contains(text(), 'Maximum possible score')]/following-sibling::td", title);
        WebElement element = getDriver().findElement(By.xpath(path));
        assertThat(element.getText()).isEqualTo(score);
    }

    @When("I remove created quizzes {string}")
    public void iRemoveCreatedQuizzes(String title) throws InterruptedException {
        String createdQuizButtonXpath = String.format("(//div[@class='quizzes']//span//mat-panel-title[contains(text(),'%1$s')])[last()]", title);
        waitElement(createdQuizButtonXpath);

        String quizXpath = String.format("(//mat-expansion-panel-header/span[contains(.,'%1$s')])[last()]", title);
        String del = String.format("%1$s/ancestor::mat-expansion-panel//button//*[contains(.,'Delete')]/..", quizXpath);
        String acceptDel= "//button[@aria-label='Close dialog']//span[contains(.,'Delete')]";

        while (getDriver().findElements(By.xpath(quizXpath)).size() > 0) {
            getDriver().findElement(By.xpath(quizXpath)).click();
            Thread.sleep(2000);

            getDriver().findElement(By.xpath(del)).click();
            Thread.sleep(2000);

            getDriver().findElement(By.xpath(acceptDel)).click();
            Thread.sleep(2000);
        }
    }
}
