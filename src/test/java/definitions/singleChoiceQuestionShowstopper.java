package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionShowstopper {

    @And("I click on checkbox {string} on quiz-builder page")
    public void iClickOnCheckboxOnQuizBuilderPage(String checkboxOnQuizBuilderPage) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Show-Stopper')]/../..//*[@class='mat-checkbox-inner-container']")).click();
    }

    @And("I find the quiz {string} on quizzes page")
    public void iFindTheQuizOnQuizzesPage(String nameOfCreatedQuiz) {
        assertThat(getDriver().findElement(By.xpath("//*[@class='quizzes']//*[contains(text(),'"+nameOfCreatedQuiz+"')])")).getText().contains(nameOfCreatedQuiz)).isTrue();
    }

    @And("I click on the quiz {string} on quizzes page")
    public void iClickOnTheQuizOnQuizzesPage(String nameOfCreatedQuiz) {
        String newName = getDriver().findElement(By.xpath("//*[text()[contains(.,'"+nameOfCreatedQuiz+"')]]")).getText();
        assertThat(newName.contains(nameOfCreatedQuiz)).isTrue();
    }


    @And("I click on quiz and {string} button of selected quiz {string} on quizzes page")
    public void iClickOnQuizAndButtonOfSelectedQuizOnQuizzesPage(String buttonNameOnSelectedQuiz, String nameOfCreatedQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+nameOfCreatedQuiz+"')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+nameOfCreatedQuiz+"')]/../../..//*[contains(text(), '"+buttonNameOnSelectedQuiz+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} button of selected quiz {string} on quizzes page")
    public void iClickOnButtonOfSelectedQuizOnQuizzesPage(String buttonNameOnSelectedQuiz, String nameOfCreatedQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+nameOfCreatedQuiz+"')]/../../..//*[contains(text(), '"+buttonNameOnSelectedQuiz+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click {string} button on quiz Coformation module")
    public void iClickButtonOnQuizCoformationModule(String buttonNameOnSelectedQuiz) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), '"+buttonNameOnSelectedQuiz+"')]")).click();

    }

    @Then("I verify that quiz {string} is no longer present in list of quizzes")
    public void iVerifyThatQuizIsNoLongerPresentInListOfQuizzes(String quizTitle) throws InterruptedException {
       Thread.sleep(3000);
        String listOfQuizzes = getDriver().findElement(By.xpath("//div[@class='quizzes']")).getText();
        assertThat(listOfQuizzes.contains(quizTitle)).isFalse();
    }


    @And("I click on {int} option to see if get selected")
    public void iClickOnOptionToSeeIfGetSelected(int optionNum) throws InterruptedException {
        getDriver().findElement(By.xpath("(//*[@class='mat-radio-label-content'])["+optionNum+"]")).click();
        Thread.sleep(1000);
    }

    @And("I click {string} button on {string} page")
    public void iClickButtonOnPage(String buttonName, String pageName) throws InterruptedException {
            getDriver().findElement(By.xpath("//button/span[contains(text(),'"+buttonName+"')]")).click();
            Thread.sleep(1000);
    }

    @And("I select Group {string} from list")
    public void iSelectGroupFromList(String groupName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Group Filter']//*[@class='mat-select-arrow']")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@class='mat-option-text'][contains(text(),'"+groupName+"')]")).click();
    }

    @And("I select Quiz To Assign {string}")
    public void iSelectQuizToAssign(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-input-infix mat-form-field-infix']/../..//*[@placeholder='Select Quiz To Assign']")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[@class ='mat-option-text'][contains( text(),'"+quizName+"')]")).click();
    }

    @And("I select a Student {string} to assign quiz")
    public void iSelectAStudentToAssignQuiz(String studentName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='selectedUsers']//*[text()[contains(.,'"+studentName+"')]]")).click();
        Thread.sleep(1000);
    }

    @And("I click on button {string}")
    public void iClickOnButton(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-button-wrapper'][contains(text(),'"+buttonName+"')]")).click();
        Thread.sleep(1000);
    }

    @And("I verify that quiz {string} is displayed in My assignments")
    public void iVerifyThatQuizIsDisplayedInMyAssignments(String quizName) {
        assertThat(getDriver().findElement(By.xpath("//mat-card[@class='page mat-card']")).getText().contains(quizName)).isTrue();
    }
}
