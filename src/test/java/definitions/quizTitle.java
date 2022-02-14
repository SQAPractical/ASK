package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizTitle {
    @And("I Click {string} on the left menu")
    public void iClickOnTheLeftMenu(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'" + menuItem + "')]")).click();
        Thread.sleep(3000);
    }

    @And("I Click the {string} button at the bottom of the page")
    public void iClickTheButtonAtTheBottomOfThePage(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'" + buttonName + "')]")).click();
        Thread.sleep(2000);
    }

    @And("I Enter quiz title {string} in the title of the quiz")
    public void iEnterQuizTitleInTheTitleOfTheQuiz(String quizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder= 'Title Of The Quiz *']")).sendKeys(quizTitle);
        Thread.sleep(2000);
    }

    @And("I Click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(2000);
    }


    @And("I Select question type {string} for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q" + questionNumber + "')]/../../..//*[contains(text(), '" + questionType + "')]")).click();
        Thread.sleep(2000);
    }

    @And("I type question {string} for question {int}")
    public void iTypeQuestionForQuestion(String textOfQuestion, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q" + questionNumber + "')]/../../..//*[@placeholder='Question *']")).sendKeys(textOfQuestion);
        Thread.sleep(2000);

    }

    @And("I Click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);

    }

    @Then("quiz {string} is present in List of Quizzes")
    public void quizIsPresentInListOfQuizzes(String quizName) {
        String listOfQuizzes = getDriver().findElement(By.xpath("//div[@class='quizzes']")).getText();
        System.out.println(listOfQuizzes);

        assertThat(listOfQuizzes.contains(quizName)).isTrue();

    }


    @And("I delete the quiz title in the title of the quiz")
    public void iDeleteTheQuizTitleInTheTitleOfTheQuiz() throws InterruptedException {
        WebElement element = getDriver().findElement(By.xpath("//input[@placeholder= 'Title Of The Quiz *']"));
//        element.clear();
        element.sendKeys(Keys.COMMAND,"a");
        element.sendKeys(Keys.CONTROL,"a");
        element.sendKeys(Keys.DELETE);
        element.sendKeys(Keys.BACK_SPACE);

//        getDriver().findElement(By.tagName("body")).click();
        Thread.sleep(2000);

    }


}