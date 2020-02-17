package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.concurrent.TimeUnit;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class TextualQuestionEdit {
    @Given("I open login page")
    public void iOpenUrl() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }


    @And("I enter {string} as login")
    public void iEnterAsLogin(String login) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(login);
    }

    @And("I enter {string} as password")
    public void iEnterAsPassword(String password) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);
    }

    @And("I click SignIn button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(),'Quizzes')]")));
        }

    @And("I go to Quizzes section")
    public void iGoToQuizzesSection() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I click CreateNewQuiz button")
    public void iClickCreateNewQuizButton() {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//div[@class='quizzes']")));
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I enter {string} as a quiz title")
    public void iEnterAsAQuizTitle(String quizztitle) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizztitle);
    }

    @And("I click AddQuestion button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I select Question type as textual")
    public void iSelectQuestionTypeAsTextual() throws Throwable {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(),'Textual')]")));
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]/..")).click();
    }

    @And("I enter {string} as a text of the question")
    public void iEnterAsATextOfTheQuestion(String questiontext) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@formcontrolname='question']")));
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(questiontext);
    }

    @And("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
    }

    @And("I change text of the question to {string}")
    public void iChangeTextOfTheQuestionTo(String replaceQ) {
        getDriver().findElement(By.xpath("//mat-panel-title/..")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).clear();
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(replaceQ);
    }

    @And("I click on Preview button")
    public void iClickOnPreviewButton() {
        getDriver().findElement(By.xpath("//*//mat-panel-title[contains(text(),'TestQuiz')]/../../..//*[contains(text(),'Preview')]")).click();
    }


    @And("I click on {string}")
    public void iClickOn(String quizName) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*//mat-panel-title[contains(text(),'"+quizName+"')]")));
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]")).click();
       }


    @Then("I verify that question title has been changed to {string}")
    public void iVerifyThatQuestionTitleHasBeenChangedTo(String compare) {
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'"+compare+"')]"));
        assertThat(element.isDisplayed()).isTrue();
        getDriver().findElement(By.xpath("//button//*[contains(text(),'Close')]")).click();
      }


    @And("I clean up after myself - deleting created quiz {string}")
    public void iCleanUpAfterMyselfDeletingCreatedQuiz(String qdelete) throws Throwable {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(),'"+qdelete+"')]")));
        getDriver().findElement(By.xpath("//*[contains(text(),'"+qdelete+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//mat-dialog-container//*[contains(text(),'Delete')]")).click();
        Thread.sleep(3000);
    }

    @And("I add {string} character at the end of existing question")
    public void iAddCharacterAtTheEndOfExistingQuestion(String qmark) {
        getDriver().findElement(By.xpath("//mat-panel-title/..")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(qmark);
    }

    @Then("I verify that question title now contains {string}")
    public void iVerifyThatQuestionTitleNowContains(String qtitle) {
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'"+qtitle+"')]"));
        assertThat(element.isDisplayed()).isTrue();
        getDriver().findElement(By.xpath("//button//*[contains(text(),'Close')]")).click();
    }


    @And("I copy and paste question title twice")
    public void iCopyAndPasteQuestionTitleTwice() {
        getDriver().findElement(By.xpath("//mat-panel-title/..")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(Keys.chord(Keys.CONTROL,"a"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(Keys.chord(Keys.CONTROL,"c"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(Keys.chord(Keys.CONTROL,"v"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(Keys.chord(Keys.CONTROL,"v"));
    }

    @And("I erase question title")
    public void iEraseQuestionTitle() {
        getDriver().findElement(By.xpath("//mat-panel-title/..")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(Keys.chord(Keys.CONTROL,"a"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(Keys.chord(Keys.CONTROL,"x"));
    }



    @Then("I verify that error message appears {string} ...")
    public void iVerifyThatErrorMessageAppears(String error) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//simple-snack-bar/..//*[contains(text(),'"+error+"')]")));
        WebElement element = getDriver().findElement(By.xpath("//simple-snack-bar/..//*[contains(text(),'"+error+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I discard changes and delete created quiz {string}")
    public void iDiscardChangesAndDeleteCreatedQuiz(String qnameu) throws Throwable {
        getDriver().findElement(By.xpath("//div[@class='controls']//*[contains(text(),'Back To Quizzes List')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Discard')]")).click();
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*//mat-panel-title[contains(text(),'"+qnameu+"')]")));
        getDriver().findElement(By.xpath("//*//mat-panel-title[contains(text(),'"+qnameu+"')]")).click();
        getDriver().findElement(By.xpath("//*//mat-panel-title[contains(text(),'"+qnameu+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//mat-dialog-container//*[contains(text(),'Delete')]")).click();
        Thread.sleep(3000);
    }

    @And("I click Edit button in {string}")
    public void iClickEditButtonIn(String edit) {
        getDriver().findElement(By.xpath("//*//mat-panel-title[contains(text(),'"+edit+"')]/../../..//*[contains(text(),'Edit')]")).click();
    }
}
