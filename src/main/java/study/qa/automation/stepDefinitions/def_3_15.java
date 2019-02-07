package study.qa.automation.stepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static study.qa.automation.utils.TestContext.getDriver;

public class def_3_15 {
    @And("^Click Go To Assessment button$")
    public void clickGoToAssessmentButton() throws Throwable{
        getDriver().findElement(By.xpath("//tbody//tr[1]/td/a/button")).click();
        Thread.sleep(1000);
    }

    @And("^Click Option A radiobutton$")
    public void clickOptionARadiobutton() throws Throwable{
        getDriver().findElement(By.xpath("//div[contains(text(),'Option A')]")).click();
        Thread.sleep(1000);
    }


    @And("^Push Submit My Answers button$")
    public void pushSubmitMyAnswersButton() throws  Throwable{
        getDriver().findElement(By.xpath("//button[@type='button']")).click();
        Thread.sleep(1000);
    }

    @And("^Click Ok on Success pop-up message$")
    public void clickOkOnSuccessPopUpMessage() throws Throwable{
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
        Thread.sleep(1000);
    }


    @And("^Click Submissions on left navigational panel$")
    public void clickSubmissionsOnLeftNavigationalPanel() throws Throwable{
        getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
        Thread.sleep(1000);
    }


    @And("^Click Automatically Graded tab$")
    public void clickAutomaticallyGradedTab() throws Throwable{
        getDriver().findElement(By.xpath("//div[contains(text(),'Automatically Graded')]")).click();
        Thread.sleep(1000);
    }


    @Then("^Verify that quiz \"([^\"]*)\" was assigned$")
    public void verifyThatQuizWasAssigned(String myQuiz) throws Throwable {
        WebElement quiz = getDriver().findElement(By.xpath("//h4[contains(text(), 'My Assignment')]/..//*[contains(text(), 'Testing Assignment Katty')]"));
        String textFromQuiz = quiz.getText();
        assertThat(textFromQuiz.contains(myQuiz)).isTrue();
        String name =getDriver().findElement(By.xpath("//div[@class='info']//h3")).getText();
        if (textFromQuiz.contains(myQuiz)){
            System.out.println(name+ " get assignment. ");
        }
    }


    @And("^Click My Assignments on the left navigational panel$")
    public void clickMyAssignmentsOnTheLeftNavigationalPanel() throws Throwable{
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
        Thread.sleep(5000);
    }

    @Then("^Verify that Quiz \"([^\"]*)\" was submitted$")
    public void verifyThatQuizWasSubmitted(String submittedQuiz) throws Throwable {
        WebElement quiz = getDriver().findElement(By.xpath("//td[contains(text(),'Testing Assignment Katty')]"));
        String textFromQuiz = quiz.getText();
        assertThat(textFromQuiz.contains(submittedQuiz)).isTrue();
        String name =getDriver().findElement(By.xpath("//td[contains(text(),'Testing Assignment Katty')]")).getText();
        if (textFromQuiz.contains(submittedQuiz)){
            System.out.println(name + " submitted quiz. ");
        }
    }
}
