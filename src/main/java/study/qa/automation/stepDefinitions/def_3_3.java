package study.qa.automation.stepDefinitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import static study.qa.automation.utils.TestContext.getDriver;

public class def_3_3 {
    @When("^Navigate to login page$")
    public void navigateToLoginPage() {
        getDriver().get("http://local.school.portnov.com:4520/#/login");
    }

    @And("^Type email \"([^\"]*)\"$")
    public void typeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("^Type Password \"([^\"]*)\"$")
    public void typePassword(String pass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(pass);
    }

    @And("^Push Sign In button$")
    public void pushSignInButton() throws Throwable {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(3000);
    }

    @And("^Click on Quizzes on left navigational panel$")
    public void clickOnQuizzesOnLeftNavigationalPanel() throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);                 //2000 milliseconds is two second.
    }

    @And("^Push Create new Quiz button$")
    public void pushCreateNewQuizButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("^Type Title of the Quiz \"([^\"]*)\"$")
    public void typeTitleOfTheQuiz(String title) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(title);
        Thread.sleep(2000);
    }

    @And("^Click Add Question$")
    public void clickAddQuestion() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question$")
    public void selectSingleChoiceTypeOfQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Question \"([^\"]*)\"$")
    public void typeTextOfQuestion(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add Question$")
    public void clickAddQuestion() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question$")
    public void selectSingleChoiceTypeOfQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Question \"([^\"]*)\"$")
    public void typeTextOfQuestion(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add Question$")
    public void clickAddQuestion() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question$")
    public void selectSingleChoiceTypeOfQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Question \"([^\"]*)\"$")
    public void typeTextOfQuestion(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add Question$")
    public void clickAddQuestion() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question$")
    public void selectSingleChoiceTypeOfQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Question \"([^\"]*)\"$")
    public void typeTextOfQuestion(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add Question$")
    public void clickAddQuestion() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of question$")
    public void selectSingleChoiceTypeOfQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Question \"([^\"]*)\"$")
    public void typeTextOfQuestion(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);

    }

    @And("^Push Save button$")
    public void pushSaveButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Save')]")).click();
        Thread.sleep(1000);

    }

    @And("^Delete quiz with name \"([^\"]*)\"$")
    public void deleteQuizWithName(String quiz) throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);

        int quizzes = getDriver().findElements(By.xpath("//*[contains(text(), 'Testing Assignment Aziz')]")).size();
        for (int i = 0; i < quizzes; i++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Testing Assignment Aziz')]")).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("//*[contains(text(), 'Testing Assignment Aziz')]/../../..//*[contains(text(), 'Delete')]")).click();
            Thread.sleep(1000);

            getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../../..//*[contains(text(), 'Delete')]")).click();
            Thread.sleep(5000);

        }
    }

    @And("^Click Logout on left navigational panel$")
    public void clickLogoutOnLeftNavigationalPanel() throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
    }

