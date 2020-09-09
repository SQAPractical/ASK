package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class quizeMutilpleQuestions {


    @Then("I click Add Question button {int} times")
    public void iClickAddQuestionButtonTimes(int ques) {
        WebElement button = getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted shift']//span[1]"));
        int b;
        for (b = 1; b <= 50; b++) {
            button.click();
        }
    }

    @Then("I should see {string}")
    public void iShouldSee(String arg0) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q50: new empty question')]"));
    }
}

//    WebElement webElement = (WebElement) iterator.next();
//
//        Thread.sleep(2000);
//
//                webElement.click();

