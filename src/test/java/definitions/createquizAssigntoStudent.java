package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class createquizAssigntoStudent {
//    @Given("I open {string} page")
//    public void iOpenPage(String pageName) {
//        if (pageName.equalsIgnoreCase("login")){
//            getDriver().get("http://ask-stage.portnov.com/#/login");
//        }
//        else if (pageName.equalsIgnoreCase("registration")) {
//            getDriver().get("http://ask-stage.portnov.com/#/registration");
//        }
//    }
//
//    @When("I type email {string} on login page")
//    public void iTypeEmailOnLoginPage(String email) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
//    }
//
//    @And("I type password {string} on login page")
//    public void iTypePasswordOnLoginPage(String password) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
//    }
//
//    @And("I click Sign in button")
//    public void iClickSignInButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
//        Thread.sleep(2000);
//    }

//    @Then("Text {string} appears")
//    public void textAppears(String text) {
//        WebElement actualText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
//        assertThat(actualText.isDisplayed()).isTrue();
//    }



    @Then("I click quizzes button on left side")
    public void iClickQuizzesButtonOnLeftSide() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='Quizzes']")).click();
        Thread.sleep(4000);
    }


    @Then("I click {string} button")
    public void iClickButton(String CreateNewQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(4000);
    }


    @And("I type the title of quiz {string}")
    public void iTypeTheTitleOfQuiz(String TitleQuizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(TitleQuizName);
        Thread.sleep(3000);
    }

    @Then("I click Add Question")
    public void iClickAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]/..")).click();
        Thread.sleep(3000);

    }

    @And("I select Question type as Textual")
    public void iSelectQuestionTypeAsTextual() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();
        Thread.sleep(4000);
    }

    @Then("I type in Question field as {string}")
    public void iTypeInQuestionFieldAs(String question1) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question1);
        Thread.sleep(3000);
    }


    @Then("I select Is Show-Stopper option")
    public void iSelectIsShowStopperOption() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Show-Stopper')]")).click();
        Thread.sleep(5000);
    }



    @And("I click save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@type='button']//*[contains(text(),'Save')]")).click();
        Thread.sleep(4000);

    }

    @Then("I click on Assignments on left side")
    public void iClickOnAssignmentsOnLeftSide() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Assignments')]")).click();
        Thread.sleep(4000);

    }
    @Then("I click create new assignment button")
    public void iClickCreateNewAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Assignment')]")).click();
        Thread.sleep(3000);
    }

    @And("select Quiz to assign {string}")
    public void selectQuizToAssign(String QuizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//*[contains(text(),'"+QuizName+"')]")).click();
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//div[@class='mat-list-text' and contains(string(),\"Sujanya AutoStudent new\")]")).click();
        Thread.sleep(5000);

    }
    @Then("I click on give assignment")
    public void iClickOnGiveAssignment() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-primary']/span[contains(text(),'Give Assignment')]")).click();
        Thread.sleep(5000);

    }
    @And("as a teacher I logout")
    public void asATeacherILogout() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
        getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']//span[contains(text(),'Log Out')]/..")).click();
        Thread.sleep(5000);

    }

    @Then("I click on go to my assignments")
    public void iClickOnGoToMyAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To My Assignments')]")).click();
        Thread.sleep(4000);

    }

    @Then("I click on go to assessment")
    public void iClickOnGoToAssessment() throws InterruptedException {
        getDriver().findElement(By.xpath("//tr[@class='ng-star-inserted']/..//*[contains(text(),'Go To Assessment')]")).click();
        Thread.sleep(4000);

    }

    @Then("I check if question number one is showstopper and enter the answer {string}")
    public void iCheckIfQuestionNumberOneIsShowstopperAndEnterTheAnswer(String answer) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-card ng-star-inserted']//*[contains(text(),'Question 1 / 1')]/..//*[contains(text(),'Show-Stopper Question')]/..//*[@placeholder='Enter your answer']")).sendKeys(answer);
        // getDriver().findElement(By.xpath("//textarea[@id='mat-input-14']")).sendKeys(answer);
        Thread.sleep(4000);
    }

    @Then("I click on submit my answers")
    public void iClickOnSubmitMyAnswers() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Submit My Answers')]")).click();
        Thread.sleep(4000);

    }

    @Then("i click on ok button")
    public void iClickOnOkButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-notification[1]/div[2]/button[1]")).click();
        Thread.sleep(4000);

    }

    @Then("I click on logout button")
    public void iClickOnLogoutButton() throws InterruptedException {

        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(4000);
    }

    @Then("I select the quiz name {string}")
    public void iSelectTheQuizName(String QuizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+QuizName+"')]")).click();
        Thread.sleep(5000);
    }

    @Then("I click on delete button for the {string}")
    public void iClickOnDeleteButtonForThe(String delQuizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+delQuizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']//*[contains(text(),'Delete')]")).click();
        Thread.sleep(5000);


    }



}


