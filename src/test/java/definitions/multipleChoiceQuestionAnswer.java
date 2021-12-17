package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class multipleChoiceQuestionAnswer {
    @And("I select option {int} as correct answer for Multiple-Choice question {int}")
    public void iSelectOptionIntAsCorrectAnswerForMultipleChoiceQuestionInt(int optionNumber, int questionNumber) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']/../../../../..//div[@class='mat-checkbox-frame']")).click();
    }

    @And("I add {int} questions to quiz")
    public void iAddQuestionsToQuiz(int questionsNumber) throws InterruptedException {
        for (int i = 1; i <= questionsNumber; i++) {
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("//span[contains(.,'Add Question')]")).click();
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//*[contains(text(),'Textual')]/..")).click();
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//textarea[@formcontrolname='question']")).sendKeys("text");
        }
    }
}
