package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class singleChoiceQuestionShowStopper {
//    @When("I click on Quizzes")
//    public void iClickOnQuizzes() throws InterruptedException {
//        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
//        Thread.sleep(2000);
//    }


    @When("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls']//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(2000);
    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String quizT) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizT);
    }

    @When("I click on Add Question")
    public void iClickOnAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
        Thread.sleep(2000);
    }

    @When("I click Single-Choice")
    public void iClickSingleChoice() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
        Thread.sleep(2000);
    }

//    @When("I type question {string}")
//    public void iTypeQuestion(String ques) {
//        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(ques);
//    }

    @When("I type optiona {string}")
    public void iTypeOptiona(String opt1) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(opt1);
    }

    @When("I type optionb {string}")
    public void iTypeOptionb(String opt2) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(opt2);
    }

    @And("I click on option{int} radio button")
    public void iClickOnOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-radio-outer-circle']")).click();
    }

    @Then("I click on Is {string} question?")
    public void iClickOnIsQuestion(String arg0) {
        getDriver().findElement(By.xpath("//span[contains(text(),  'Show-Stopper')]")).click();
    }

    @Then("I click save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }


    @When("I click on quiz {string}")
    public void iClickOnQuiz(String quizN) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizN+"')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizN+"')]/../../..//*[contains(text(), 'Preview')]")).click();
        Thread.sleep(2000);
    }


    @Then("I click close")
    public void iClickClose() throws InterruptedException{
        getDriver().findElement(By.xpath("//span[contains(text(),'Close')]")).click();
        Thread.sleep(2000);
    }

    @And("I delete quiz {string}")
    public void iDeleteQuiz(String quizN) {
            getDriver().findElement(By.xpath("//*[contains(text(), '"+quizN+"')]/../../..//*[contains(text(), 'Delete')]")).click();
            getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]")).click();
    }

    @When("I click Assignments")
    public void iClickAssignments() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
    }

    @When("I click Create New Assignment button")
    public void iClickCreateNewAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
    }

    @And("I click on John Nadela")
    public void iClickOnJohnNadela() {
        getDriver().findElement(By.xpath("//mat-list-option[contains(.,'John Nadela')]")).click();

    }

    @And("I click Select Quiz To Assign")
    public void iClickSelectQuizToAssign() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
    }

    @When("I click on quiztitle {string}")
    public void iClickOnQuiztitle(String arg0) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Mathematics')]")).click();
    }

    @Then("I click Give Assignment")
    public void iClickGiveAssignment() throws InterruptedException{
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
        Thread.sleep(2000);
    }

    @Then("I Log Out")
    public void iClickLogOut() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//span[contains(text(), 'Log Out')]")).click();
        Thread.sleep(2000);
    }

    @When("I click My Assignments")
    public void iClickMyAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click on Go To Assessment button")
    public void iClickOnGoToAssessmentButton() {
        getDriver().findElement(By.xpath("//td[contains(text(),'Mathematics')]/..//*[contains(text(), 'Go To Assessment')]")).click();
    }
}
