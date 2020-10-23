package definitions;

import cucumber.api.java8.En;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Quiz_Passing_Percent implements En {
    public Quiz_Passing_Percent() {
        When("^I click Quizzes button$", () -> {
            getDriver().findElement(By.xpath("//*[@href='/#/quizzes']")).click();
            Thread.sleep(2000);
        });
        When("^I click button Create New Quiz$", () -> {
            getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
            Thread.sleep(2000);
        });
        Then("^I click button Title of the quiz$", () -> {
            getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).click();
            Thread.sleep(2000);
        });
        And("^I type Name of the quiz \"([^\"]*)\"$", (String QuizName) -> {
            getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(QuizName);
        });
        Then("^Button add question appears$", () -> {
            getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]")).isDisplayed();
        });
        And("^I click add question button$", () -> {
            getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]")).click();
            Thread.sleep(2000);
        });
        Then("^I click on radio button for textual question$", () -> {
            getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-2']")).click();
            Thread.sleep(2000);
        });
        Then("^I click Question field$", () -> {
            getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).click();
            Thread.sleep(2000);
        });
        And("^I type Name of the question \"([^\"]*)\"$", (String QuestionName) -> {
            getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(QuestionName);
        });
        Then("^I click Show-Stopper checkbox$", () -> {
            getDriver().findElement(By.xpath("//*[@class=\"mat-checkbox-inner-container\"]")).click();
            Thread.sleep(2000);
        });
        Then("^I increase passing percent$", () -> {
            getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/ac-quiz-passing-percentage[1]/mat-card[1]/div[1]/button[2]")).click();
            getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/ac-quiz-passing-percentage[1]/mat-card[1]/div[1]/button[2]")).click();
            getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/ac-quiz-passing-percentage[1]/mat-card[1]/div[1]/button[2]")).click();
            getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/ac-quiz-passing-percentage[1]/mat-card[1]/div[1]/button[2]")).click();
            getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/ac-quiz-passing-percentage[1]/mat-card[1]/div[1]/button[2]")).click();
            Thread.sleep(2000);
        });
        Then("^I choose quiz that I created$", () -> {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'T1-Testing Quizzes')]")).click();
            Thread.sleep(2000);
        });
        And("^I check percent rate is equal to \"([^\"]*)\"$", (String PassingRate) -> {
            WebElement actualText = getDriver().findElement(By.xpath("//td[contains(text(),'"+PassingRate+"')]"));
            assertThat(actualText.isDisplayed()).isTrue();
        });
        And("^I click Edit button by Quiz id \"([^\"]*)\"$", (String QuizId) -> {
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//a[@href='#/quiz-builder/"+QuizId+"']")).click();
            Thread.sleep(2000);
        });
        Then("^I decrease passing rate$", () -> {
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
            getDriver().findElement(By.xpath("//span[contains(text(),'-') and @class='mat-button-wrapper']")).click();
        });
        And("^I check percent rate inside of quiz is equal to \"([^\"]*)\"$", (String PassRateInQuiz) -> {
            WebElement actualText = getDriver().findElement(By.xpath("//h1[contains(text(),'"+PassRateInQuiz+"')]"));
            assertThat(actualText.isDisplayed()).isTrue();
        });

        And("^I click on Edit button for quiz \"([^\"]*)\"$", (String QuizName) -> {
            getDriver().findElement(By.xpath("//*[contains(text(),'"+QuizName+"')]/../../..//*[contains(text(),'Edit')]")).click();
            Thread.sleep(2000);
        });
    }

}
