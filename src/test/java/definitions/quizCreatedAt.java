//Created by Almir 10/19/20
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class quizCreatedAt {
    public static String timeStamp;
    public static String quizName;
    public static int quizCounter = 1;
    public static int pointsCounter;
    @And("I click quizzes on left menu")
    public void iClickQuizzesOnLeftMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='Quizzes']/..")).click();
        Thread.sleep(4000);
    }

    @And("I click on Create New Quiz at the bottom of the page")
    public void iClickOnCreateNewQuizAtTheBottomOfThePage() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='Create New Quiz']/..")).click();
        Thread.sleep(2000);
    }

    @And("I type {string} in Title Of The Quiz field")
    public void iTypeInTitleOfTheQuizField(String quizName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizName);
    }

    @And("I click Add Question underneath the Title")
    public void iClickAddQuestionUnderneathTheTitle() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]/../..")).click();
        Thread.sleep(2000);
    }

    @And("I select Question type: Textual")
    public void iSelectQuestionTypeTextual() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+quizCounter+"')]/../../..//*[contains(text(),'Textual')]")).click();
        Thread.sleep(2000);
    }

    @And("^I select Points per question: \"(\\d+)\"$")
    public void iSelectPointsPerQuestion(int points) {
        pointsCounter = pointsCounter + points;
        WebElement slider = getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+quizCounter+"')]/../../..//mat-slider"));
        if (points >= 5) {
            for (int i = 5; i < points; i++) {
                slider.sendKeys(Keys.ARROW_RIGHT);
            }
        }
        else if(points < 5) {
            for (int i = 5; i > points; i--) {
                slider.sendKeys(Keys.ARROW_LEFT);
            }
        }
    }

    @And("I type the question {string} in to Question field")
    public void iTypeTheQuestionInToQuestionField(String question) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+quizCounter+"')]/../../..//textarea[@formcontrolname='question']")).sendKeys(question);
        quizCounter++;
    }

    @And("I note down the current DateTime")
    public void iNoteDownTheCurrentDateTime() {
        String timeStamp = new SimpleDateFormat("MM/dd/yyyy HH:mm").format(Calendar.getInstance().getTime());
        quizCreatedAt.timeStamp = timeStamp;
        System.out.println(timeStamp);
    }

    @And("I click SAVE on the bottom right corner")
    public void iClickSAVEOnTheBottomRightCorner() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I click on created quiz {string} from the Quiz List")
    public void iClickOnCreatedQuizFromTheQuizList(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        quizCreatedAt.quizName = quizName;
        Thread.sleep(2000);
    }

    @Then("Created At: DateTime match with noted down")
    public void createdAtDateTimeMatchWithNotedDown() {
        String createdAt = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../../div//td[text()='Created At:']/following-sibling::td")).getText();
        String createdAtNew = createdAt.substring(0, createdAt.length()-3);
        System.out.println(createdAtNew);
        assertThat(timeStamp).isEqualTo(createdAtNew);
    }


}
