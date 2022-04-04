package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.sourceforge.htmlunit.corejs.javascript.ArrowFunction;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import static support.TestContext.getDriver;

public class StepdefsQuestionPoints {

    @Given("I am logged in with email {string} and password {string}")
    public void iAmLoggedInWithHisEmailAndPassword(String email, String password) throws InterruptedException {
        String regURl = "http://ask-stage.portnov.com/#/login";
        getDriver().get(regURl);
        WebElement em = getDriver().findElement(By.xpath("//input[@placeholder='Email *']"));
        em.sendKeys(email);
        WebElement pw = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        pw.sendKeys(password);
        WebElement signBtn = getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]"));
        signBtn.click();
        Thread.sleep(1000);
    }

    @When("I have created a quiz with a single Textual question")
    public void iHaveCreatedAQuizWithASingleTextualQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Create New Quiz')]")).click();
        getDriver().findElement(By.xpath("//input[@placeholder = 'Title Of The Quiz *']")).sendKeys("Test assigning points");
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[text()[contains(.,'Textual')]]")).click();
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys("Q1");
    }

    @And("I move the slider to assign {int} points to the question {int}")
    public void iMoveTheSliderToAsSignPointsToTheQuestion(int points, int questionNumber) throws InterruptedException {

        if(points > 5) {
            int diff = points - 5;
            System.out.println("POINTS > 5, SLIDER WILL MOVE: "+diff+" PLACES");
            for (int i = 0; i < diff; i++) {
                WebElement slider = getDriver().findElement(By.xpath("//mat-expansion-panel["+questionNumber+"]//mat-slider"));
//                String sliderString = String.valueOf(slider);
//                System.out.println("STRING OF SLIDER: "+sliderString);
                WebDriverWait wait = new WebDriverWait(getDriver(),2);
                wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//mat-expansion-panel["+questionNumber+"]//mat-slider")));
                slider.sendKeys(Keys.ARROW_RIGHT);
//                Thread.sleep(1000);
//            System.out.println("MOVING SLIDER RIGHT BY 1");
                String pointsSlider = getDriver().findElement(By.xpath("//h2")).getText();
                String pointsCard = getDriver().findElement(By.xpath("//mat-panel-description")).getText();
                Assert.assertTrue(pointsCard.contains(pointsSlider));
                System.out.println("POINTS IN SLIDER:" + pointsSlider + " POINTS IN CARD: " + pointsCard);
            }
        }
        else {
            System.out.println("POINTS < 5");
            int diff = 5 - points;
            for (int i = 0; i < diff; i++) {
//                Thread.sleep(1000);
                WebElement slider = getDriver().findElement(By.xpath("//mat-expansion-panel["+questionNumber+"]//mat-slider"));
                slider.sendKeys(Keys.ARROW_LEFT);
//                Thread.sleep(1000);
                String pointsSlider = getDriver().findElement(By.xpath("//h2")).getText();
                String pointsCard = getDriver().findElement(By.xpath("//mat-panel-description")).getText();
                Assert.assertTrue(pointsCard.contains(pointsSlider));
                System.out.println("POINTS IN SLIDER:" + pointsSlider + " POINTS IN CARD: " + pointsCard);
            }
        }
    }

    @And("I select quiz {string} to verify the total points {int} are correct and delete it")
    public void iSelectQuizToVerifyTheTotalPointsAreCorrect(String quizTitle, int expScore) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]")).click();
        String expectedScore = Integer.toString(expScore);
        String actualScore = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/ancestor::mat-expansion-panel//tr[2]/td[2]")).getText();
        System.out.println("EXPECTED SCORE: "+expectedScore+" ACTUAL SCORE: "+actualScore);
        Assert.assertEquals(actualScore, expectedScore);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/ancestor::mat-expansion-panel//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(2000);
    }


}
