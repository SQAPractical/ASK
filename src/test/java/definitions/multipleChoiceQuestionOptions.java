package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import static support.TestContext.getDriver;

public class multipleChoiceQuestionOptions {
    public WebDriverWait wait = new WebDriverWait(getDriver(), 10);

    @When("I open {string} page")
    public void iOpenPage(String arg0) {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type login email {string}")
    public void iTypeLoginEmail(String email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type login password {string}")
    public void iTypeLoginPassword(String pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(pass);
    }

    @And("I click Sign In button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Sign In')]")).click();
    }

    @And("I click Quizzes menu item")
    public void iClickQuizzesMenuItem() {
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h5[contains(text(), 'Quizzes')]")));
        getDriver().findElement(By.xpath("//h5[contains(text(), 'Quizzes')]")).click();
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() {
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//span[contains(text(), 'Create New Quiz')]")));
        getDriver().findElement(By.xpath("//span[contains(text(), 'Create New Quiz')]")).click();
    }

    @And("I type title of the Quiz {string}")
    public void iTypeTitleOfTheQuiz(String title) {
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@placeholder='Title Of The Quiz *']")));
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
    }


    @And("I click Multiple-Choice radio button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//*[@id = 'mat-radio-4']")).click();
    }

    @And("I type text of Question {string}")
    public void iTypeTextOfQuestion(String question) {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Question *']")).sendKeys(question);
    }

    @And("I type text {string} of Option One answer")
    public void iTypeTextOfOptionAnswer(String answerOne) {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 1*']")).sendKeys(answerOne);
    }

    @And("I type text {string} of Option Two answer")
    public void iTypeTextOfOptionTwoAnswer(String answerTwo) {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 2*']")).sendKeys(answerTwo);
    }

    @And("I check Option One and Option Two check box")
    public void checkOptionOneAndOptionTwoCheckBox() {
        getDriver().findElement(By.xpath("//mat-checkbox/label/div")).click();
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-3']/label/div")).click();
    }

    @And("I click Save button")
    public void clickSaveButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Save')]")).click();
    }

    @Then("Quiz with name {string} is present")
    public void quizWithNameIsPresent(String title) {
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h4[contains(text(), 'List of Quizzes')]")));
        Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(), '" + title + "')]")).isDisplayed());
    }


    @And("Click Add Option button {int} times")
    public void clickAddOptionButtonTimes(int count) {
        getDriver().findElement(By.xpath("//div[1]/mat-form-field/div/div/div/textarea")).sendKeys("1");
        //getDriver().findElement(By.xpath("//div[2]/mat-form-field/div/div/div/textarea")).sendKeys("2");
        for (int i = 1; i <= count; i++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Add Option')]")).click();
            getDriver().findElement(By.xpath("//div[" + i+2 + "]/mat-form-field/div/div/div/textarea")).sendKeys(String.format("Opt.%s", i));
        }
    }
}

