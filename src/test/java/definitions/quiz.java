package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java8.Th;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class quiz<attempt, i> {
    @And("I click Quizzes button")
    public void iClickQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Create new quiz")
    public void iClickCreateNewQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

//    @Then("I type title of the quiz {string}")
//    public void iTypeTitleOfTheQuiz(String title) {
//        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
//    }

    @And("I click Add question")
    public void iClickAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
        Thread.sleep(1000);
    }


    @Then("I click another Add Question max button")
    public void iClickAnotherAddQuestionMaxButton() throws InterruptedException {
        WebElement buttonMax = getDriver().findElement(By.xpath("//span[@class=\"mat-button-wrapper\"]/*"));
        int i;
        for (i = 1; i <= 49; i++) {
            buttonMax.click();
        }
    }

    @Then("I click another Add Question max+one button")
    public void iClickAnotherAddQuestionMaxOneButton() {
        WebElement buttonMax = getDriver().findElement(By.xpath("//span[@class=\"mat-button-wrapper\"]/*"));
        int i;
        for (i = 1; i <= 50; i++) {
            buttonMax.click();
        }
    }
}