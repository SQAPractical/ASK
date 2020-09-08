package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
//import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class textualQuestionShowstopper {

    @And("I click on Quizzes")
    public void iClickOnQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @When("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls']//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(2000);
    }

    @And("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String title) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
        Thread.sleep(2000);


    }

    @And("I click Add Question")
    public void iClickAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']/..//*[contains(.,'Add Question')]")).click();
        Thread.sleep(2000);
    }









    @And("I click on Save")
    public void iClickOnSave() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }


    @When("I click on quiz {string}")
    public void iClickOnQuiz(String quiz) throws InterruptedException {

        getDriver().findElement(By.xpath("//*[contains(text(),'"+quiz+"')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quiz+"')]/../../..//*[contains(text(), 'Preview')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Close")
    public void iClickClose() {
        getDriver().findElement(By.xpath("//*[@class='ng-star-inserted']//span[contains(text(),'Close')]")).click();

    }

    @And("I delete quiz {string}")
    public void iDeleteQuiz(String quiz) {

        getDriver().findElement(By.xpath("//*[contains(text(), '"+quiz+"')]/../../..//*[contains(text(), 'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]")).click();

    }
    @When("I click Textual for {string}")
    public void iClickTextualFor(String qnum) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+qnum+"')]/../../..//*[contains(text(),'Textual')]")).click();


        Thread.sleep(2000);

    }

    @And("I type question {string} for first question")
    public void iTypeQuestionForFirstQuestion(String question) {

        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Question *']")).sendKeys(question);

    }


    @And("I type question {string} for second question")
    public void iTypeQuestionForSecondQuestion(String question) {

        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Question *']")).sendKeys(question);

    }



    @Then("Text {string} appears for second question")
    public void textAppearsForSecondQuestion(String text) {

        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();

    }




    @And("I click on Is Show-Stopper question for first question")
    public void iClickOnIsShowStopperQuestionForFirstQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//*[contains(text(),'Show-Stopper')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Is Show-Stopper question for second question")
    public void iClickOnIsShowStopperQuestionForSecondQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2')]/../../..//*[contains(text(),'Show-Stopper')]")).click();
        Thread.sleep(2000);
    }
}
