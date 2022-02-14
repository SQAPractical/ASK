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
    public void iClickOn(String quizName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
    }

    @Then("Quiz {string} total question numbers = {int}")
    public void quizTotalQuestionNumbers(String quizName, int questionNumber) {
        String questionNumbers = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'TestQA')]/../../..//td[contains(text(),'Total Questions')]/following-sibling::td")).getText();
        System.out.println(questionNumbers);




    }

    @And("I add {int} questions to quiz")
    public void iAddQuestionsToQuiz(int questionNumber) {
        getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]/span[1]"));

    }

}