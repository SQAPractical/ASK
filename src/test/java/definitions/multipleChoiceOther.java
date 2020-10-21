package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;



import static org.testng.AssertJUnit.assertEquals;
import static support.TestContext.getDriver;

public class multipleChoiceOther {
    public static String textOther;
    public static String quizName;

    @When("I click on {string} option button")
    public void iClickOnOptionButton(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'" + text + "')]")).click();
        quizName = text;
        iSleep();
    }

    @When("I click on the button Add Question")
    public void iClickOnTheButtonAddQuestion() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();

    }

    @When("I type {string} into Question input field")
    public void iTypeIntoQuestionInputField(String text) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(text);

    }

    @And("I type {string} into Question {string} input field")
    public void iTypeIntoQuestionInputField(String text, String qNumber) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option " + qNumber + "*']")).sendKeys(text);

    }

    @When("I click on checkbox button next to Option {string}")
    public void iClickOnCheckboxButtonNextToOption(String qNumber) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option " + qNumber + "*']/../../../../..//mat-checkbox")).click();
    }

    @And("I sleep")
    public void iSleep() {
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @When("I click {string} button in the quiz window title {string}")
    public void iClickButtonInTheQuizWindowTitle(String buttonName,String qName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qName + "')]/../../..//*[contains(text(),'"+buttonName+"')]")).click();
    }

    @And("I choose student name {string} and click on the name")
    public void iChooseStudentNameAncClickOnTheName(String sName) {
        getDriver().findElement(By.xpath("//mat-list-option[contains(.,'" + sName + "')]")).click();
    }

    @And("I click on Log Out option button")
    public void iClickOnLogOutOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Give Assignment option button")
    public void iClickOnGiveAssignmentOptionButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
    }

    @And("I click on Go To Assessment option button")
    public void iClickOnGoToAssessmentOptionButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'" + quizName + "')]/..//*[contains(text(),'Go To Assessment')]")).click();
    }

    @When("I click on answer choice {string}")
    public void iClickOnAnswerChoice(String answer) {
        getDriver().findElement(By.xpath("//span[contains(@class, 'checkbox')][contains(text(),'" + answer + "')]")).click();
    }

    @And("I type text {string} into Other text field")
    public void iTypeTextIntoOtherTextField(String text) {
        textOther = text;
        getDriver().findElement(By.xpath("//textarea[@placeholder='Other']")).sendKeys(textOther);
    }

    @Then("text typed into {string} input field can be seen")
    public void textTypedIntoInputFieldCanBeSeen(String text) {
//        textOther = "checking for test";
        String fieldText = getDriver().findElement(By.xpath("//*[contains(text(),'" + text + "')]/..")).getText();
        String[] actualText = fieldText.split(":\n");
        assertEquals(textOther, actualText[1]);
    }

    @And("I click on Review button for student {string}")
    public void iClickOnReviewButtonForStudent(String sName) {
        getDriver().findElement(By.xpath("//table//*[contains(text(),'" + sName + "')]/..//*[contains(text(),'Review')]")).click();

    }
    @When("I click on More Options button next to Quiz Name {string}")
    public void iClickOnMoreOptionsButtonNextToQuizName(String qName) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+qName+"')]/..//span")).click();

    }
}