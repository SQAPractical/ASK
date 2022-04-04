package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;

import static org.assertj.core.api.Assertions.assertThat;
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

    @And("I logout of student account")
    public void iLogoutOfStudentAccount()
    {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }

    @Then("I verify quiz {string} taken by {string} of group {string} at {string} has {string} status")
    public void iVerifyQuizTakenByOfGroupAtHasStatus(String quizName, String studentName, String group, String dateTime, String status) throws InterruptedException {
        Thread.sleep(2000);
        String statusConfirm = "//*[contains(text(),'"+quizName+"')]/../*[contains(text(),'"+studentName+"')]/../*[contains(text(),'"+group+"')]/../*[contains(text(),'"+dateTime+"')]/..//td/span[contains(text(),'"+status+"')]";
        assertThat(getDriver().findElement(By.xpath(statusConfirm)).isDisplayed()).isTrue();
    }

    @Then("I verify submitted at {string} graded at {string} quiz title {string} has status {string}")
    public void iVerifySubmittedAtGradedAtQuizTitleHasStatus(String submittedAt, String gradedAt, String quizTitle, String status) throws InterruptedException {
        Thread.sleep(2000);
        String statusConfirm = "//*[contains(text(),'04/01/22 10:39')]/../*[contains(text(),'Automatic')]/../*[contains(text(),'12345')]/..//td/span[contains(text(),'FAILED')]";
        assertThat(getDriver().findElement(By.xpath(statusConfirm)).isDisplayed()).isTrue();
    }
}
