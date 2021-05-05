package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizTotalQuestions {
    @And("I click on Quizzes button")
    public void iClickOnQuizzesButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Quizzes')]/..")).click();
    }

    @And("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Create New Quiz')]/..")).click();
    }

    @And("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String quizName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizName);
    }

    @And("I click on Add Question")
    public void iClickOnAddQuestion() throws InterruptedException {
        Thread.sleep(500);
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),  'add_circle')]/../..")).click();
    }

    @And("I click on Add Question button for {int} times")
    public void iClickOnAddQuestionButtonForTimes(int numberOfTimes) throws InterruptedException {
        int i = 0;
        while (i < numberOfTimes) {
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),  'add_circle')]/../..")).click();
            Thread.sleep(500);
            i++;
        }
    }

    @And("I click on radio buttons {int} times in {int} quizzes")
    public void iClickOnRadioButtonsTimesInQuizzes(int numberOfTimes, int o) {
        for (int j = 1; j <= numberOfTimes; j++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+j+"')]/..")).click();
            getDriver().findElement(By.xpath("(//*[contains(text(), 'Textual')]/.)[" + j + "]")).click();
        }
    }

    @And("I type {string} in different question fields {int} times")
    public void iTypeInDifferentQuestionFieldsTimes(String Quiz, int numberOfQuizzes) {
        for (int j = 1; j <= numberOfQuizzes; j++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+j+"')]/..")).click();
            getDriver().findElement(By.xpath("(//textarea[@placeholder='Question *'])["+ j +"]")).sendKeys(Quiz);
        }
    }

    @And("I click on save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]/..")).click();
        Thread.sleep(7000);
    }


    @Then("I'm navigated to the {string}")
    public void iMNavigatedToThe(String arg0) throws InterruptedException {
        Thread.sleep(2000);
        String Msg = "List of Quizzes";
        String xPath = "//*[contains(text(),'"+Msg+"')]";
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }

    @Then("I'm NOT navigated to the {string}")
    public void iMNOTNavigatedToThe(String arg0) throws InterruptedException {
        Thread.sleep(2000);
        String Msg = "List of Quizzes";
        String xPath = "//*[contains(text(),'"+Msg+"')]";
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isFalse();
    }
}