package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class AssignmentGreadedBy {

    @And("I select quiz named {string}")
    public void iSelectQuizNamed(String title) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+title+"')]")).click();

    }

    @Then("I click on {string}")
    public void iClickOn(String StudentName) {
        getDriver().findElement(By.xpath("//*/following-sibling::text()[contains(.,'"+StudentName+"')]/..")).click();
    }


    @Then("I click on Give Assignment button")
    public void iClickOnGiveAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();

    }
    @When("I click on My Assignments")
    public void iClickOnMyAssignments() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
        Thread.sleep(2000);
    }


    @When("I type answer {string}")
    public void iTypeAnswer(String asdasd) {
        getDriver().findElement(By.xpath("//*[@placeholder='Enter your answer']")).sendKeys(asdasd);
    }


    @Then("I click on Submit My Answers button")
    public void iClickOnSubmitMyAnswersButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Submit My Answers')]")).click();
    }

    @When("I click on Assignments")
    public void iClickOnAssignments() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
    }

    @And("I create new assignment")
    public void iCreateNewAssignment() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
        Thread.sleep(2000);

    }

    @When("I click on Quizzes")
    public void iClickOnQuizzes() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'edit')]")).click();
        Thread.sleep(2000);

    }

    @Then("I click Create New Quiz")
    public void iClickCreateNewQuiz()  {

        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();

    }


    @When("I type {string}")
    public void iType(String QuizName) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(QuizName);
    }

    @Then("I click Add Question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();

    }

    @Then("I click on Textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]")).click();
    }

    @Then("I type {string} in to the Question text field")
    public void iTypeInToTheQuestionTextField(String Question) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(Question);

    }

    @Then("I click on Save button")
    public void iClickOnSaveButton() {

        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }


    @Then("I click on {string} button")
    public void iClickOnButton(String GiveAssignment) {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
    }

    @Then("I click on Select Quiz To Assign drop down")
    public void iClickOnSelectQuizToAssignDropDown() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
    }


    @Then("I click on My Grades from left menu")
    public void iClickOnMyGradesFromLeftMenu() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Grades')]")).click();
    }

    @And("I click on Go to Assignment button {string}")
    public void iClickOnGoToAssignmentButtonQuizName(String QuizName) {
        getDriver().findElement(By.xpath("//body//tr[1][contains(.,'"+QuizName+"')]")).getText();
        getDriver().findElement(By.xpath("//tr[1]//td[4]//a[1]//button[1]")).click();

    }

    @Then("I verify finished quiz is present in the list {string}")
    public void iVerifyFinishedQuizIsPresentInTheListQuizName(String QuizName) {
        getDriver().findElement(By.xpath("//div[@class='container'][contains(.,'"+QuizName+"')]")).getText();
    }

    @And("I verify that quiz status is {string}")
    public void iVerifyThatQuizStatusIsStatus(String Status) {
        getDriver().findElement(By.xpath("//div[@class='container'][contains(.,'"+Status+"')]")).getText();
    }

    @Then("I click ok")
    public void iClickOk() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
        Thread.sleep(2000);
    }

    @And("I wait 2 seconds")
    public void iWaitSeconds() throws InterruptedException {
        Thread.sleep(2000);
    }

    @Then("I click on Submissions from left menu")
    public void iClickOnSubmissionsFromLeftMenu() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
        Thread.sleep(2000);
    }

    @Then("I verify that submission is presented {string}")
    public void iVerifyThatSubmissionIsPresentedStudentName(String StudentName) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+StudentName+"')]")).getText();
    }

    @And("I click Grade button")
    public void iClickGradeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Grade')]")).click();
    }

    @Then("I click + button")
    public void iClickButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'+')]")).click();
    }

    @And("I click save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }


}
