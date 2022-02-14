package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class TextualQuestionText {
    @When("I navigate to login page as a teacher")
    public void iNavigateToLoginPageAsATeacher() { getDriver().get("http://ask-stage.portnov.com/#/login");

    }

    @And("I type email {string} on page")
    public void iTypeEmailOnPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type password {string} on page")
    public void iTypePasswordOnPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(password);
    }

//    @And("I click on Sign In button")
//    public void iClickOnSignInButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I click {string} menu item")
    public void iClickMenuItem(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
        Thread.sleep(2000);
    }


    @And("I click on {string} butto")
    public void iClickOnButto(String butto) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+butto+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I typ title of quiz {string}")
    public void iTypTitleOfQuiz(String quizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder= 'Title Of The Quiz *']")).sendKeys(quizTitle);
        Thread.sleep(2000);
    }

    @And("I click add question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(2000);
    }

    @And("I select {string} question typ for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I typ text {string} for question {int}")
    public void iTypTextForQuestion(String textOfQuestion, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Question *']")).sendKeys(textOfQuestion);
        Thread.sleep(2000);
    }

    @Then("question {string} is present in line of Question {int}")
    public void questionIsPresentInLineOfQuestion(String textOfQuestion, int questionNumber) {
        String lineOfQuestion = getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Question *']")).getText();
              System.out.println(lineOfQuestion);
        assertThat(lineOfQuestion.contains(textOfQuestion)).isTrue();
    }
}
