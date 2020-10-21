package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class editquizAssigntoStudent {
    @Then("I click on edit button")
    public void iClickOnEditButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'suja-Quiz-Showstopper-edit')]/../../..//*[contains(text(),'Edit')]")).click();
        Thread.sleep(5000);

    }


    @And("I click first question")
    public void iClickFirstQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-expansion-panel-header")).click();
        Thread.sleep(7000);
    }


    @Then("I click on preview button")
    public void iClickOnPreviewButton() throws InterruptedException {


    }

    @Then("I click on preview button for quiz {string}")
    public void iClickOnPreviewButtonForQuiz(String QuizName) throws InterruptedException {

        getDriver().findElement(By.xpath("//*[contains(text(),'"+QuizName+"')]/../../..//*[contains(text(),'Preview')]")).click();
        Thread.sleep(5000);
    }

    @And("I check if question number one is showstopper")
    public void iCheckIfQuestionNumberOneIsShowstopper() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-card ng-star-inserted']//*[contains(text(),'Question 1 / 1')]/..//*[contains(text(),'Show-Stopper Question')]"));
        Thread.sleep(5000);



    }

    @Then("I click on close button")
    public void iClickOnCloseButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Close')]")).click();
        Thread.sleep(3000);

    }



}
