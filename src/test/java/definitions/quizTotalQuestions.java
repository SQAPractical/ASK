package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.junit.Assert;
import org.openqa.selenium.JavascriptExecutor;

import static support.TestContext.getDriver;

public class quizTotalQuestions {
    @Then("I verify total number equal {int}")
    public void iVerifyTotalNumberEqual(int totalQuestions) {
        String xPath ="//*[contains(text(),'test12345 test')]//following::td[2]";
        Assert.assertEquals(String.valueOf(totalQuestions), getDriver().findElement(By.xpath(xPath)).getAttribute("innerText"));
    }

    @And("I scroll down the web page by the visibility of the element")
    public void iScrollDownTheWebPageByTheVisibilityOfTheElement() throws InterruptedException {
        String xPath ="//mat-expansion-panel-header[@aria-expanded='true']/..";
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("arguments[0].scrollIntoView();", getDriver().findElement(By.xpath(xPath)));
        Thread.sleep(500);
    }

    @And("I repeat question creation {int} times")
    public void iRepeatQuestionCreationTimes(int Questions) {

    }
}
