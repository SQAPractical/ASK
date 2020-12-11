package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import static support.TestContext.getDriver;

public class multipleChoiceQuestionOptions {
    public WebDriverWait wait = new WebDriverWait(getDriver(), 10);

    @And("I type login email {string}")
    public void iTypeLoginEmail(String email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type login password {string}")
    public void iTypeLoginPassword(String pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(pass);
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

    @And("I click Multiple-Choice radio button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//*[@id = 'mat-radio-4']")).click();
    }

    @And("I type text of Question {string}")
    public void iTypeTextOfQuestion(String question) {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Question *']")).sendKeys(question);
    }

    @And("I type text for Option One answer {string}")
    public void iTypeTextForOptionAnswer(String answerOne) {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 1*']")).sendKeys(answerOne);
    }

    @And("I type text for Option Two answer {string}")
    public void iTypeTextForOptionTwoAnswer(String answerTwo) {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 2*']")).sendKeys(answerTwo);
    }

    @And("I check Option One and Option Two check box")
    public void checkOptionOneAndOptionTwoCheckBox() {
        getDriver().findElement(By.xpath("//mat-checkbox/label/div")).click();
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-3']/label/div")).click();
    }

    @And("I click Add Option button {int} times and type {string}")
    public void iClickAddOptionButtonTimesAndType(int count, String answer) {
        for(int i = 3; i <= count+2; i++){
            getDriver().findElement(By.xpath("//*[contains(text(), 'Add Option')]")).click();
            getDriver().findElement(By.xpath("//*[@placeholder='Option " + i + "*']")).click();
            getDriver().findElement(By.xpath("//*[@placeholder='Option " + i + "*']")).sendKeys(String.format("answer %s", i));
        }
    }

    @Then("Quiz with name {string} is present")
    public void quizWithNameIsPresent(String title) {
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h4[contains(text(), 'List of Quizzes')]")));
        Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(), '" + title + "')]")).isDisplayed());
    }

    @Then("Quiz with name {string} is not present")
    public void quizWithNameIsNotPresent(String title) {
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h4[contains(text(), 'List of Quizzes')]")));
        Assert.assertFalse(getDriver().findElement(By.xpath("//*[contains(text(), '" + title + "')]")).isDisplayed());
    }

    @And("I click Assignments menu item")
    public void iClickAssignmentsMenuItem() {
        getDriver().findElement(By.xpath("//h5[contains(text(), 'Assignments')]")).click();
    }

    @And("I click Create New Assignment button")
    public void iClickCreateNewAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Create New Assignment')]")).click();
    }

    @And("I choose Quiz to Assign {string}")
    public void iChooseQuizToAssign(String quizTitle) {

    }

    @And("I click {string} name")
    public void iClickName(String name) {
        getDriver().findElement(By.xpath("//span[contains(text(), '" + name + "')]")).click();
    }

    @And("I click Give Assignment button")
    public void iClickGiveAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Give Assignment')]")).click();
    }
}


