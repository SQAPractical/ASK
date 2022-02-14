package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionOptions {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type email {string} on login page")
    public void iTypeEmailOnLoginPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type password {string} on login page")
    public void iTypePasswordOnLoginPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(password);
    }

    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
//        String xPath = "//*[contains(text(), 'Log Out')]";
//        WebDriverWait wait = new WebDriverWait(getDriver(),5);
//        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(xPath)));
//        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @And("I click on {string} menu item")
    public void iClickOnMenuItem(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
        Thread.sleep(3000);
    }

    @And("I click {string} button")
    public void iClickButton(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+buttonName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I type title of quiz {string}")
    public void iTypeTitleOfQuiz(String quizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder= 'Title Of The Quiz *']")).sendKeys(quizTitle);
        Thread.sleep(2000);
    }

    @And("I click Add question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(2000);
    }

    @And("I select {string} question type for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I type text {string} for question {int}")
    public void iTypeTextForQuestion(String textOfQuestion, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Question *']")).sendKeys(textOfQuestion);
        Thread.sleep(2000);
    }

    @And("I type text {string} for option {int} for question {int}")
    public void iTypeTextForOptionForQuestion(String textOfOption, int optionNumber, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']")).sendKeys(textOfOption);
    }

    @And("I select option {int} as correct answer for question {int}")
    public void iSelectOptionAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']/../../../../..//*[@class='mat-radio-container']")).click();
        Thread.sleep(2000);
    }

    @Then("Quiz {string} is present in list of quizzes")
    public void quizIsPresentInListOfQuizzes(String quizName) {
        String listOfQuizzes = getDriver().findElement(By.xpath("//div[@class='quizzes']")).getText();
        System.out.println(listOfQuizzes);

        assertThat(listOfQuizzes.contains(quizName)).isTrue();
    }
}
