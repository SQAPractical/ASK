package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class MultipleChoiceQuestionText {
//    @When("I navigate to login page")
//    public void iNavigateToLoginPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/login");
//    }

//    @And("I type my email {string}")
//    public void iTypeMyEmail(String email) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
//    }
//
//    @And("I type my password {string}")
//    public void iTypeMyPassword(String password) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
//    }

//    @And("I click Sign In button")
//    public void iClickSignInButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(), 'Sign In')]")).click();
//        Thread.sleep(2000);
//    }
//
//    @And("I click on {string} on left menu")
//    public void iClickOnOnLeftMenu(String menuItem) throws InterruptedException {
//        getDriver().findElement(By.xpath("//h5[contains(text(), '"+menuItem+"')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I click Create New Quiz Button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }
//
    @And("i type quiz title {string}")
    public void iTypeQuizTitle(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Title Of The Quiz *']")).sendKeys(quizTitle);
    }
//
//    @And("I click Add question button")
//    public void iClickAddQuestionButton() {
//        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
//    }

    @And("I cselect {string} question type for question {int}")
    public void iCselectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
        Thread.sleep(2000);

    }

//    @And("I type text {string} for question {int}")
//    public void iTypeTextForQuestion(String questionText, int questionNumber) {
//        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[@placeholder  = 'Question *']")).sendKeys(questionText);
//    }

//    @And("I type text {string} for for option {int} for question {int}")
//    public void iTypeTextForForOptionForQuestion(String optionText, int optionNumber, int questionNumber) {
//        String xPath = "//*[contains(text(), 'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']";
//        getDriver().findElement(By.xpath(xPath)).sendKeys(optionText);
//    }

//    @And("I type text {string} for option {int} for question {int}")
//    public void iTypeTextForOptionForQuestion(String optionText, int optionNumber, int questionNumber) throws InterruptedException {
//        String xPath = "//*[contains(text(), 'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']";
//        getDriver().findElement(By.xpath(xPath)).sendKeys(optionText);
//        Thread.sleep(2000);
//    }


    @And("I select option {int}  as correct answer for question {int}")
    public void iSelectOptionAsCorrectAnswerForQuestion(int arg0, int arg1) throws InterruptedException {
        String xPath = "//ac-question-body-form/div[1]/div[2]/div[1]/div[2]/mat-checkbox[1]/label[1]/div[1]";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);
    }

    @Then("I click save Button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[normalize-space()='Save']")).click();
        Thread.sleep(2000);
    }

    @Then("quiz {string} appeared in list of quizzes")
    public void quizAppearedInListOfQuizzes(String quizName) {
        String listOfQuizzes = getDriver().findElement(By.xpath("//*[@class='quizzes']")).getText();
        System.out.println(listOfQuizzes);
        assertThat(listOfQuizzes.contains(quizName)).isTrue();
    }

//    @And("I click on Preview button for quiz {string}")
//    public void iClickOnPreviewButtonForQuiz(String quizName) {
//        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '"+quizName+"')]/..")).click();
//        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '"+quizName+"')]/../../..//*[contains(text(), 'Preview')]")).click();
//
//    }

    @Then("I click on the empty field")
    public void iClickOnTheEmptyField() throws InterruptedException {
        //getDriver().findElement(By.xpath("//*[contains(text(), 'Title Of The Quiz')]")).click();
        //getDriver().findElement(By.xpath("//*[contains(text(), 'Title Of The Quiz')]/../..")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.BACK_SPACE);
        Thread.sleep(2000);






    }

    @Then("I check message {string} appeared")
    public void iCheckMessageAppeared(String message) {
        String xPathFormessage = "//*[contains(text(), '"+message+"')]";
        assertThat(getDriver().findElement(By.xpath(xPathFormessage)).isDisplayed()).isTrue();
    }

//    @And("I click Close button")
//    public void iClickCloseButton() {
//        getDriver().findElement(By.xpath("//*[contains(text(), 'Close')]")).click();
//    }

//    @And("I delete Quiz {string}")
//    public void iDeleteQuiz(String QuizName) throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(), '"+QuizName+"')]/../../..//*[contains(text(), 'Delete')]")).click();
//        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../../..//*[contains(text(), 'Delete')]")).click();
//        Thread.sleep(2000);
//    }
}
