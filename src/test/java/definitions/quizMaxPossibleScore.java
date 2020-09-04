package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class quizMaxPossibleScore {
    @When("I click on {string} tab in menu")
    public void iClickOnTabInMenu(String tab) {
        getDriver().findElement(By.xpath("//a[contains(@href,'" + tab + "')]")).click();
    }

    @And("I create new quiz")
    public void iCreateNewQuiz() throws InterruptedException {
        WebElement spinner = getDriver().findElement(By.xpath("//ac-spinner[@class='ng-star-inserted']"));
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOf(spinner));
        wait.until(ExpectedConditions.invisibilityOf(spinner));
        getDriver().findElement(By.xpath("//span[text()='Create New Quiz']/..")).click();
        Thread.sleep(4000);
    }

    @And("I type Quiz Title {string}")
    public void iTypeQuizTitle(String title) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname = 'name']")).sendKeys(title);
    }

    @And("I click Add Question")
    public void iClickAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(), 'add_circle')]")).click();
    }

    @And("I choose {string} type")
    public void iChooseType(String type) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+ type +"')]")).click();
    }

    @And("I set {string} points per question")
    public void iSetPointsPerQuestion(String setPoints) throws InterruptedException {
        WebElement slider = getDriver().findElement(By.xpath("//div[@class='wrapper']//mat-slider"));
        WebElement actualPoints = getDriver().findElement(By.xpath("//div[@class='wrapper']//h2"));
        while (Integer.parseInt(actualPoints.getText()) < Integer.parseInt(setPoints))
        {
            slider.sendKeys(Keys.ARROW_RIGHT);
        }

    }

    @And("I save quiz")
    public void iSaveQuiz() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]/..")).click();
    }

    @And("I wait {int} sec")
    public void iWaitSec(int sec) throws InterruptedException {
        Thread.sleep(sec * 1000);
    }

    @And("I choose {string} type for question {string}")
    public void iChooseTypeForQuestion(String type, String number) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+ number +"')]/../../..//*[contains(text(), '"+ type +"')]")).click();

    }

    @And("I type {string} in question {string}")
    public void iTypeInQuestion(String text, String number) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+ number +"')]/../../..//textarea[@placeholder='Question *']")).sendKeys(text);

    }

    @And("I set {string} points per question {string}")
    public void iSetPointsPerQuestion(String setPoints, String number) {
        WebElement slider = getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + number + "')]/../../..//mat-slider"));
        WebElement actualPoints = getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + number +"')]/../../..//h2"));
        while (Integer.parseInt(actualPoints.getText()) < Integer.parseInt(setPoints))
        {
            slider.sendKeys(Keys.ARROW_RIGHT);
        }

    }

    @And("I click on quiz with {string}")
    public void iClickOnQuizWith(String title) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + title + "')]/..")).click();
    }


    @Then("I verify if maximum score is {string} in quiz with title {string}")
    public void iVerifyIfMaximumScoreIsInQuizWithTitle(String score, String title) {
        String xpath = "//*[contains(text(),'"+ title +"')]/../../..//td[contains(text(),'Maximum possible score:')]/following-sibling::td";
        assertThat(getDriver().findElement(By.xpath(xpath)).getText().equals(score)).isTrue();
    }
}
