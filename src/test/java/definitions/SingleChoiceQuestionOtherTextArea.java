package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class SingleChoiceQuestionOtherTextArea {
    @And("I click on {string} checkbox")
    public void iClickOnCheckbox(String checkboxQuestion) {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Include \"Other\" text area option for this question?')]/..")).sendKeys(checkboxQuestion);

    }

    @And("I click on {string} quiz on list of Quizzes")
    public void iClickOnQuizOnListOfQuizzes(String quizTitle) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizTitle+"')]")).click();

    }

    @And("I click on {string} button in {string} Quiz")
    public void iClickOnButtonOnListOfQuizzes(String nameOfButton, String quizTitle) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizTitle+"')]/../../..//*[contains(text(), '"+nameOfButton+"')][@class = 'mat-button-wrapper']/..")).click();

    }



    @And("I click on {string} drop down menu")
    public void iClickOnDropDownMenu(String dropDownMenuName ) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+dropDownMenuName+"')]/../..//*[@class = 'mat-select-arrow']")).click();
    }

    @And("I select {string} Quiz in Select Quiz To Assign drop down menu")
    public void iSelectQuizInSelectQuizToAssignDropDownMenu(String quizTitle) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizTitle+"')][@class = 'mat-option-text']")).click();

    }

    @And("I click on {string} student checkbox on Give Assignment list")
    public void iClickOnStudentCheckboxOnGiveAssignmentList(String studentNameForAssignment) {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(., 'Ivan Ivanov')]")).click();

    }

    @And("I click on Log Out on Confirmation window")
    public void iClickOnLogOutOnConfirmationWindow() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }

    @And("I select {string} group filter in Group Filter drop down menu")
    public void iSelectGroupFilterInGroupFilterDropDownMenu(String groupFilter) {
        getDriver().findElement(By.xpath("//span[@class = 'mat-option-text']/..//*[text()='"+groupFilter+"']")).click();


    }
    @And("I click {string} button on {string} Quiz")
    public void iClickButtonOnQuiz(String nameOfButton, String quizTitle) {
        getDriver().findElement(By.xpath("//td[contains(text(),'"+quizTitle+"')]/..//button[@class='mat-raised-button mat-primary']")).click();
    }

    @And("I type text {string} in Other Input field")
    public void iTypeInOtherInputField(String TextInOtherInputField ) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Other']")).sendKeys(TextInOtherInputField);


    }


    @And("I click on {string} label in Submissions")
    public void iClickOnLabelInSubmissions(String labelInSubmissions) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[@class='mat-tab-label-content'][contains(text(),'"+labelInSubmissions+"')]")).click();
    }

    @And("I click {string} button next to student {string} and Quiz {string}")
    public void iClickButtonNextToStudentAndQuiz(String nameOfButton, String nameOfStudent, String nameOfQuiz) {
        getDriver().findElement(By.xpath("//td[contains(text(),'"+nameOfStudent+"')]/..//td[contains(text(),'"+nameOfQuiz+"')]/..//span[@class='mat-button-wrapper'][contains(text(),'"+nameOfButton+"')]")).click();

    }

    @And("I click on radio-button next to {string} answer")
    public void iClickOnRadioButtonNextToAnswerInQuestion(String answerToQuestion) {
        getDriver().findElement(By.xpath("//div[@class='mat-radio-container']/..//*[contains(text(),'"+answerToQuestion+"')]/..")).click();
    }

    @And("I click on OK in Success Submission")
    public void iClickOnOKInSuccessSubmission() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
    }


    @Then("Other option is present in {string} Quiz")
    public void otherOptionIsPresentInQuiz(String otherOption) {
        String quizName  = getDriver().findElement(By.xpath("//h4[ contains(text(),'Test Animals')]/../..")).getText();
        System.out.println(quizName);
        assertThat(quizName.contains(otherOption)).isTrue();
    }

    @Then("text {string} is present in Other Input field for Quiz for student")
    public void isPresentInOtherInputFieldForQuizForStudent(String textInOther) {
        String xPath = "//*[@formcontrolname='textAnswer']/..";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();

    }

    @Then("text {string} is present in Other Input field for Quiz for teacher")
    public void isPresentInOtherInputFieldForQuizForTeacher(String textInOther) {
        String xPath = "//div[@class='label'][contains(text(),'Other')]/..";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();

    }


}

