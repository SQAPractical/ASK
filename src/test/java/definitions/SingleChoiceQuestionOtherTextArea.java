package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.text.SimpleDateFormat;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class SingleChoiceQuestionOtherTextArea {
    static String submissionTime, assignmentTime, quizCreationTime;
    private static final SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yy HH:mm");
    private static final SimpleDateFormat sdf2 = new SimpleDateFormat("MM/dd/yy HH:mm:ss");

    @Then("I select option Include Other text area option for this question?")
    public void iSelectOptionIncludeOtherTextAreaOptionForThisQuestion() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@id='mat-checkbox-1']/*[@for='mat-checkbox-1-input']")).click();

            }

    @And("I select in dropdown menu option {string}")
    public void iSelectInDropdownMenuOption(String optionText) {
        getDriver().findElement(By.xpath("//span[@class='mat-option-text'][contains(text(),'"+optionText+"')]")).click();
    }

    @And("I click on Group dropdown in the Give Assignment")
    public void iClickOnGroupDropdownInTheGiveAssignment() {
        getDriver().findElement(By.xpath("//*[@placeholder='Group Filter']")).click();
    }

    @And("I click on Select Quiz To Assign dropdown in the Give Assignment")
    public void iClickOnSelectQuizToAssignDropdownInTheGiveAssignment() {
        getDriver().findElement(By.xpath("//*[@placeholder='Select Quiz To Assign']")).click();
    }

    @And("I select from list person with name containing text {string}")
    public void iSelectFromListPersonWithNameContainingText(String nameText) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()[contains(., '"+nameText+"')]]")).click();

        Thread.sleep(3000);
    }

    @And("I wait {int} sec")
    public void iWaitSec(int sec) throws InterruptedException {
        Thread.sleep(sec*1000);
    }



    @And("I select option with text {string} as answer on question {int}")
    public void iSelectOptionWithTextAsAnswerOnQuestion(String optionText, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Question "+questionNumber+" / 1')]/../..//*[text()[contains(., '"+optionText+"')]]")).click();
    }

    @And("I type {string} in Other Text area")
    public void iTypeInOtherTextArea(String textOfAnswer) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Other']")).sendKeys(textOfAnswer);
    }

    @And("I click Submit My Answers button")
    public void iClickSubmitMyAnswersButton() {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Submit My Answers')]")).click();

        submissionTime=sdf1.format(System.currentTimeMillis());
       // System.out.println(submissionTime);
    }


    @And("I click Details button right of passed Quiz {string} with valid submission time in My Grades")
    public void iClickDetailsButtonRightOfPassedQuizWithValidSubmissionTimeInMyGrades(String quizName) {
        //System.out.println("//*[text()[contains(., '"+submissionTime+"')]]/../*[text()[contains(., '"+quizName+"')]]/..//span[contains(text(),'Details')]");
        getDriver().findElement(By.xpath("//*[text()[contains(., '"+submissionTime+"')]]/../*[text()[contains(., '"+quizName+"')]]/..//span[contains(text(),'Details')]")).click();
    }


    @And("I delete the All Cookies")
    public void iDeleteTheAllCookies() {
        getDriver().manage().deleteAllCookies();
    }

    @And("I click Give Assignment button")
    public void iClickGiveAssignmentButton() {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Give Assignment')]")).click();
        assignmentTime=sdf1.format(System.currentTimeMillis());
        //System.out.println(assignmentTime);
    }

    @And("I click Go To Assignment button right of quiz {string} with valid assignment time in My Assignments")
    public void iClickGoToAssignmentButtonRightOfQuizWithValidAssignmentTimeInMyAssignments(String quizName) {
        //System.out.println("//*[text()[contains(.,'"+quizName+"')]]/../*[text()[contains(.,'"+assignmentTime+"')]]/..//span[contains(text(),'Go To')]");
        getDriver().findElement(By.xpath("//*[text()[contains(.,'"+quizName+"')]]/../*[text()[contains(.,'"+assignmentTime+"')]]/..//span[contains(text(),'Go To')]")).click();

        }

    @Then("I click Save button in Create New Quiz")
    public void iClickSaveButtonInCreateNewQuiz() {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Save')]")).click();
        quizCreationTime=sdf2.format(System.currentTimeMillis());
    }

    @And("I delete quiz {string} with valid creation time")
    public void iDeleteQuizWithValidCreationTime(String quizTitle) {

    }

    @And("Element containing text {string} is displayed")
    public void elementContainingTextIsDisplayed(String checkingText) {
        WebElement elemWithXpath = getDriver().findElement(By.xpath("//*[text()[contains(.,'"+checkingText+"')]]"));
        assertThat(elemWithXpath.isDisplayed()).isTrue();
    }

    @And("Element containing text {string} is displayed in My Grades Details")
    public void elementContainingTextIsDisplayedInMyGradesDetails(String textOfAnswer) {
        WebElement elemWithXpah = getDriver().findElement(By.xpath("//div[contains(text(),'Other:')]/../..//*[text()[contains(.,'"+textOfAnswer+"')]]"));
        assertThat(elemWithXpah.isDisplayed()).isTrue();
    }
}
