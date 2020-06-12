package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class persentage {
        @Then("I Add Question")
        public void iAddQuestion() throws InterruptedException {
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        }

        @Then("I choose Single-Choice question for question {int}")
        public void iChooseSingleChoiceQuestionForQuestion(int a) {
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+ a +"')]/../../..//div[contains(text(),'Single-Choice')]")).click();
        }

        @Then("I click on Quizzes button")
        public void iClickOnQuizzesButton() throws InterruptedException {
            getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
            Thread.sleep(2000);
        }

//        @Then("I click on Create New Quiz button")
//        public void iClickOnCreateNewQuizButton() {
//            getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
//        }

        @Then("I type name of quiz {string} into Title Of The Quiz")
        public void iTypeNameOfQuizIntoTitleOfTheQuiz(String text) {
            getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
        }

//        @Then("I click on Add Question button")
//        public void iClickOnAddQuestionButton() {
//            getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
//        }

        @When("I type the text of Question {int} : {string}")
        public void iTypeTheTextOfQuestion(int a, String text) {
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+ a +"')]/../../..//textarea[@placeholder='Question *']")).sendKeys(text);
        }

        @Then("I type the text {string} in the Option {int} of Question {int}")
        public void iTypeTheTextInTheOptionOfQuestion(String text, int a, int b) {
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+ b +"')]/../../..//*[@placeholder='Option "+ a +"*']")).sendKeys(text);
        }

        @Then("I mark Option {int} as the correct answer in Question {int}")
        public void iMarkOptionAsTheCorrectAnswerInQuestion(int a, int b) {
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+ b +"')]/../../..//*[@placeholder='Option "+ a +"*']/../../../../..//*[contains(@class, 'mat-radio-container')]")).click();
        }

    @Then("I click SAVE QUIZ button")
    public void iClickSAVEQUIZButton() {
            getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @Then("I click ASSIGNMENTS in menu")
    public void iClickASSIGNMENTSInMenu() {
            getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
    }

    @Then("I click Create new Assignment button")
    public void iClickCreateNewAssignmentButton() {
            getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
    }

    @Then("I assign Student Assignment {string}")
    public void iAssignStudentAssignment(String text) {
            getDriver().findElement(By.xpath("//mat-list-option[contains(.,'"+ text +"')]//mat-pseudo-checkbox")).click();

    }

    @Then("I choose Quiz {string} for assign")
    public void iChooseQuizForAssign(String text) throws Exception{
            getDriver().findElement(By.xpath("//*[contains(text(), 'Select Quiz To Assign')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@class='mat-option-text'][contains(text(),'"+ text +"')]")).click();
    }

    @Then("I click GIVE ASSIGNMENT button")
    public void iClickGIVEASSIGNMENTButton() {
            getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
    }

    @Then("I click MY ASSIGNMENTS button")
    public void iClickMYASSIGNMENTSButton() {
            getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
    }

//    @Then("I click GO TO ASSESSMENT button on quiz {string}")
//    public void iClickGOTOASSESSMENTButtonOnQuiz(String text) {
//            getDriver().findElement(By.xpath("//tr[@class='ng-star-inserted']/../../..//*[contains(text(),'"+ text +"')]/../../..//*[@class='mat-raised-button mat-primary']")).click();
//    }

    @Then("I choose answer {int} in question {int}")
    public void iChooseAnswerInQuestion(int a, int b) {
        getDriver().findElement(By.xpath("//mat-card["+ b +"]//*[contains(@class, 'mat-accent')]["+ a +"]//*[contains(@class, 'mat-radio-container')]")).click();
    }

    @Then("I click SUBMIT MY ANSWERS button")
    public void iClickSUBMITMYANSWERSButton() {
            getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']")).click();
    }

    @Then("I click to OK button")
    public void iClickToOKButton() {
            getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();

    }

    @Then("I click {string} button in menu")
    public void iClickButtonInMenu(String text) {
            getDriver().findElement(By.xpath("//h5[contains(text(),'"+ text +"')]")).click();
    }

    @Then("I click DETAILS button in quiz {string}")
    public void iClickDETAILSButtonInQuiz(String text) {
            getDriver().findElement(By.xpath("//tr[@class='ng-star-inserted']/../../..//*[contains(text(),'"+ text +"')]/../../..//*[@class='mat-button-wrapper']")).click();
    }

    @Then("{string} should contain {string}")
    public void actualPointsShouldContain(String name, String result) {
            String actualText = getDriver().findElement(By.xpath("//td[contains(text(),'"+ name +"')]/..//*[contains(text(),'"+ result +"')]")).getText();
            assertThat(actualText).contains(result);
    }

    @Then("I choose Textual question for question {int}")
    public void iChooseTextualQuestionForQuestion(int a) {
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+ a +"')]/../../..//div[contains(text(),'Textual')]")).click();
    }

    @Then("I the text of the answer {string} to question number {int}")
    public void iTheTextOfTheAnswerToQuestionNumber(String text, int a) {
            getDriver().findElement(By.xpath("//mat-card["+ a +"]//*[contains(@class, 'answer mat-input')][1]//*[contains(@id, 'mat-input')]")).sendKeys(text);
    }

    @Then("I click to SUBMISSION button")
    public void iClickToSUBMISSIONButton() {
            getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
    }

    @Then("I click GRADE button with {string} answers in Quiz {string}")
    public void iClickGRADEButtonWithAnswersInQuiz(String name, String quiz) {
            getDriver().findElement(By.xpath("//*[contains(text(),'"+ name +"')]/..//*[contains(text(),'"+ quiz +"')]/..//*[@class='mat-button-wrapper']")).click();
    }

    @Then("I click {int} times on the {string} button in question {int}")
    public void iClickTimesOnTheButtonInQuestion(int t, String symb, int quest) throws Exception{
        for (t = 0; t<6; t++){
            getDriver().findElement(By.xpath("//div[@class='grades']/..//*[contains(text(),'Question " + quest + "')]/../..//*[@class='mat-button-wrapper'][contains(text(),'" + symb + "')]")).click();
            Thread.sleep(600);
        }
    }

    @Then("status of quiz should be {string}")
    public void statusOfQuizShouldBe(String text) {
            String actualText = getDriver().findElement(By.xpath("//div[@class='test-result green'][contains(text(),'"+ text +"')]")).getText();
            assertThat(actualText).isEqualToIgnoringCase(text);
        }

    @Then("I click {string} button")
    public void iClickButton(String text) {
            getDriver().findElement(By.xpath("//span[contains(text(),'"+ text +"')]")).click();
    }

    @Then("I see that my quiz {string} has {string} the status")
    public void iSeeThatMyQuizHasTheStatus(String quiz, String status) {
        String actualText = getDriver().findElement(By.xpath("//tr[@class='ng-star-inserted']/..//*[contains(text(),'"+ quiz +"')]/..//*[contains(text(),'"+ status +"')]")).getText();
        assertThat(actualText).contains(status);
    }
}
