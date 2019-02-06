package study.qa.automation.stepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import static study.qa.automation.utils.TestContext.getDriver;

public class def_3_6_ig {

    @And("^Select Textual Type of questionOne$")
    public void selectTextualTypeOfQuestionOne() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionFirst \"([^\"]*)\"$")
    public void typeTextOfQuestionFirst(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Select Textual Type of questionTwo$")
    public void selectTextualTypeOfQuestionTwo() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q2:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionSecond \"([^\"]*)\"$")
    public void typeTextOfQuestionSecond(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Select Textual Type of questionThree$")
    public void selectTextualTypeOfQuestionThree() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q3:')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionThird \"([^\"]*)\"$")
    public void typeTextOfQuestionThird(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }
    //------------------------------------------------------------------
    @And("^Select Single-Choice Type of questionFour$")
    public void selectSingleChoiceTypeOfQuestionOne() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//div[contains(text(), 'Single-Choice')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionFour \"([^\"]*)\"$")
    public void typeTextOfQuestionFour(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Type text in OptionsFour \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsFourAnd(String option1, String option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(250);
    }

    @And("^Select first option as correct answer questionFour$")
    public void selectFirstOptionAsCorrectAnswerQuestionFour() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
        Thread.sleep(250);
    }

    @And("^Select Single-Choice Type of questionFive$")
    public void selectSingleChoiceTypeOfQuestionFive() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//div[contains(text(), 'Single-Choice')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionFive \"([^\"]*)\"$")
    public void typeTextOfQuestionFive(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Type text in OptionsFive \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsFiveAnd(String option1, String option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(250);
    }

    @And("^Select second option as correct answer questionFive$")
    public void selectSecondOptionAsCorrectAnswerQuestionFive() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//*[@placeholder='Option 2*']/../../../../..//mat-radio-button")).click();
        Thread.sleep(250);
    }

    @And("^Select Single-Choice Type of questionSix$")
    public void selectSingleChoiceTypeOfQuestionSix() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//div[contains(text(), 'Single-Choice')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionSix \"([^\"]*)\"$")
    public void typeTextOfQuestionSix(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Type text in OptionsSix \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsSixAnd(String option1, String option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(250);
    }

    @And("^Select first option as correct answer questionSix$")
    public void selectSixOptionAsCorrectAnswerQuestionSix() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
        Thread.sleep(250);
    }
    //---------------------------------------------------------------------------
    @And("^Select Multiple-Choice Type of questionSeven$")
    public void selectMultipleChoiceTypeOfQuestionSeven() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//div[contains(text(), 'Multiple-Choice')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionSeven \"([^\"]*)\"$")
    public void typeTextOfQuestionSeven(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Type text in OptionsSeven \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsSevenAnd(String option1, String option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(250);
    }

    @And("^Select first and second option as correct answers questionSeven$")
    public void selectFirstAndSecondOptionAsCorrectAnswersQuestionSeven() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//*[@placeholder='Option 2*']/../../../../..//mat-checkbox")).click();
        Thread.sleep(250);
    }

    @And("^Select Multiple-Choice Type of questionEight$")
    public void selectMultipleChoiceTypeOfQuestionEight() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//div[contains(text(), 'Multiple-Choice')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionEight \"([^\"]*)\"$")
    public void typeTextOfQuestionEight(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Type text in OptionsEight \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsEightAnd(String option1, String option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(250);
    }

    @And("^Select first and second option as correct answers questionEight$")
    public void selectFirstAndSecondOptionAsCorrectAnswersQuestionEight() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//*[@placeholder='Option 2*']/../../../../..//mat-checkbox")).click();
        Thread.sleep(250);
    }

    @And("^Select Multiple-Choice Type of questionNine$")
    public void selectMultipleChoiceTypeOfQuestionNine() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//div[contains(text(), 'Multiple-Choice')]")).click();
        Thread.sleep(250);
    }

    @And("^Type text of QuestionNine \"([^\"]*)\"$")
    public void typeTextOfQuestionNine(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(250);
    }

    @And("^Type text in OptionsNine \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsNineAnd(String option1, String option2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(250);
    }

    @And("^Select first and second option as correct answers questionNine$")
    public void selectFirstAndSecondOptionAsCorrectAnswersQuestionNine() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//*[@placeholder='Option 2*']/../../../../..//mat-checkbox")).click();
        Thread.sleep(250);
    }


    @Then("^Verify that quiz \"([^\"]*)\" was created$")
    public void verifyThatQuizWasCreated(String arg0) throws Throwable {
        getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'Testing Ig')]")).click();
        Thread.sleep(5000);
        System.out.println("Verify that quiz was created");
    }

    @And("^Delete quiz \"([^\"]*)\"$")
    public void deleteQuiz(String quiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Testing Ig')]/../../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);

//        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
//        Thread.sleep(2000);
//        int quizzes = getDriver().findElements(By.xpath("//*[contains(text(), 'Testing Ig')]")).size();
//        for (int i = 0; i < quizzes; i++) {
//            getDriver().findElement(By.xpath("//*[contains(text(), 'Testing Ig')]")).click();
//            Thread.sleep(1000);
//            getDriver().findElement(By.xpath("//*[contains(text(), 'Testing Ig')]/../../..//*[contains(text(), 'Delete')]")).click();
//            Thread.sleep(1000);
//            getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../../..//*[contains(text(), 'Delete')]")).click();
//            Thread.sleep(5000);
//        }
//
   }
}


