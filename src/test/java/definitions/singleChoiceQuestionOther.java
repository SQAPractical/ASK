package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class singleChoiceQuestionOther {
    public static String quizName;
    public static String buttonName;
    public static String Preview;


//    @And("I click quizzes on left menu")
//    public void iClickQuizzesOnLeftMenu() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[text()='Quizzes']/..")).click();
//        Thread.sleep(2000);
//    }

//    @And("I click on Create New Quiz at the bottom of the page")
//    public void iClickOnCreateNewQuizAtTheBottomOfThePage() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[text()='Create New Quiz']/..")).click();
//        Thread.sleep(2000);
//    }

//    @And("I type {string} in Title Of The Quiz field")
//    public void iTypeInTitleOfTheQuizField(String quizName) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizName);
//    }

    @Then("I click the Add Question button")
    public void iClickTheAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]/../..")).click();
//        Thread.sleep(2000);

    }

    @And("I click Single choice option")
    public void iClickSingleChoiceOption() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Single-Choice')]/..")).click();
        Thread.sleep(2000);
    }

    @Then("I type {string} on question field")
    public void iTypeInQuestionField(String questionField) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(questionField);
    }


    @And("I type {string} the answer in OptionOne text field")
    public void iTypeTheAnswerInOptionTextFieldTextField(String Option) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='option']")).sendKeys(Option);
//        Thread.sleep(2000);
    }

    @Then("I type {string} the answer in OptionTwo text field")
    public void iTypeTheAnswerInOptionTwoTextFieldTextField(String Option) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(Option);
//        Thread.sleep(2000);
    }

    @And("I click on the optionOne button")
    public void iChoosingAndClickTheOptionOneButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
//        Thread.sleep(2000);
    }

    @Then("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]/..")).click();
        Thread.sleep(4000);
    }

    @And("I click on the created quiz {string} from the Quiz List")
    public void iClickOnTheCreatedQuizFromTheQuizList(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        singleChoiceQuestionOther.quizName = quizName;
        Thread.sleep(2000);
    }

/*
    /@Then("I click on Preview button")
    public void iClickOnPreviewButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'QA Test')]/../../../div//button//span[contains(text(),'Preview')]")).click();
       // choice.buttonName = buttonName;
       // choice.Preview = Preview;
        Thread.sleep(2000);
   }

                                        */
    //////



    @And("I click log Out button")
    public void iClickLogOutButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click to confirmation log Out button")
    public void iClickToConfirmationLogOutButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(3000);
    }

   /*@And("I click My Assignments button on the Home Page")
    public void iClickGoToMyAssignmentsButtonOnTheHomePage() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='My Assignments']/..")).click();
        Thread.sleep(2000);
    }
    */


    @Then("I click Go to My Assignments button")
    public void iClickGoToMyAssignmentsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To My Assignments')]")).click();
        Thread.sleep(2000);
    }


    @And("I click Preview button near quiz {string}")
    public void iClickPreviewButtonNearQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Preview')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Other text area checkbox")
    public void iClickOnOtherTextAreaCheckbox() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Include')]/..")).click();
    }
}

