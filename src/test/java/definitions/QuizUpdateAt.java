package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.Augmenter;
import ru.yandex.qatools.ashot.AShot;
import ru.yandex.qatools.ashot.Screenshot;
import ru.yandex.qatools.ashot.shooting.ShootingStrategies;
import javax.imageio.ImageIO;
import java.io.File;
import java.io.IOException;
import java.sql.Driver;
import static java.sql.Driver.*;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import javax.imageio.ImageIO;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import ru.yandex.qatools.ashot.AShot;
import ru.yandex.qatools.ashot.Screenshot;
import ru.yandex.qatools.ashot.shooting.ShootingStrategies;

public class QuizUpdateAt {
    @Then("I Click on quiz button, on the left menu")
    public void iClickOnButtonOnTheLeftMenu() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

//    @Then("^I wait for (\\d+) sec$")
//    public void iWaitForSec(int sec) throws Exception {
//        Thread.sleep(sec * 1000);
//    }

    @Then("I click on sad quiz")
    public void iClickOnSadQuiz() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'sad quiz 1111')]")).click();
    }

    @Then("I click on edit button")
    public void iClickOnEditButton() {
        getDriver().findElement(By.xpath("//div[@class='mat-expansion-panel-content ng-trigger ng-trigger-bodyExpansion mat-expanded']//a//button[@class='mat-raised-button mat-primary']")).click();
    }


    @Then("I click on Q one: something")
    public void iClickOnQChooseA() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-expansion-panel[1]//mat-expansion-panel-header[1]")).click();

    }

    @Then("I click on Add option")
    public void iClickOnAddOption() {
        getDriver().findElement(By.xpath("//mat-expansion-panel[1]//div[1]//div[1]//ac-question-body-form[1]//div[1]//div[2]//div[1]//div[3]//button[1]//span[1]")).click();


    }


    @When("I type \"([^\"]*)\" on name of options")
    public void iTypeTextOnNameOfOptions(String text) {
        for (int n = 1; n <= 2; n++) {
            getDriver().findElement(By.xpath("//textarea[@placeholder='Option " + n + "*']")).sendKeys(text);
        }
    }

//    @Then("I click on Save button")
//    public void iClickOnSaveButton() {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]|.//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
//
//    }


    @Then("updated at field should be displayed")
    public void updatedAtFieldShouldBeDisplayed() throws InterruptedException {
        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//div[@class='mat-expansion-panel-content ng-trigger ng-trigger-bodyExpansion mat-expanded']//table")).isDisplayed()).isTrue();
    }


    @Then("I click on add question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls shift ng-star-inserted']//span[1]|.//div[@class='controls ng-star-inserted']//span[1]")).click();

    }

    @Then("I click on textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//mat-radio-button[1]//label[1]//div[1]//div[1]")).click();
    }

    @Then("I type \"([^\"]*)\" on Question name text area")
    public void iTypeAOnQuestionNameTextArea(String text) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Question *']|.//textarea[@placeholder='Question *']")).sendKeys(text);
    }
    //need to figure out how to make xpath for Q6+

    @Then("I type \"([^\"]*)\" on title of the quiz text field")
    public void iTypeOnTitleOfTheQuizTextField(String text) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
    }

    @Then("I click on create new quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(2500);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @When("I type title of quiz {string}")
    public void iTypeTitleOfQuizTitle(String title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @And("I type \"([^\"]*)\" on title of quiz")
    public void iTypeOnTitleOfQuiz(String text) throws InterruptedException {
        Thread.sleep(2500);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
    }

    @And("I click on Single-Choice radio button")
    public void iClickOnSingleChoiceRadioButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-radio-button[2]//label[1]//div[1]//div[1]")).click();
    }

    @And("I click on Option one radio button")
    public void iClickOnOptionButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-radio-button[@class='mat-radio-button mat-accent']//div[@class='mat-radio-outer-circle']")).click();
    }

    @And("I click on quiz that i have just created")
    public void iClickOnQuizThatIHaveJustCreated() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'something')]")).click();
    }

    @And("I take screenshot")
    public void iTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + new Date() + ".png"));
    }
    @And("I click on Option two radio button")
    public void iClickOnOptionButtonTwo() throws InterruptedException {
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//mat-radio-button[@class='mat-radio-button mat-accent']//div[@class='mat-radio-outer-circle']")).click();
    }

    @Then("I click on quiz that i have just edited")
    public void iClickOnQuizThatIHaveJustEdited() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'something')]")).click();
    }

    @Then("I delete quiz that I created")
    public void iDeleteQuizThatICreated() {
        getDriver().findElement(By.xpath("//div[@class='mat-expansion-panel-content ng-trigger ng-trigger-bodyExpansion mat-expanded']//button[@class='mat-raised-button mat-warn']")).click();

    }

    @Then("I confirm that")
    public void iConfirmThat() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']//span[@class='mat-button-wrapper'][contains(text(),'Delete')]")).click();
    }
}











