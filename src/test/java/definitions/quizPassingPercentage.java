package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizPassingPercentage {
    @Then("I navigate to quizzes page")
    public void iNavigateToQuizzesPage() {
        getDriver().get("http://ask-stage.portnov.com/#/quizzes");
    }

    @When("Element with text {string} is displayed on quizzes page")
    public void elementWithTextIsDisplayedOnQuizzesPage(String element) {
        String elementOnQuizzesPage = "//*[contains(text(), 'List of Quizzes')]";
        String xPath = "//*[contains(text(), '"+element+"')]";

        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnQuizzesPage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }

    @Then("I click the Create New Quiz button")
    public void iClickTheCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Create New Quiz')]/..")).click();
    }

    @When("Element with text {string} is displayed on quiz page")
    public void elementWithTextIsDisplayedOnQuizPage(String element) {
        String elementOnQuizzesPage = "//*[contains(text(), 'Back To Quizzes List')]";
        String xPath = "//*[contains(text(), '"+element+"')]";

        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnQuizzesPage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }

    @Then("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(quizTitle);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() {
        String xPath = "//*[contains(text(), 'add_circle')]";
        
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I click Single Choice radio button")
    public void iClickSingleChoiceRadioButton() {
        String xPath = "//*[contains(text(), 'Single-Choice')]/..";

        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I type question name {string}")
    public void iTypeQuestionName(String questionName) {
        String xPath = "//*[@formcontrolname='question']";

        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
        getDriver().findElement(By.xpath(xPath)).sendKeys(questionName);
    }

    @And("I type first option {string}")
    public void iTypeFirstOption(String optionOne) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(optionOne);
    }

    @And("I type second option {string}")
    public void iTypeSecondOption(String optionTwo) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(optionTwo);
    }

    @And("I set correct answer as option two")
    public void iSetCorrectAnswerAsOptionTwo() {
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-8']")).click();
    }

    @And("I click save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//*/span[contains(text(), 'Save')]")).click();
    }

    @And("I set passing rate slider to {int} using buttons")
    public void iSetPassingRateSliderToUsingButtons(int passRate) {
        String slider = "//mat-slider[@aria-valuemax='100']";
        String att = "aria-valuenow";
        int sliderVal = Integer.parseInt(getDriver().findElement(By.xpath(slider)).getAttribute(att));
        WebElement sliderPass = getDriver().findElement(By.xpath(slider));

        if(sliderVal == passRate) {
            //Do nothing
        } else if(sliderVal > passRate) {
            for(int i = sliderVal; i > passRate; i--) {
                getDriver().findElement(By.xpath("(//span[contains(text(), '-')]/../..//button)[1]")).click();
            }
        } else if(sliderVal < passRate) {
            for(int i = sliderVal; i < passRate; i++) {
                getDriver().findElement(By.xpath("(//span[contains(text(), '-')]/../..//button)[2]")).click();
            }
        }
    }

    @And("I set passing rate slider to {int} using arrow keys")
    public void iSetPassingRateSliderToUsingArrowKeys(int passRate) {
        String slider = "//mat-slider[@aria-valuemax='100']";
        String att = "aria-valuenow";
        int sliderVal = Integer.parseInt(getDriver().findElement(By.xpath(slider)).getAttribute(att));
        WebElement sliderPass = getDriver().findElement(By.xpath(slider));

        if(sliderVal == passRate) {
            //Do nothing
        } else if(sliderVal > passRate) {
            while(Integer.parseInt(getDriver().findElement(By.xpath(slider)).getAttribute(att)) > passRate) {
                sliderPass.sendKeys(Keys.ARROW_LEFT);
            }
        } else if(sliderVal < passRate) {
            while(Integer.parseInt(getDriver().findElement(By.xpath(slider)).getAttribute(att)) < passRate) {
                sliderPass.sendKeys(Keys.ARROW_RIGHT);
            }
        }
    }

    @Then("The created quiz appears with name {string} and passing rate {string}")
    public void theCreatedQuizAppearsWithNameAndPassingRate(String quizName, String passRate) {
        String quizTitle = "(//*[contains(text(), '"+quizName+"')])[1]";
        String quizPassRate = "(//*[contains(text(), '"+passRate+"')]/../../../../../../..//*[contains(text(), '"+quizName+"')])[1]";

        getDriver().findElement(By.xpath(quizTitle)).click();

        WebDriverWait wait = new WebDriverWait(getDriver(), 3);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(quizPassRate)));
    }

    @And("I wait")
    public void iWait() throws InterruptedException{
        Thread.sleep(1000);
    }

    @And("I click the delete button to delete the created quiz with name {string}")
    public void iClickTheDeleteButtonToDeleteTheCreatedQuizWithName(String quizName) {
        getDriver().findElement(By.xpath("(//*[contains(text(), 'Delete')])[1]")).click();
    }

    @And("I click the confirmation delete button")
    public void iClickTheConfirmationDeleteButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']")).click();
    }
}