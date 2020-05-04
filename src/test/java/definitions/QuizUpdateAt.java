package definitions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.commons.io.FileUtils;
import org.assertj.core.api.AbstractStringAssert;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.util.Date;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

        public class QuizUpdateAt {
            @Then("I Click on quiz button, on the left menu")
            public void iClickOnButtonOnTheLeftMenu() {
                getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
            }

            @Then("^I wait for (\\d+) sec$")
            public void iWaitForSec(int sec) throws Exception {
                Thread.sleep(sec * 1000);
            }

            @Then("I click on sad quiz")
            public void iClickOnSadQuiz() {
                getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'sad quiz 1111')]")).click();
            }

            @Then("I click on edit button")
            public void iClickOnEditButton() {
                getDriver().findElement(By.xpath("//div[@class='mat-expansion-panel-content ng-trigger ng-trigger-bodyExpansion mat-expanded']//a//button[@class='mat-raised-button mat-primary']")).click();
            }


            @Then("I click on Q: Choose A")
            public void iClickOnQChooseA() {
                getDriver().findElement(By.xpath("//mat-expansion-panel[1]//mat-expansion-panel-header[1]")).click();

            }

            @Then("I click on Add option")
            public void iClickOnAddOption() {
                getDriver().findElement(By.xpath("//mat-expansion-panel[1]//div[1]//div[1]//ac-question-body-form[1]//div[1]//div[2]//div[1]//div[3]//button[1]//span[1]")).click();


            }


            @When("I type \"([^\"]*)\" on appeared text area")
            public void iTypeTextOnAppearedTextArea(String text) {
                for (int n=1; n<=2; n++) {
                    getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+n+"*']")).sendKeys(text);
                }

                @Then("I click on Save button")
                public void iClickOnSaveButton() {
                    getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();

                }


                @Then("updated at field should be displayed")
                public void updatedAtFieldShouldBeDisplayed() {
                    assertThat(getDriver().findElement(By.xpath("//div[@class='mat-expansion-panel-content ng-trigger ng-trigger-bodyExpansion mat-expanded']//table")).isDisplayed()).isTrue();
                }

                @Then("I take screenshot")
                public void iTakeScreenshot() throws Exception {
                    TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
                    File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
                    FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + new Date() + ".png"));
                }

                @Then("I click on add question button")
                public void iClickOnAddQuestionButton() {
                    getDriver().findElement(By.xpath("//div[@class='controls shift ng-star-inserted']//span[1]")).click();
                }

                @Then("I click on textual radio button")
                public void iClickOnTextualRadioButton() {
                    getDriver().findElement(By.xpath("//*[contains(text(),'Q5')]/../../..//*[@class='mat-radio-outer-circle']")).click();
                }

                @Then("I type \"([^\"]*)\" on Question name text area")
                public void iTypeAOnQuestionNameTextArea(String text) {
                    getDriver().findElement(By.xpath("//*[contains(text(),'Q5')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
                }

                @Then("I type \"([^\"]*)\" on title of the quiz text field")
                public void iTypeOnTitleOfTheQuizTextField(String text) {
                    getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
                }
            }



