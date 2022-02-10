package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionShowStorper {
    @And("I click on {string} button")
    public void iClickOnButton(String buttonName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I type email {string} on Login page")
    public void iTypeEmailOnLoginPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type password {string} on Login page")
    public void iTypePasswordOnLoginPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder= 'Password *']")).sendKeys(password);
    }

    @And("I click {string} button for question {int}")
    public void iClickButtonForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(), 'Single-Choice')]")).click();
        Thread.sleep(3000);
    }

    @And("I type text {string} for option {int}")
    public void iTypeTextForOption(String textOption, int optionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+optionNumber+"*']")).sendKeys(textOption);
        Thread.sleep(3000);
    }


    @And("I select {string} as type for question {int}")
    public void iSelectAsTypeForQuestion(String showStopper, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Show-Stopper')]")).click();
        Thread.sleep(3000);
    }


    @And("I click on {string} in List of Quizzes")
    public void iClickOnInListOfQuizzes(String nameOfQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'TEST1234')]")).click();
        Thread.sleep(2000);
    }


    @Then("{string} is present in Question {int}")
    public void isPresentInQuestion(String nameOption, int questionNumber) {
        assertThat(getDriver().findElement(By.xpath("//p[contains(text(), 'Show-Stopper')]")).isDisplayed()).isTrue();


    }


    @And("I click on {string} button in {string}")
    public void iClickOnButtonIn(String buttonName, String quizName) {
        getDriver().findElement(By.xpath("//*[contains(text(),‘Q1’)]//../../../../../../..//*[contains(text(),‘Preview’)]")).click();
    }


    @And("I click on {string} button on {string} assignment in List of Assignments")
    public void iClickOnButtonOnAssignmentInListOfAssignments(String assignmentbutton, String assignmentName) {
        getDriver().findElement(By.xpath("")).click();
    }
}
