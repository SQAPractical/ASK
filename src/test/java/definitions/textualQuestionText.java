package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class textualQuestionText {
    @And("I click {string} button")
    public void iClickButton(String Quizzes) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='Quizzes']")).click();
        Thread.sleep( 2000);
    }
    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(1000);
    }



    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String Titleofthequiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Titleofthequiz);
    }

    @And("I click Add Question")
    public void iClickAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
    }


    @And("I click Textual radio button")
    public void iClickTextualRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();
    }

    @And("type question {string}")
    public void typeQuestion(String question) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question);
    }

    @And("click Is {string} question? radio button")
    public void clickIsQuestionRadioButton(String showstopper) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'\"Show-Stopper\"')]")).click();
        Thread.sleep(2000);
    }

    @And("click save button")
    public void clickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }


    @Then("text {string} appears")
    public void textAppears(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }
}
