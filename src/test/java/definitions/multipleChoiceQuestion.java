package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;
import cucumber.api.java.en.And;
import cucumber.api.java8.En;

public class multipleChoiceQuestion {
    // ***************************************************************************
    //  Enter First Question for Newly Created Quiz
    // ***************************************************************************
    @And("I add first {string} question saying {string}")
    public void iAddFirstQuestionSaying(String questionType, String questionText) throws InterruptedException {
        String xTXT = "//div[contains(text(),'Textual')]";
        String xSC = "//div[contains(text(),'Single-Choice')]";
        String xMC = "//div[contains(text(),'Multiple-Choice')]";
        String xField;

        // For this question, pick the question type
        switch (questionType) {
            case "Textual":
                xField = xTXT;
                break;
            case "Single-Choice":
                xField = xSC;
                break;
            case "Multiple-Choice":
                xField = xMC;
                break;
            default:
                throw new IllegalStateException("This question type is invalid: " + questionType);
        }
        // The first question is created
        getDriver().findElement(By.xpath(xField)).click();
        Thread.sleep(2000);                // Give browser time to render question / options
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(questionText);
    }

    // ***************************************************************************
    //  For Multiple-Choice questions indicate the correct answer
    // ***************************************************************************
    @And("I select option {int} as the correct answer")
    public void iSelectOptionAsTheCorrectAnswer(int correctAnswer) {
        String xField;
        switch (correctAnswer) {
            case 1:
                xField = "//ac-question-body-form//div[1]/mat-checkbox[1]/label[1]/div[1]";
                getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).click();
                break;
            case 2:
                xField = "//ac-question-body-form//div[2]/mat-checkbox[1]/label[1]/div[1]";
                break;
            default:
                throw new IllegalStateException("This option number is invalid: " + correctAnswer);
        }
        getDriver().findElement(By.xpath(xField)).click();
    }
}
