package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class submissionStatus {
    @And("I click Create New Assignment button")
    public void iClickCreateNewAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Select Quiz To Assign")
    public void iClickOnSelectQuizToAssign() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]/..")).click();
        Thread.sleep(1000);
    }

    @And("I click on {string} Quiz")
    public void iClickOnQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(.,'"+quizName+"')]/..")).click();
        Thread.sleep(1000);
    }

    @And("I click on {string}")
    public void iClickOn(String studName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-list-option[contains(., 'Sophia Jones')]")).click();
        Thread.sleep(1000);
    }

    @And("I click Give Assignment button")
    public void iClickGiveAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(.,'Give Assignment')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Log Out button")
    public void iClickOnLogOutButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
    }

    @And("I click Go To Assignment button with {string}")
    public void iClickGoToAssignmentButtonWith(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(.,'Go To Assessment')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Submit My Answers button")
    public void iClickOnSubmitMyAnswersButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Submit My Answers')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Ok button")
    public void iClickOkButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
        Thread.sleep(1000);
    }


    @And("I click {string} for option {int} for question {int}")
    public void iClickForOptionForQuestion(String textAnswer, int optionNumber, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(), 'Incorrect Answer')]/..//div[@class='mat-radio-container']")).click();
        Thread.sleep(1000);
    }

    @Then("Status for quiz {string} is {string}")
    public void statusForQuizIs(String quizName, String status) {
        String xPath = "//td[contains(text(),'"+quizName+"')]/..//span[contains(text(), '"+status+"')]";
        WebElement quizStatus= getDriver().findElement(By.xpath(xPath));
        assertThat(quizStatus.isDisplayed()).isTrue();

    }
}
