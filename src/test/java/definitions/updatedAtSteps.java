package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class updatedAtSteps {
    
    private static String timeStamp;
    private static String QuizName;

    @Given("I open url {string}")
    public void iOpenUrl(String url) {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @Then("I choose question type {string}")
    public void iChooseQuestionType(String type) {
        getDriver().findElement(By.xpath("//mat-radio-button[contains(., '"+type+"')]")).click();
    }

    @Then("I type title {string} in Quiz name field")
    public void iTypeTitleInQuizNameField(String QuizName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(QuizName);
        updatedAtSteps.QuizName = QuizName;
    }
    @Then("I click on element just created by me")
    public void iClickOnElementJustCreatedByMe() throws InterruptedException {
        System.out.println(QuizName);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+QuizName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I note down the current Date and Time")
    public void iNoteDownTheCurrentDateAndTime() {
        String timeStamp = new SimpleDateFormat("MM/dd/yyyy HH:mm").format(Calendar.getInstance().getTime());
        updatedAtSteps.timeStamp = timeStamp;

    }

    @Then("Updated At: DateTime match with noted down")
    public void updatedAtDateTimeMatchWithNotedDown() {

        String updatedAt = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+QuizName+"')]/parent::span/parent::mat-expansion-panel-header//following-sibling::div//div//div//table//tbody//tr[5]//td[2]")).getText();
        System.out.println(updatedAt);
        String updatedAtShort = updatedAt.substring(0, updatedAt.length()-3);
        assertThat(timeStamp).isEqualTo(updatedAtShort);
    }

    @Then("I click on Edit button")
    public void iClickOnEditButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+QuizName+"')]/../../..//*[contains(text(),'Edit')]")).click();
        Thread.sleep(1000);
    }


    //mat-panel-title[contains(text(),'TestQuiz11')]/parent::span/parent::mat-expansion-panel-header//following-sibling::div//div//div//div//a//button"
}
