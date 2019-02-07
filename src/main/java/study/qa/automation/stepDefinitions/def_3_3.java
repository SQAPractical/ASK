package study.qa.automation.stepDefinitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
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

    @And("^Click Add QuestionOne$")
    public void clickAddQuestionOne() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of questionOne$")
    public void selectTextualTypeOfQuestionOne() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of QuestionOne \"([^\"]*)\"$")
    public void typeTextOfQuestionOne(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add QuestionTwo$")
    public void clickAddQuestionTwo() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of questionTwo$")
    public void selectTextualTypeOfQuestionTwo() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of QuestionTwo \"([^\"]*)\"$")
    public void typeTextOfQuestionTwo(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add QuestionThree$")
    public void clickAddQuestionThree() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of questionThree$")
    public void selectTextualTypeOfQuestionThree() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of QuestionThree \"([^\"]*)\"$")
    public void typeTextOfQuestionThree(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add QuestionFour$")
    public void clickAddQuestionFour() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of questionFour$")
    public void selectTextualTypeOfQuestionFour() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of QuestionFour \"([^\"]*)\"$")
    public void typeTextOfQuestionFour(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Click Add QuestionFive$")
    public void clickAddQuestionFive() throws Throwable {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
        Thread.sleep(1000);
    }

    @And("^Select Textual Type of questionFive$")
    public void selectTextualTypeOfQuestionFive() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of QuestionFive \"([^\"]*)\"$")
    public void typeTextOfQuestionFive(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);

    }

    @And("^Push Save button$")
    public void pushSaveButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Save')]")).click();
        Thread.sleep(1000);
    }


    @Then("^Verify that quiz \"([^\"]*)\" was created$")
    public void verifyThatQuizWasCreated(String arg0) throws Throwable {
        getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'Testing Assignment Aziz')]")).click();
        Thread.sleep(5000);
        System.out.println("Verify that quiz was created");
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
}

