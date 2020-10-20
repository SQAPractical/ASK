package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizMaxScore {
    public static String quizScore;

    @Then("I click {string} menu item")
    public void iClickMenuItem(String item) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+item+"')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(3000);
    }

    @Then("I type title {string} in Quiz name")
    public void iTypeTitleInQuizName(String title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @Then("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(@class,'controls ng-star-inserted')]//span")).click();
//        Thread.sleep(2000);
    }

    @Then("I choose question type")
    public void iChooseQuestionType() throws InterruptedException {
//        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-radio-button[contains(., 'Textual')]")).click();
    }

    @Then("I type question {string} in the question field")
    public void iTypeQuestionInTheQuestionField(String question) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(question);
    }

    @Then("I click Save Quiz button")
    public void iClickSaveQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(3000);
    }

    @Then("I click {string} quiz name")
    public void iClickQuizName(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        Thread.sleep(2000);
    }

    @Then("I check maxScore of quiz {string}")
    public void iCheckMaxScoreOfQuiz(String quizName) {
        String maxScore=getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'For MaxScore purpose')]/../../../div//td[text()='Maximum possible score:']/following-sibling::td")).getText();
        System.out.println("setScore= "+ quizMaxScore.quizScore);
        System.out.println("maxScore= "+maxScore);
        assertThat(quizMaxScore.quizScore).isEqualTo(maxScore);
    }

    @And("I select {string} points per question")
    public void iSelectPointsPerQuestion(String setPoints) {
        quizMaxScore.quizScore = setPoints;
        WebElement slider = getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//mat-slider"));
        WebElement actualPoints = getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//h2"));
        int setPintsInt = Integer.parseInt(setPoints);
        if (setPintsInt <= 10 && setPintsInt > 5) {
            while (Integer.parseInt(actualPoints.getText()) < setPintsInt) {
                slider.sendKeys(Keys.ARROW_RIGHT);
            }
        }
        else if(setPintsInt > 0 && setPintsInt <= 5)
        {
            while (Integer.parseInt(actualPoints.getText()) > setPintsInt) {
                slider.sendKeys(Keys.ARROW_LEFT);
            }
        }
        else
        {
            throw new RuntimeException("Unsupported value of points!");
        }
    }

    @Then("I click {string} button on Quiz panel")
    public void iClickButtonOnQuizPanel(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'For MaxScore purpose')]/../../../div//button//span[contains(text(), '"+buttonName+"')]")).click();
        Thread.sleep(2000);
    }

    @Then("I confirm {string}")
    public void iConfirm(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//ac-modal-confirmation//button//span[contains(text(),'"+buttonName+"')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click question")
    public void iClickQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]")).click();
        Thread.sleep(2000);
    }
}
