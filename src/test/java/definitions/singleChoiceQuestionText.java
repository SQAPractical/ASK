package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Java6Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionText {

    @Then("I click Quizzes from the left Menu")
    public void iClickQuizzesFromTheLeftMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Create New Question")
    public void iClickCreateNewQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @Then("I type {string} in the Title of the Quiz")
    public void iTypeInTheTitleOfTheQuiz(String titleName) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(titleName);
        Thread.sleep(3000);
    }
//
//    @And("I click Add Question")
//    public void iClickAddQuestion() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
//        Thread.sleep(2000);
//    }

    @Then("Select Single Choice type of Question")
    public void selectSingleChoiceTypeOfQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Single-Choice')]")).click();
        Thread.sleep(3000);
    }

    @When("I type {string} in the Question field")
    public void iTypeInTheQuestionField(String question) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(question);
        Thread.sleep(2000);
    }

    @Then("In the first field of option type {string}")
    public void inTheFirstFieldOfOptionType(String optionField1) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(optionField1);
        Thread.sleep(2000);
    }

    @And("In the second field of option type {string}")
    public void inTheSecondFieldOfOptionType(String optionField2) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(optionField2);
        Thread.sleep(2000);
    }

    @Then("I click on the Add option")
    public void iClickOnTheAddOption() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Add Option')]")).click();
        Thread.sleep(2000);
    }

    @And("In the third field of option type {string}")
    public void inTheThirdFieldOfOptionType(String optionField3) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 3*']")).sendKeys(optionField3);
        Thread.sleep(2000);
    }

    @Then("I choose the second option as a correct answer")
    public void iChooseTheSecondOptionAsACorrectAnswer() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-8']")).click();
        Thread.sleep(2000);
    }

//    @And("I click Save button")
//    public void iClickSaveButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I click on the field Question and leave it empty")
    public void iClickOnTheFieldQuestionAndLeaveItEmpty() {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).click();
    }

    @Then("Text {string} should appears")
    public void textShouldAppears(String text) throws InterruptedException {
        WebElement expectedText = getDriver().findElement(By.xpath("//*[contains(text(),'" + text + "')]"));
        assertThat(expectedText.isDisplayed()).isTrue();
        Thread.sleep(2000);
    }

    @Then("I choose the first option as a correct answer")
    public void iChooseTheFirstOptionAsACorrectAnswer() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-6']")).click();
        Thread.sleep(2000);
    }
//
//    @And("I click button {string} on my Quiz")
//    public void iClickButtonOnMyQuiz(String buttonDelete) throws InterruptedException {
//        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Test 0.1')]/../../../div//button//span[contains(text(), '"+buttonDelete+"')]")).click();
//        Thread.sleep(2000);}

    @And("Click button Delete to Confirm my action")
    public void clickButtonDeleteToConfirmMyAction() throws InterruptedException {
        getDriver().findElement(By.xpath("//ac-modal-confirmation//button//span[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }

//    @Then("I click {string} quiz name")
//    public void iClickQuizName(String quizName) throws InterruptedException {
//        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I click button {string} on Quiz {string}")
    public void iClickButtonOnQuiz(String delete, String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../../div//button//span[contains(text(), '"+delete+"')]")).click();
        Thread.sleep(2000);
    }

}

