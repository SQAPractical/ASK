package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.hamcrest.Matchers;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.Select;

import java.util.Random;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiseQuestion {

    @When("I click on Quizzes")
    public void iClickOnQuizzes() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'edit')]")).click();
    }

    @And("I click [Create New Quizz] button")
    public void iClickCreateNewQuizzButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I enter {string} quiz title on Create Quiz page")
    public void iEnterQuizTitleOnCreateQuizPage(String title) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(title);
    }

    @And("I click [Add Question] button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I select Single-choice option in Question type checkbox")
    public void iSelectSingleChoiceOptionInQuestionTypeCheckbox() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
    }

    @And("I wait {int} seconds")
    public void iWaitSeconds(int sec) throws InterruptedException {
        Thread.sleep(sec * 1000);
    }

    @And("I enter {string} question text in Question field")
    public void iEnterQuestionTextInQuestionField(String qText) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(qText);
    }

    @And("I enter {string} text in Option1 field")
    public void iEnterTextInOption1Field(String opt1Text) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(opt1Text);
    }

    @And("I enter {string} text in Option2 field")
    public void iEnterTextInOption2Field(String opt2Text) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(opt2Text);
    }

    @And("I select option2 as a correct answer in Question checkbox")
    public void iSelectOptionAsACorrectAnswerInQuestionCheckbox() {
        getDriver().findElement(By.xpath("//div/mat-radio-group[2]/mat-radio-button")).click();
    }

    @And("I check Include Other text area option for this question?")
    public void iCheckIncludeTextAreaOptionForThisQuestion() {
        getDriver().findElement(By.xpath("//div[@class='mat-checkbox-inner-container']")).click();
    }

    @And("I click [Preview] button")
    public void iClickPreviewButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary ng-star-inserted']")).click();
    }

    @And("I enter {string} text in Other field")
    public void iEnterTextInOtherField(String otherText) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='textAnswer']")).sendKeys(otherText);
    }

    @And("I click out of Other text area")
    public void iClickOutOfOtherTextArea() {
        getDriver().findElement(By.xpath("//div[@class='quiz-body']")).click();
    }

    @Then("text {string} appears")
    public void textAppears(String otherText) {
        assertThat(getDriver().findElement(By.xpath("//textarea[@formcontrolname='textAnswer']"))
                .getAttribute("value").contains(otherText)).isTrue();

    }

    @Then("I see Other text field")
    public void iSeeOtherTextField() {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='textAnswer']")).isDisplayed();
    }

    @And("I click [Close] button")
    public void iClickCloseButton() {
        getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']")).click();
    }

    @And("I select Assignments")
    public void iSelectAssignments() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
    }

    @And("I click [Create New Assignment] button")
    public void iClickCreateNewAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
    }


    @And("I click [Save] button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @And("I click on Select Quiz to assign select box")
    public void iClickOnSelectQuizToAssignSelectBox() {
        getDriver().findElement(By.xpath("//mat-select[@placeholder='Select Quiz To Assign']")).click();
    }

    @And("I select {string} name of Quiz in Quiz to assign select box")
    public void iSelectNameOfQuizInQuizToAssignSelectBox(String qName) {
        getDriver().findElement(By.xpath("//mat-option/span[contains(text(), 'NumberM')]")).click();
    }

    @And("I select {string} in the Users list on Give Assignment page")
    public void iSelectInTheUsersListOnGiveAssignmentPage(String student) {
        getDriver().findElement(By.xpath("//mat-list-option/div/div[contains(., 'Student2 Volga')]")).click();
    }

    @And("I click [Give Assignment] button")
    public void iClickGiveAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
    }

    @And("I click [Log Out] button")
    public void iClickLogOutButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
    }

    @And("I confirm Log Out on Confirmation popup")
    public void iConfirmLogOutOnConfirmationPopup() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }

    @And("I select My Assignments")
    public void iSelectMyAssignments() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
    }

    @And("I click [Go To My Assignments] button")
    public void iClickGoToMyAssignmentsButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
    }

    @And("I click [Go To Assessment] button related to {string} quiz")
    public void iClickGoToAssessmentButtonRelatedToQuiz(String quiz) {
        getDriver().findElement(By.xpath("//td[contains(text(), '" + quiz + "')]/../td[4]")).click();
    }


    @And("I select {string} text as answer on Question")
    public void iSelectTextAsAnswerOnQuestion(String answer) {
        getDriver().findElement(By.xpath("//mat-radio-button/label/div[contains(text(), '" + answer + "')]")).click();
    }

    @And("I type {int} characters into Other text field")
    public void iTypeCharactersIntoOtherTextField(int arg0) {
        String str = new String();
        str = new Random(arg0).toString();
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='textAnswer']")).sendKeys(str);

    }

    @And("I click [Submit My Answer] button Assessment page")
    public void iClickSubmitMyAnswerButtonAssessmentPage() {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']")).click();
    }

    @And("I click [Ok] button on Success alert")
    public void iClickOkButtonOnSuccessAlert() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
    }

    @And("I select Submissions")
    public void iSelectSubmissions() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
    }

    @And("I select Automatically Graded")
    public void iSelectAutomaticallyGraded() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Automatically Graded')]")).click();
    }

    @And("I click [Review] button related to {string} student and {string} quiz")
    public void iClickReviewButtonRelatedToStudentAndQuiz(String student, String quiz) {
        getDriver().findElement(By.xpath("//tr[contains(.,'" + student + "')][contains(.,'" + quiz + "')]/td[7]")).click();
    }

    @Then("I validate Other text area contains {int} characters")
    public void iValidateOtherTextAreaContainsCharacters(int num) {
        System.out.println(getDriver().findElement(By.xpath("//div[@class='ng-star-inserted']")).getText().length());
        System.out.println(getDriver().findElement(By.xpath("//div[@class='ng-star-inserted']")).getText());

        assertThat(getDriver().findElement(By.xpath("//div[@class='ng-star-inserted']")).getText().length()).isEqualTo(num);
    }

    @Then("Other text area appears on PREVIEW MODE popup")
    public void otherTextAreaAppearsOnPREVIEWMODEPopup() {
        assertThat(getDriver().findElement(By.xpath("//textarea[@formcontrolname='textAnswer']")).isDisplayed()).isTrue();
    }
}
