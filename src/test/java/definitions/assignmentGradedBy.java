//Created by Almir 10/19/20
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class assignmentGradedBy {
    private static String quizName;
    @And("I click Assignment on left menu")
    public void iClickAssignmentOnLeftMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
        Thread.sleep(1000);
    }

    @And("I click Create New Assignment on the bottom")
    public void iClickCreateNewAssignmentOnTheBottom() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
    }

    @And("I click Select Quiz To Assign drop menu")
    public void iClickSelectQuizToAssignDropMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on created quiz {string}")
    public void iClickOnCreatedQuiz(String quizName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+quizName+"')]")).click();
        assignmentGradedBy.quizName = quizName;
    }

    @And("I click on Student name {string}")
    public void iClickOnStudentName(String studentName) {
        getDriver().findElement(By.xpath("//mat-list-option//*[contains(., '"+studentName+"')]")).click();
    }

    @And("I click Give Assignment on the bottom")
    public void iClickGiveAssignmentOnTheBottom() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
        Thread.sleep(3000);
    }

    @And("I click on assigned quiz")
    public void iClickOnAssignedQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//span//*[contains(., '"+quizName+"')]")).click();
        Thread.sleep(3000);
    }

    @Then("Text {string} appears under Graded By")
    public void textAppearsUnderGradedBy(String text) {
        WebElement actualText = getDriver().findElement(By.xpath("//span//*[contains(., '"+quizName+"')]/../../..//td[contains(., '"+text+"')]"));
        assertThat(actualText.isDisplayed()).isTrue();
    }

    @And("I select Question type: Single-Choice")
    public void iSelectQuestionTypeSingleChoice() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//*[contains(text(),'Single-Choice')]")).click();
        Thread.sleep(2000);
    }

    @And("I type the question {string} in Question field")
    public void iTypeTheQuestionInQuestionField(String question) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']")).sendKeys(question);
    }

    @And("I select Option {int} as a right answer")
    public void iSelectOptionAsARightAnswer(int option) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+option+"*']/../../../../..//mat-radio-button")).click();
    }

    @And("I type answer {string}in to Option {int} field")
    public void iTypeAnswerInToOptionField(String answer, int option) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+option+"*']")).sendKeys(answer);
    }

    @And("I click Log Out")
    public void iClickLogOut() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'power_settings_new')]")).click();
    }

    @And("I confirm Log Out in alert message")
    public void iConfirmLogOutInAlertMessage() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Go To My Assignments")
    public void iClickGoToMyAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To My Assignments')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Go To Assessment of quiz {string}")
    public void iClickGoToAssessmentOfQuiz(String quizName) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]/..//button")).click();
    }

    @And("I select {string} answer")
    public void iSelectAnswer(String answer) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+answer+"')]/../div[@class='mat-radio-container']")).click();
        Thread.sleep(2000);
    }

    @And("I click Submit My Answers")
    public void iClickSubmitMyAnswers() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Submit My Answers')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Ok in alert message")
    public void iClickOkInAlertMessage() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]/..")).click();
    }

    @And("I type answer {string} in text field")
    public void iTypeAnswerInTextField(String answer) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='textAnswer']")).sendKeys(answer);
    }

    @And("I click Submissions on left menu")
    public void iClickSubmissionsOnLeftMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
        Thread.sleep(1000);
    }

    @And("I click Grade of submitted quiz {string}")
    public void iClickGradeOfSubmittedQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]/..//button")).click();
        Thread.sleep(2000);
    }

    @And("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]/..")).click();
        Thread.sleep(5000);
    }

    @And("I click on assigned quiz {string}")
    public void iClickOnAssignedQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span//*[contains(., '"+quizName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I select Textual type of question")
    public void iSelectTextualTypeOfQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//*[contains(text(),'Textual')]")).click();
        Thread.sleep(2000);
    }
}
