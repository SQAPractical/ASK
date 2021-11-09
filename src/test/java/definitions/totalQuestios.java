package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class totalQuestios {
    @When("I navigate to Login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com");

    }

    @And("I click add question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
    }


    @And("I type text {string} for question")
    public void iTypeTextForQuestion(String questionText, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + questionNumber + "')]/../../..//*[@placeholder='Question *']")).sendKeys(questionText);
    }

    @And("I add {int} questions to Quiz")
    public void iAddQuestionsToQuiz(int questionNumber) throws InterruptedException {
        int i = 0;
        for (i =1; i<=questionNumber; i++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
            String questionType = "//mat-panel-title[contains(text(),'Q" + i + "')]/../../..//*[contains(text(), 'Textual')]";
            Thread.sleep(2000);
            getDriver().findElement(By.xpath(questionType)).click();
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + i + "')]/../../..//*[@placeholder='Question *']")).sendKeys("Text" +i);
            Thread.sleep(2000);
            WebElement element = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q"+i+"')]"));
            assertThat(element.isDisplayed()).isTrue();
        }
    }


    @And("I delete Quiz {string}")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//*[contains(text(),'Delete')]")).click();
    }

    @And("Click on quiz {string}")
    public void clickOnQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        Thread.sleep(2000);
    }


    @Then("error message {string} appears")
    public void errorMessageAppears(String errorMessage) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+errorMessage+"')]"));
    }
}



