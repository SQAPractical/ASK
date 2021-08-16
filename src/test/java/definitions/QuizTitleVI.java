package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class QuizTitleVI {
    @And("I click Quizzes button")
    public void iClickQuizzesButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I type title {string}")
    public void iTypeTitle(String text) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(text);
    }

    @And("I click {string} button")
    public void iClickButton(String AddQuestion) {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
    }

    @And("I select textual type of question")
    public void iSelectTextualTypeOfQuestion() {
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-2']")).click();
    }

    @And("I type text of question {string}")
    public void iTypeTextOfQuestion(String text) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(text);
    }

    @And("I Click Save")
    public void iClickSave() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @And("I click title")
    public void iClickTitle() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).click();
    }


    @And("I click outside of title form")
    public void iClickOutsideOfTitleForm() {
        getDriver().findElement(By.xpath("//body")).click();
    }
}


