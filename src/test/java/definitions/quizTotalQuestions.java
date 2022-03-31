package definitions;

import cucumber.api.java.en.Then;
import org.apache.xpath.functions.FuncFalse;
import org.assertj.core.api.AbstractBooleanAssert;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizTotalQuestions {
    @Then("I repeat the steps to add question button")
    public void iRepeatTheStepsToAddQuestionButton() throws InterruptedException {
        for (int questionNumber = 2; questionNumber <=50; questionNumber++) {
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
            Thread.sleep(1000);
            String questionType = "Textual";
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
            String textOfQuestion = "What is QA";
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Question *']")).sendKeys(textOfQuestion);
        }
    }

    @Then("I repeat the steps to add questions button")
    public void iRepeatTheStepsToAddQuestionsButton() throws InterruptedException {
        for (int questionNumber = 2; questionNumber <=51; questionNumber++) {
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
            Thread.sleep(1000);
            String questionType = "Textual";
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
            String textOfQuestion = "What is QA";
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Question *']")).sendKeys(textOfQuestion);
        }
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String errorMessage) throws InterruptedException {
        Thread.sleep(2000);
        String xpathMessage = "//*[contains(text(),'"+ errorMessage +"')]";
        assertThat(getDriver().findElement(By.xpath(xpathMessage)).isDisplayed()).isTrue();
        /*abstractbooleanassert<?> foundmessage = assertThat(getDriver().findElement(By.xpath(xpathMessage)).isDisplayed()).isTrue();
         *if (foundMessage is false);
        {
            String quizTitle = "BBB";
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizTitle + "')]")).click();
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizTitle + "')]/../../..//*[contains(text(), 'Delete')]")).click();
            getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]")).click();
            Thread.sleep(2000);
        }*/
    }
}
