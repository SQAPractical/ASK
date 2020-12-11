package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionText {
    @And("I click on {string} button")
    public void iClickOnButton(String createNewQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }
    @And("I click {string} field")
    public void iClickField(String argo) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).click();
    }

    @And("I type {string} for the name of quiz")
    public void iTypeForTheNameOfQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(quizName);
        Thread.sleep(2000);
    }

    @And("I click {string}")
    public void iClick(String addQuestion) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
    }

//    @And("I click {string} radio button")
//    public void iClickRadioButton(String arg0) throws InterruptedException {
//        getDriver().findElement(By.xpath("//label[@class='mat-radio-label']/div[contains(text(), 'Single')]")).click();
//    }

    @And("I click {string} filed")
    public void iClickFiled(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).click();
    }

    @And("I Type {string} as question")
    public void iTypeAsQuestion(String qname) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(qname);
        Thread.sleep(2000);
    }

    @And("I Type {string} as question for question {int}")
    public void iTypeAsQuestionForQuestion(String qname, int numberOfQuestion) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+numberOfQuestion+"')]/../../..//*[@placeholder='Question *']")).sendKeys(qname);


    }

    @And("I click {string} answer")
    public void iClickAnswer(String argo) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).click();
    }

    @And("I Type {string} for answer")
    public void iTypeForAnswer(String option1) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).sendKeys(option1);
        Thread.sleep(2000);

    }

    @And("I Type {string} answer for option {int} for question {int}")
    public void iTypeAnswerForOptionForQuestion(String textOfOption, int numberOfOption, int numberOfQuestion) throws InterruptedException {
        Thread.sleep(2000);
//        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+numberOfQuestion+"')]/../../..//*[@placeholder='Option "+numberOfOption+"*']")).click();

        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+numberOfQuestion+"')]/../../..//*[@placeholder='Option "+numberOfOption+"*']")).sendKeys(textOfOption);
    }


    @And("I click option {int}")
    public void iClickOption(int arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 2*']")).click();
    }

    @And("I type {string}")
    public void iType(String option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='option' and @placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(2000);
    }


    @And("I click radio button correct answer")
    public void iClickRadioButtonCorrectAnswer() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Option 1')]/../../../../../..//mat-radio-button/label")).click();
        Thread.sleep(2000);
    }


    @And("I select option {int} for question {int} as correct answer")
    public void iSelectOptionForQuestionAsCorrectAnswer(int numberOfOption, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), 'Option "+numberOfOption+"')]/../../../../../..//mat-radio-button/label")).click();
    }

    @And("I click Title field")
    public void iClickTitleField() {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).click();
    }

    @And("I click Question filed")
    public void iClickQuestionFiled() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).click();
    }

    @And("I click option {int} answer")
    public void iClickOptionAnswer(int arg0) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).click();
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

    @Then("List of Quizzes page loads")
    public void listOfQuizzesPageLoads() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/quizzes");
        Thread.sleep(2000);
    }

    @And("I delete the question")
    public void iDeleteTheQuestion() throws InterruptedException {

        String os = System.getProperty("os.name");
        if (os.equals("Mac")){
            getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        }
        else {
            getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        }
       // getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(Keys.BACK_SPACE);

        Thread.sleep(200);
        System.out.println(os);
    }

//    @Then("This field is required message appear")
//    public void thisFieldIsRequiredMessageAppear() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*//*[@placeholder='Question *']/../../..//*[contains(@id,'mat-error')][contains(text(),'This field is required')]")).sendKeys();
//        Thread.sleep(2000);
//
//    }

    @Then("This is too long, should be not more than max characters message appear")
    public void thisIsTooLongShouldBeNotMoreThanMaxCharactersMessageAppear() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']/../../..//*[contains(@id,'mat-error')][contains(text(),'This is too long')]")).sendKeys();
        Thread.sleep(2000);
    }

    @Then("List of Quizzes contain quiz {string}")
    public void listOfQuizzesContainQuiz(String quizTitle) throws InterruptedException {
        String listOfQuizzesContent = getDriver().findElement(By.xpath("//div[@class='quizzes']")).getText();
//        System.out.println(listOfQuizzesContent);
        assertThat(listOfQuizzesContent.contains(quizTitle)).isTrue();
        Thread.sleep(2000);
        System.out.println("List of quizzes contain " + quizTitle);
    }


    @And("I click on quiz {string}")
    public void iClickOnQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I delete quiz {string}")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }
}

