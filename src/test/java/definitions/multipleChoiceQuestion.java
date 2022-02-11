package definitions;
import cucumber.api.java.en.Then;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class multipleChoiceQuestion {
    @And("I select checkbox option {int} as correct answer for question {int}")
    public void iSelectCheckboxOptionAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) {
        Actions action = new Actions(getDriver());
        WebElement we = getDriver().findElement
                (By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']" +
                        "/../../../../..//*[@type='checkbox']"));
        action.click(we).perform();
    }

    @And("I select checkbox Other text area as correct answer for question {int}")

    public void iSelectCheckboxOtherTextAreaAsCorrectAnswerForQuestion(int questionNumber) {
        WebElement we = getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//span[contains(text(),'option')]"));
        Actions action = new Actions(getDriver());
        action.click(we).perform();
    }

    @And("I click {string} on list of quizzes")
    public void iClickOnListOfQuizzes(String quizzTitle) {
        getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'"+quizzTitle+"')]")).click();
    }

    @And("I click {string} button on Quizz {string} table")
    public void iClickButtonOnQuizzTable(String typeOfButton, String titleOfQuiz) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+titleOfQuiz+"')]/../../..//*[contains(text(),'"+typeOfButton+"')]")).click();

    }

    @Then("textfield {string} is present in quiz {string}")
    public void textfieldIsPresentInQuiz(String textField, String titleOfQuiz) throws InterruptedException {
        WebElement we = getDriver().findElement(By.xpath("//*[contains(text(),'"+textField+"')]"));
        assertThat(we.isDisplayed()).isTrue();
        Thread.sleep(2000);
    }
}
