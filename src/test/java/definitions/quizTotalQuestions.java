package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizTotalQuestions<i> {
    @Then("I click Quizzes button")
    public void iClickQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);

    }

//    @And("I click on Create New Quiz")
//    public void iClickOnCreateNewQuiz() throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
//        Thread.sleep(2000);
//
//    }

    @And("I type {string} on  Title of the Quiz")
    public void iTypeOnTitleOfTheQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizTitle);
    }

    @Then("I create {string} questions")
    public void iCreateQuestions(String num) throws InterruptedException {
        int numQuestion = Integer.parseInt(num);
        for (int i = 1; i <= numQuestion; i++) {
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + i + "')]/../../..//mat-radio-button[contains(., 'Textual')]")).click();
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + i + "')]/../../..//textarea")).sendKeys("Question");
            Thread.sleep(2000);
            if (i < numQuestion) {
                getDriver().findElement(By.xpath("//div[contains(@class,'controls ng-star-inserted shift')]//span")).click();
            }
        }
    }

//    @And("I click Add Question button")
//    public void iClickAddQuestionButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//div[contains(@class,'controls ng-star-inserted')]//span")).click();
//        Thread.sleep(2000);
//
//    }

//    @And("I click save button")
//    public void iClickSaveButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
//        Thread.sleep(3000);
//
//    }

    @Then("I check TotalQuestion of quiz {string}")
    public void iCheckTotalQuestionOfQuiz(String quizName) throws InterruptedException {
        String totalQuestions = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizName + "')]/../../..//div//td[text() = 'Total Questions:']")).getText();
        String numQuestion = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizName + "')]/../../..//div//td[text() = '5']")).getText();
        Thread.sleep(2000);
        assertThat(numQuestion).isEqualTo("5");
    }

    @Then("I check totalQuestion of quiz {string}")
    public void iChecktotalQuestionOfQuiz(String quizName) throws InterruptedException {
        String totalQuestions = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizName + "')]/../../..//div//td[text() = 'Total Questions:']")).getText();
        String numQuestion = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizName + "')]/../../..//div//td[text() = '50']")).getText();
        Thread.sleep(2000);
        assertThat(numQuestion).isEqualTo("50");
    }

    @Then("I click {string} button on quiz {string}")
    public void iClickButtonOnQuiz(String delete, String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizName + "')]/../../..//span[text() = '" + delete + "']")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//ac-modal-confirmation//button//span[contains(text(),'" + delete + "')]")).click();
    }
}
