package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import io.restassured.internal.common.assertion.Assertion;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import static support.TestContext.getDriver;

public class quizTotalQuestions {

    @And("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String Test0001) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Test0001);
    }

//    @And("I click Add Question button")
//    public void iClickAddQuestionButton() throws InterruptedException {
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I check Textual Q{int} radio button")
    public void iCheckRadioButton(int num) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+num+"')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("I type Question Q{int} {string}")
    public void iTypeQuestion(int num, String question) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+num+"')]/../../..//*[@formcontrolname='question']")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+num+"')]/../../..//*[@formcontrolname='question']")).sendKeys(question);
        Thread.sleep(2000);
    }

    @And("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

    @And("I created {int} questions")
    public void iCreatedQuestions(int steps) throws InterruptedException {
        int variable = 0;
        for(int i=0; i<steps; i++){
            variable = i+1;
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+variable+"')]/../../..//div[contains(text(), 'Textual')]")).click();
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+variable+"')]/../../..//*[@formcontrolname='question']")).click();
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+variable+"')]/../../..//*[@formcontrolname='question']")).sendKeys("My question " + variable);
            Thread.sleep(2000);

        }
    }

    @And("I slide to maximum {int} points")
    public void iSlideToMaximumPoints(int arg0) {
        WebElement slider=getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//mat-slider"));
        slider.click();
        for (int i=1;i<=arg0;i++){
            slider.sendKeys(Keys.ARROW_RIGHT);
        }
    }

    @Then("I find a quiz {string} in the list")
    public void iFindAQuizInTheList(String quizName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/..")).click();
    }

    @And("I verify score is {int} in {string}")
    public void iVerifyScoreIsIn(int expectedScore, String testName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+testName+"')]/..")).click();
        WebElement scoreElement=getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+testName+"')]/../../..//td[contains(text(),'Maximum')]/following-sibling::td"));
        Thread.sleep(2000);
        String actualScoreText=scoreElement.getText();
        System.out.println("The score is"+actualScoreText);
        int actualScore=Integer.parseInt(actualScoreText);
        Assertions.assertThat(expectedScore).isEqualTo(actualScore);
    }

    @And("I click single-choice button")
    public void iClickSingleChoiceButton() {
        getDriver().findElement(By.xpath("//div[@class=\"mat-radio-label-content\"][contains(text(),'Single')]/../div[@class='mat-radio-container']")).click();
    }

    @And("I find {string} quiz and click {string} button")
    public void iFindQuizAndClickButton(String quizName, String buttonText) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../..")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../..//span[contains(text(),'"+buttonText+"')]/..")).click();

    }

    @And("I click on first quistion")
    public void iClickOnFirstQuistion() {

        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../..")).click();
    }

    @And("I slide to {int} points")
    public void iSlideToPoints(int points) throws InterruptedException {
        WebElement slider=getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//mat-slider"));
        slider.click();
        for (int i=1;i<=points;i++){
            Thread.sleep(100);
            slider.sendKeys(Keys.ARROW_LEFT);
        }

        WebElement currentPointWebElement=getDriver().findElement(By.xpath("//div[contains(text(),'Points per question *')]/following-sibling::h2"));
        int currentPoints=Integer.parseInt(currentPointWebElement.getText());
            while (currentPoints!=points){
                slider.sendKeys(Keys.ARROW_RIGHT);
                Thread.sleep(100);
                currentPointWebElement=getDriver().findElement(By.xpath("//div[contains(text(),'Points per question *')]/following-sibling::h2"));
                currentPoints=Integer.parseInt(currentPointWebElement.getText());

            }
    }
}
