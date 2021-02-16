package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import static org.testng.Assert.assertEquals;
import static support.TestContext.getDriver;

public class quizUpdatedAt {
    @Given("I navigate to staging webpage")
    public void iNavigateToStagingWebpage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @When("I login with teacher credentials")
    public void iLoginWithTeacherCredentials() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys("teacher1@gmail.com");
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys("12345Abc");
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @And("I navigate to Quiz page")
    public void iNavigateToQuizPage() {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//a/div/div/h5[contains(text(),'Quizzes')]")));
        getDriver().findElement(By.xpath("//a/div/div/h5[contains(text(),'Quizzes')]")).click();
    }

    @And("I Create new quiz")
    public void iCreateNewQuiz() {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//a/button/span[contains(text(),'Create New Quiz')]")));
        getDriver().findElement(By.xpath("//a/button/span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I Create Title for quiz {string}")
    public void iCreateTitleForQuiz(String quizTitle) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//input[@formcontrolname='name']")));
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizTitle);
    }

    @And("I add question to the quiz")
    public void iAddQuestionToTheQuiz() {
        getDriver().findElement(By.xpath("//button/span/mat-icon[contains(text(),'add_circle')]")).click();
    }

    @And("I select textual type of question")
    public void iSelectTextualTypeOfQuestion() {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[contains(text(),'Textual')]/..//input")));
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]")).click();
    }

    @And("I add text {string} to the question")
    public void iAddTextToTheQuestion(String quizText) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//textarea[@formcontrolname='question']")));
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).click();
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(quizText);
    }

    @And("I save quiz")
    public void iSaveQuiz() {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Save')]")).click();
    }

    @And("I find {string} in list of quizzes")
    public void iFindInListOfQuizzes(String quizTitle) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h4[contains(text(),'List of Quizzes')]")).click();
        getDriver().findElement(By.xpath("//mat-expansion-panel-header/span/mat-panel-title[contains(text(),'"+quizTitle+"')]")).click();
    }

    @Then("Time on Updated At for {string} matches Created At")
    public void timeOnUpdatedAtForMatchesCreatedAt(String quizTitle) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/table[1]")).click();
        Thread.sleep(2000);
        String createdAt = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[4]/td[2]")).getText();
        String updatedAt = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[4]/td[2]")).getText();
        Assert.assertEquals(createdAt, updatedAt);
    }

    @When("I click on edit {string}")
    public void iClickOnEdit(String quizTitle) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/div[1]/a/button")).click();
    }

    @And("I modify text of Question 1")
    public void iModifyTextOfQuestion() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-expansion-panel[@hidetoggle='false']")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).click();
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys("Question 1");
    }

    @Then("Time on Updated At for {string} matches current time")
    public void timeOnUpdatedAtForMatchesCurrentTime(String quizTitle) throws InterruptedException {
        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        Date date = new Date();
        String date1 = dateFormat.format(date);
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/table[1]")).click();
        Thread.sleep(2000);
        String updatedAt = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[5]/td[2]")).getText();
        Assert.assertEquals(date1, updatedAt);
    }

    @Then("Time on Updated At for {string} do not match current time")
    public void timeOnUpdatedAtForDoNotMatchCurrentTime(String quizTitle) throws InterruptedException {
        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        Date date = new Date();
        String date1 = dateFormat.format(date);
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/table[1]")).click();
        Thread.sleep(2000);
        String updatedAt = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[5]/td[2]")).getText();
        Assert.assertNotEquals(date1, updatedAt);
    }
}
