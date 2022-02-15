package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizTotalQuestions {


    @And("I click on {string}")
    public void iClickOn(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        Thread.sleep(1000);
    }


    @Then("Quiz {string} total question numbers {string}")
    public void quizTotalQuestionNumbers(String quizName, String questionNumber) throws InterruptedException {
        Thread.sleep(2000);
        String actualQuestionNumber = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../..//td[contains(text(),'Total Questions')]/following-sibling::td")).getText();
        System.out.println("Total questions number = " + actualQuestionNumber);

        assertThat(actualQuestionNumber.equals(questionNumber)).isTrue();
    }

    @And("I add {int} questions to quiz")
    public void iAddQuestionsToQuiz(int questionNumber) throws InterruptedException {
        int i = 0;
       for (i=1; i<= questionNumber; i++ ) {
           getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
           Thread.sleep(2000);
           getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//*[contains(text(), 'Textual')]")).click();
           getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//*[@placeholder='Question *']")).sendKeys("ABC");
       }

    }


}