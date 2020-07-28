package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import static support.TestContext.getDriver;
public class multipleChoiceQuestionTest {
    @And("I click Quizzes button")
    public void iClickButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }
    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }
    @And("I type {string} in the Title Of The Quiz *")
    public void iTypeInTheTitleOfTheQuiz(String Title) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Title);
        Thread.sleep(2000);
    }
    @And("I click Add Question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
    }
    @And("I click Multiple Choice radio button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Multiple-Choice')]")).click();
    }
    @Then("I type {string} in Question *")
    public void iTypeInQuestion(String Question) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Question *']")).sendKeys(Question);
        Thread.sleep(2000);
    }
    @Then("I type {string} in Option one")
    public void iTypeInOptionOne(String Option1) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(Option1);
        Thread.sleep(2000);
    }
    @Then("I type {string} in Option two")
    public void iTypeInOptionTwo(String Option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(Option2);
        Thread.sleep(2000);
    }
    @Then("I click Option one")
    public void iClickOptionOne() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-checkbox/label")).click();
    }
    @Then("I click Save")
    public void iClickSave() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }
    //@Then("I click QMC-Other -- DO NOT DELETE")
    //public void iClickOn(String arg0) throws InterruptedException {
       // getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'QMC-Other -- DO NOT DELETE')]")).click();
   // }
    @Then("I click {string}")
    public void iClick(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'QMC-Other -- DO NOT DELETE')]")).click();
       Thread.sleep(2000);
    }

    @Then("I click Preview on quiz {string}")
    public void iClickPreviewOnQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(), 'Preview')]")).click();
        getDriver().findElement(By.xpath("//span[contains(text(),'Close')]")).click();
        Thread.sleep(2000);
    }

    @And("I delete quiz {string}")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(), 'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//span[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }
}