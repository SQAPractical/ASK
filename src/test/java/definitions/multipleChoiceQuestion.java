package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.apache.bcel.generic.RETURN;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;



public class multipleChoiceQuestion {
    @And("I select checkbox option {int} as correct answer for question {int}")
    public void iSelectCheckboxOptionAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) throws InterruptedException {
        Thread.sleep(2000);
        Actions action_option1 = new Actions(getDriver());
        WebElement we_option1 = getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']/../../../../..//*[@type='checkbox']"));

        action_option1.click(we_option1).perform();
    }

    @And("I select checkbox Other text area as correct answer for question {int}")

    public void iSelectCheckboxOtherTextAreaAsCorrectAnswerForQuestion(int questionNumber) {
        WebElement we = getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//span[contains(text(),'option')]"));
        Actions action = new Actions(getDriver());
        action.click(we).perform();
    }

    @And("I click {string} on list of quizzes")
    public void iClickOnListOfQuizzes(String quizzTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'"+quizzTitle+"')]")).click();
        Thread.sleep(3000);
    }

    @And("I click {string} button on Quizz {string} table")
    public void iClickButtonOnQuizzTable(String typeOfButton, String titleOfQuiz) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+titleOfQuiz+"')]/../../..//*[contains(text(),'"+typeOfButton+"')]")).click();

    }

    @Then("textfield {string} is present in quiz {string}")
    public void textfieldIsPresentInQuiz(String textField, String titleOfQuiz) throws InterruptedException {
        WebElement we = getDriver().findElement(By.xpath("//*[contains(text(),'" + textField + "')]"));
        assertThat(we.isDisplayed()).isTrue();
        Thread.sleep(2000);
    }

    @And("I click {string} button on {string} page")
    public void iClickButtonOnPage(String nameOfButton, String nameOfPage) throws InterruptedException {
        WebElement we = getDriver().findElement(By.xpath("//h4[contains(text(), '" + nameOfPage + "')]/../..//span[contains(text(),'" + nameOfButton + "')]/.."));
        Actions action = new Actions(getDriver());
        action.click(we).perform();

    }

    @And("I select {string} from drop-down list")
    public void iSelectFromDropDownList(String optionFromDropdownList) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'" +optionFromDropdownList+ "')]")).click();
        Thread.sleep(4000);

    }

    @And("I select group {string} from drop-down list")
    public void iSelectGroupFromDropDownList(String groupName) {
        WebElement we = getDriver().findElement(By.xpath("//span[@class='mat-option-text'] [contains(text(),'"+groupName+"')]"));
        Actions action = new Actions(getDriver());
        action.click(we).perform();

    }

    @And("I confirm {string} in pop-up window")
    public void iConfirmInPopUpWindow(String conformationInPopUp) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(), '" + conformationInPopUp + "')]")).click();
        Thread.sleep(4000);
    }

    @And("I click Go to Assesment button for assignment {string}")
    public void iClickGoToAssesmentButtonForAssignment(String quizName) {
        WebDriverWait wait = new WebDriverWait(getDriver(),2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//mat-card/h4[contains(text(),'My Assignments')]")));

        getDriver().findElement(By.xpath("//td[contains(text(),'"+quizName+"')]/..//span[contains(text(),'Go To Assessment')]/..")).click();

        }

    @And("I select student {string}")
    public void iSelectStudent(String studentName) {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(., '"+studentName+"')]")).click();

        WebDriverWait wait = new WebDriverWait(getDriver(), 4000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//span[contains(text(),'Give Assignment')]/..")));

    }

    @And("I click Give Assignment button")
    public void iClickGiveAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]/..")).click();

    }

    @And("I wait for page {string} to load")
    public void iWaitForPageToLoad(String nameOfPage) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 4000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h5[contains(text(), '"+nameOfPage+"')]")));

    }

    @And("I wait for page {string} with element {string} to load")
    public void iWaitForPageWithElementToLoad(String nameOfPage, String nameOfElement) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 4000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h4[contains(text(),'"+nameOfElement+"' )]/..//*[contains(text(),'"+nameOfPage+"')]")));
    }

    @And("I select checkbox {int} as correct answer for question {string} on student's page")
    public void iSelectCheckboxOptionAsCorrectAnswerForQuestionOnStudentSPage(int numberOfQuestion, String textOfQuestion) throws InterruptedException {

        WebElement we = getDriver().findElement(By.xpath("//span[contains(., '"+textOfQuestion+"')]/../..//input[@type='checkbox']"));
        Actions action = new Actions(getDriver());
        action.click(we).perform();
        Thread.sleep(3000);

    }

    @And("I type answer {string} for question Other for quiz {string}")
    public void iTypeAnswerForQuestionOtherForQuiz(String textOfAnswer, String titleOfQuiz1) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h4[contains(text(),'" + titleOfQuiz1 + "' )]/..//textarea[@placeholder='Other']")).sendKeys(textOfAnswer);
        Thread.sleep(4000);
    }

    @And("I click Review Button for assignment {string}")
    public void iClickReviewButtonForAssignment(String quizTitle) {
        WebDriverWait wait = new WebDriverWait(getDriver(),2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//mat-card/h4[contains(text(),'My Assignments')]")));

        getDriver().findElement(By.xpath("//td[contains(text(),'"+quizTitle+"')]/..//span[contains(text(),'Go To Assessment')]/..")).click();

    }

    @Then("answer {string} in Other textarea is present in assessment {string}")
    public void answerInOtherTextareaIsPresentInAssessment(String textOfAnswer, String quizTitle) throws InterruptedException {
        String textOfAnswerDisplayed = getDriver().findElement(By.xpath("//h5[contains(text(),'Question 1')]/..//div[contains(text(),'Other')]/..")).getText();
        System.out.println(textOfAnswer);

        assertThat(textOfAnswerDisplayed.contains(textOfAnswer)).isTrue();
        Thread.sleep(2000);

    }

    @And("I confirm submisson in pop-up window")
    public void iConfirmSubmissonInPopUpWindow() {
        getDriver().findElement(By.xpath("//button[@aria-label = 'Close dialog']")).click();
    }

    @And("I wait for page Submit My Answers with element {string} to load")
    public void iWaitForPageSubmitMyAnswersWithElementToLoad(String nameOfPage) {
        WebDriverWait wait = new WebDriverWait(getDriver(), 4000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h5[contains(text(),'Log Out')]")));

    }

    @And("I click Review button for assignment {string} for student {string}")
    public void iClickReviewButtonForAssignmentForStudent(String quizTitle, String studentName) {

        getDriver().findElement(By.xpath("//td[contains(text(),'"+studentName+"')]/..//td[contains(text(), '"+quizTitle+"')]/..//button")).click();

        WebDriverWait wait = new WebDriverWait(getDriver(), 4000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[contains(text(),'Other')]")));

    }

    @And("I wait for page Submissions to load")
    public void iWaitForPageSubmissionsToLoad() {
        WebDriverWait wait = new WebDriverWait(getDriver(), 6000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[contains(text(),'Reviewed')]")));

    }

    @And("I click {string} on {string} page")
    public void iClickOnPage(String gradingStatus, String nameOfPage) throws InterruptedException {
        getDriver().findElement(By.xpath("//h4[contains(.,'"+nameOfPage+"')]/..//*[contains(., '"+gradingStatus+"')][@role='tab']")).click();
        Thread.sleep(3000);
    }

    @And("I click {string} button and wait")
    public void iClickButtonAndWait(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+buttonName+"')]/..")).click();
        Thread.sleep(6000);
    }

    @And("I confirm {string} in {string} pop-up window")
    public void iConfirmInPopUpWindow(String buttonName, String popUpName) {
        getDriver().findElement(By.xpath("//h1[contains(text(),'"+popUpName+"')]/..//button/span[contains(text(),'"+buttonName+"')]")).click();
    }

    @And("I select Context Menu button for assignment {string}")
    public void iSelectContextMenuButtonForAssignment(String quizzTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//h4[contains(text(), 'List of Assignments')]/..//span[contains(text(),'"+quizzTitle+"')]/../..//button")).click();
        Thread.sleep(3000);

    }

    @And("I click Delete Assignment in pop-up window")
    public void iClickDeleteAssignmentInPopUpWindow() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[@class='cdk-overlay-pane']//span[contains(text(),'Delete')]/../..//button")).click();
        Thread.sleep(3000);
    }

    @Then("I click Close in pop-up window")
    public void iClickCloseInPopUpWindow() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-dialog-container/..//button[contains(text(),close)]"));
        Thread.sleep(3000);
    }

    @And("I click Review button for assignment {string} for student {string} with {string}")
    public void iClickReviewButtonForAssignmentForStudent(String quizTitle, String studentName, String otherFieldInput) {
        getDriver().findElement(By.xpath("//td[contains(text(),'" + studentName + "')]/..//td[contains(text(), '" + quizTitle + "')]/..//button")).click();
        if (otherFieldInput.equals("null")) {
        } else {
            WebDriverWait wait = new WebDriverWait(getDriver(), 4000);
            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[contains(text(),'Other')]")));
        }
    }

    @And("I select {string} question type for question {int} and wait")
        public void iSelectQuestionTypeForQuestionAndWait (String questionType,int questionNumber){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q" + questionNumber + "')]/../../..//*[contains(text(), '" + questionType + "')]")).click();

            WebDriverWait wait = new WebDriverWait(getDriver(), 4000);
            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[contains(text(),'Q')]/../../..//*[@placeholder='Question *']")));
        }

    @Then("error message {string} is triggered under {string} field for assignment {string}")
    public void errorMessageIsTriggeredUnderFieldForAssignment(String textOfErrorMessage, String nameOfField, String quizTitle) {
        String errorMessage = getDriver().findElement(By.xpath("//h4[contains(text(),'"+quizTitle+"')]/..//*[contains(text(), '"+nameOfField+"')]/../../../..//*[contains(text() ,'"+textOfErrorMessage+"')]")).getText();
        System.out.println(errorMessage);

        assertThat(errorMessage.contains(textOfErrorMessage)).isTrue();

    }

    @Then("I submit Quiz {string}")
    public void iSubmitQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizTitle+"')]/..//span[contains(text(),'Submit My Answers')]/..")).click();

        WebDriverWait wait = new WebDriverWait(getDriver(),2000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[contains(text(), 'Succes')]")));
    }

    @And("I click {string} button for Quizz {string}")
    public void iClickButtonForQuizz(String buttonName, String quizTitle) {
        getDriver().findElement(By.xpath("//h4[contains(text(),'"+quizTitle+"')]/..//span[contains(text(), '"+buttonName+"')]/..")).click();
    }

    @Then("quizz {string} is not present on list of quizzes")
    public void quizzIsNotPresentOnListOfQuizzes(String arg0) {
    }
}

