package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java8.Th;
import org.assertj.core.api.AbstractBooleanAssert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizTotalQuestions {
    @And("I add {int} question selecting Question type {string} and type text {string} for question")
    public void iAddQuestionSelectingQuestionTypeAndTypeTextForQuestion(int numberOfQuestions, String typeOfQuestion, String questionTitle) throws InterruptedException {
        for(int i=1;i<=numberOfQuestions;i++){
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
            Thread.sleep(500);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//*[contains(text(), '"+typeOfQuestion+"')]")).click();
            Thread.sleep(500);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//textarea[@placeholder='Question *']")).sendKeys(questionTitle);
        }
    }



    @Then("Quiz {string} is present in list with {string} Questions")
    public void quizIsPresentInListWithQuestions(String quizName, String numberOfQuestions) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        String questionsNumber = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'ABC')]/../../..//td[contains(text(),'Total Questions:')]/..")).getText();
        System.out.println(questionsNumber);

        assertThat(questionsNumber.contains(numberOfQuestions)).isTrue();
    }

    @And("I delete created quiz {string}")
    public void iDeleteCreatedQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }


    @Then("Save button should be disable")
    public void saveButtonShouldBeDisable() {
       // getDriver().findElement(By.xpath("//span[contains(text(),'Save')]"));
        WebElement saveButton = getDriver().findElement(By.xpath("//span[contains(text(),'Save')]"));
        assertThat(saveButton.isEnabled()).isFalse();
    }
}
