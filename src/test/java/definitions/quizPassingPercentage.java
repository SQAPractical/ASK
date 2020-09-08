package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class quizPassingPercentage {

    @Then("I click on Quizzes")
    public void iClickOnQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @When("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains (text(),'Create New Quiz')]")).click();
        Thread.sleep(1000);
    }


//    @Then("I type {string}")
//    public void iType(String quizTitle) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizTitle);
//    }

    @Then("I click on Add question")
    public void iClickOnAddQuestion() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
    }
//Question type-click on Single choice Radio button
    @Then("I click on {string} radio button")
    public void iClickOnRadioButton(String questionType) throws InterruptedException {
        WebElement singleChoice=getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-3']"));
        singleChoice.click();
        Thread.sleep(1000);
    }
//Q1
    @Then("I type  question {string}")
    public void iTypeQuestion(String firstquestion) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(firstquestion);
    }
//option1
    @Then("I type first option {string}")
    public void iTypeFirstOption(String firstoption) {
        WebElement radio1 =getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']"));
        radio1.sendKeys(firstoption);
    }
//option2
    @Then("I type second option {string}")
    public void iTypeSecondOption(String secondoption) {
        WebElement radio2=getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 2*']"));
                radio2.sendKeys(secondoption);
    }
//correct answer
    @Then("I choose the correct option")
    public void iChooseTheCorrectOption() throws InterruptedException {
        WebElement radio1 =getDriver().findElement(By.xpath("//mat-radio-group[2]//mat-radio-button[1]//label[1]//div[1]//div[1]"));
        radio1.click();
        Thread.sleep(2000);
    }




    @And("I type second question {string}")
    public void iTypeSecondQuestion(String Q2) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(Q2);

    }

    //set passing percentage in slider
    @Then("I Set the passing rate.")
    public void iSetThePassingRate() throws InterruptedException {

        WebElement sliderminus=getDriver().findElement(By.xpath("//button[@class='mat-button mat-primary']/..//span[contains(text(),'-')]"));
        for (int i=1;i<=25;i++)
        {
            sliderminus.click();
        }
        Thread.sleep(1000);
    }
//Save Quiz
    @And("I click on save button.")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(3000);
    }
//Quiz is displayed in "List of Quizzes"
//    @And("I check {string} is displayed")
//    public void iCheckIsDisplayed(String quizName) throws InterruptedException {
//        assertThat(getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-1125']")).isDisplayed()).isTrue();
//        Thread.sleep(1000);
//    }
//Click on quiz name
 //   @And("I click on {string}")
  //  public void iClickOn(String arg0) throws InterruptedException {
  //      getDriver().findElement(By.xpath("//*[contains(text(),'GK Quiz Automation')]")).click();
  //      Thread.sleep(1000);
 //   }
//Check if passing percentage is displayed correctly
    @Then("Passing percentage is displayed")
    public void passingPercentageIsDisplayed() {
//        assertThat(getDriver().findElement(By.xpath("//td[contains(text(),'50')]/../td[contains(text(),'Passing Percentage:')]")).isDisplayed()).isTrue();
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'GK Quiz Automation')]/../../..//td[contains(text(),'Passing Percentage:')]/..//*[contains(text(),'50')]")).isDisplayed()).isTrue();
    }

    @Then("Passing percentage {string} is displayed for quiz {string}")
    public void passingPercentageIsDisplayedForQuiz(String percent, String quizName) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//td[contains(text(),'Passing Percentage:')]/..//*[contains(text(),'"+percent+"')]")).isDisplayed()).isTrue();
    }










   /* //Q2-Question
    @Then("I click on Add new question")
    public void iClickOnAddNewQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
    }
    //Q2
    @Then("I type second question {string}")
    public void iTypeSecondQuestion(String secondquestion) {
    }
        getDriver().findElement(By.xpath("//textarea[@id='mat-input-14']")).click();
//Q2-option1
    @Then("I type first option as {string}")
    public void iTypeFirstOptionAs(String firstoption ) {
        WebElement radio1 =getDriver().findElement(By.xpath("//*[contains(text(),'Q2')]/../../..//*[@placeholder='Option 1*']"));
        radio1.sendKeys(firstoption);
    }
//Q2-option2
    @Then("I type second option as {string}")
    public void iTypeSecondOptionAs(String secondoption) {
        WebElement radio1 =getDriver().findElement(By.xpath("//*[contains(text(),'Q2')]/../../..//*[@placeholder='Option 2*']"));
        radio1.sendKeys(secondoption);
    }

    @Then("I click on {string} radio button again")
    public void iClickOnRadioButtonAgain(String singlechoice2) throws InterruptedException {
        WebElement singlechoiceQ2 =getDriver().findElement(By.xpath("//*[@id='mat-radio-36']"));
        singlechoiceQ2.click();
        Thread.sleep(2000);
    }*/
}
