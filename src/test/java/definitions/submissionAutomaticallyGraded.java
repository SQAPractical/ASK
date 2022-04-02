package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;

import static support.TestContext.getDriver;

public class submissionAutomaticallyGraded
{
    @And("I select {int} point per question on slider")
    public void iSelectPointPerQuestionOnSlider(int points) throws InterruptedException {
        WebDriver driver = new ChromeDriver();
        WebElement slider = driver.findElement(By.xpath("//mat-radio-group/following-sibling::mat-slider"));
        Actions action = new Actions(driver);
        action.dragAndDropBy(slider, 30, 0).perform();
        Thread.sleep(2000);
    }

    @And("I select {int} passing percentage")
    public void iSelectPassingPercentage(int passingPercentage) throws InterruptedException {
        WebDriver driver = new ChromeDriver();
        WebElement slider = driver.findElement(By.xpath("//mat-card//h3[contains(text(),'Passing Rate')]/..//div//mat-slider"));
        Actions action = new Actions(driver);
        action.dragAndDropBy(slider, 80, 0).perform();
        Thread.sleep(2000);
    }

    @And("I type {string} as an answer for question {int}")
    public void iTypeAsAnAnswerForQuestion(String answer, int questionNumber)
    {
        getDriver().findElement(By.xpath("//mat-card//h5[contains(text(),'Question "+questionNumber+"')]/..//textarea")).sendKeys(answer);
    }

    @And("I select option {int} as an answer for question {int}")
    public void iSelectOptionAsAnAnswerForQuestion(int optionNumber, int questionNumber)
    {
        getDriver().findElement(By.xpath("//mat-card//h5[contains(text(),'Question "+questionNumber+"')]/..//div[@class='mat-radio-label-content'][contains(.,'"+optionNumber+"')]")).click();
    }

    @Then("I verify {string} status of {string} quiz that was graded at {string}")
    public void iVerifyStatusOfQuizThatWasGradedAt(String status, String quizName, String gradedAt)
    {
        getDriver().findElement(By.xpath("//td/span[contains(text(),'"+status+"')]/../../*[contains(text(),'"+quizName+"')]/../*[contains(text(),'"+gradedAt+"')]"));
    }
}
