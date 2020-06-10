package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quiz_title {
    @And("I click Quizzes menu item")
    public void iClickQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I type Title of the quiz {string}")
    public void iTypeQuizTitle(String pass) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(pass);
        Thread.sleep(1000);
    }

    @And("I click Add Question")
    public void iClickAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-icon material-icons']/../..")).click();
        Thread.sleep(1000);
    }

    @And("I select Textual question type")
    public void iSelectTextualQuestionType() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]/..")).click();
        Thread.sleep(1000);
    }

    @And("I type question text {string}")
    public void iTypeQuestionText(String pass) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(pass);
        Thread.sleep(1000);
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Save')]/..")).click();
        Thread.sleep(2000);
    }
    @Then("quiz {string} appears")
    public void quizAppears(String expectedText) throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).isDisplayed()).isTrue();
        Thread.sleep(2000);
    }

    @Then("I delete {string} quiz")
    public void iDeleteQuiz(String expectedText) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).click();
        Thread.sleep(3000);
        //getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]/../../..//button[@class='mat-raised-button mat-warn']")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]/../../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']")).click();
        Thread.sleep(2000);
    }

    @And("I clear Title of the quiz")
    public void iClearTitleOfTheQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.CONTROL + "a");
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.BACK_SPACE);
        Thread.sleep(1000);
    }

    @Then("Error message {string} appears under Title of the Quiz field")
    public void errorMessageAppearsUnderTitleOfTheQuizField(String text) throws InterruptedException {
        String quizTitleError = "//*[@placeholder='Title Of The Quiz *']/../../../..//*[contains(text(),'"+text+"')]";
        assertThat(getDriver().findElement(By.xpath(quizTitleError)).isDisplayed()).isTrue();
        Thread.sleep(2000);
    }

    @Then("Error message {string} appears")
    public void errorMessageRedAppears(String text) throws InterruptedException {
        String errorMessage = "//snack-bar-container[@role='alert']//*[contains(text(), '"+text+"')]";
        assertThat(getDriver().findElement(By.xpath(errorMessage)).isDisplayed()).isTrue();
        Thread.sleep(2000);
    }
    //@Then("I edit {string} quiz")
    //public void iEditQuiz(String expectedText) throws InterruptedException {
        //getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).click();
        //Thread.sleep(3000);
        //getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]/../../..//*[contains(text(),'Edit')]")).click();
        //need to finish
    //}

    @And("I click on Edit quiz {string}")
    public void iClickOnEditQuiz(String NameQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+NameQuiz+"')]")).click();
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'"+NameQuiz+"')]/../../..//*[contains(text(),'Edit')]")).click();
    }

    //@Then("I compare actual and expected {string} title")
    //public void iCompareActualAndExpectedTitle(String expectedQuizTitle) {
        //String actualQuizTitle = "";
        //assertThat(getDriver().findElement(By.xpath(actualQuizTitle)).equals(expectedQuizTitle);
    //}
}