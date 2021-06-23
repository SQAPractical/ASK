package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class textualQuestion {
    @And("I click on Quizzes button")
    public void iClickOnQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Create New  Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type Title {string}")
    public void iTypeTitle(String title) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(title);
    }

    @And("I click on Textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//ac-question-body-form/div[1]/div[1]/div[1]/mat-radio-group[1]/mat-radio-button[1]/label[1]/div[1]/div[1]")).click();
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String Question0) {
        getDriver().findElement(By.xpath("//textarea[@id='mat-input-3']")).sendKeys(Question0);
    }

}
