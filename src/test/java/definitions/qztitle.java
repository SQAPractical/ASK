package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class qztitle {
    @And("I type {string}")
    public void iType(String NQuiz) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Of The Quiz')]")).sendKeys(NQuiz);
    }

    @And("I click on Select {string} question type")
    public void iClickOnSelectQuestionType(String arg0) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Textual')]/..")).click();
    }

    @And("I type text {string}")
    public void iTypeText(String Txt) {
        getDriver().findElement(By.xpath ("//textarea[@formcontrolname='question']")).sendKeys(Txt);

    }

    @Then("I see {string}")
    public void iSee(String arg0) {
        getDriver().findElement(By.xpath("http://ask-stage.portnov.com/#/quizzes"));
    }

    @And("I click in Title of the Quiz field")
    public void iClickInTitleOfTheQuizField() {
        getDriver().findElement(By.xpath("//meta[@name='viewport']")).click();
    }

    @And("I click outside Title of the Quiz field")
    public void iClickOutsideTitleOfTheQuizField() {
        getDriver().findElement(By.xpath("//meta[@name='viewport']")).click();
    }

    @Then("Message {string} appears")
    public void messageAppears(String Msg) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'field is required')]")).sendKeys(Msg);
    }


    @Then("Page {string} appears")
    public void pageAppears(String arg0) {
        getDriver().get("http://ask-stage.portnov.com/#/quiz-builder");
    }
}
