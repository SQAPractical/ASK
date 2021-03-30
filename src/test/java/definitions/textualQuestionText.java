package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static support.TestContext.getDriver;

public class textualQuestionText {
    @Then("I wait for element with xpath {string} to be present")
    public void iWaitForElementWithXpathToBePresent(String Quizzes) {
        new WebDriverWait(getDriver(),10,200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h5[contains(text(),'Quizzes')]")));
    }
    @And("I click on {string} menu item")
    public void iClickOnMenuItem(String Quizzes) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);


    }

    @And("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);


    }

    @And("I click Title Of The Quiz field")
    public void iClickTitleOfTheQuizField() {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz*']")).click();
    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String quizTitle)  {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(quizTitle);



    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]/..")).click();
    }

    @Then("new window with text {string} appears")
    public void newWindowWithTextAppears(String Q1) {
        WebElement element = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1: new empty question')]"));
    }


    @And("I click  on  {string} radio button")
    public void iClickOnRadioButton(String radioButtonTypeQuestion)  {
        getDriver().findElement(By.xpath("//div[contains(text(), 'Textual')]")).click();

    }

    @And("I type question {string} for question field")
    public void iTypeQuestionForQuestionField(String question) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question);
        Thread.sleep(2000);
    }
    @And("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(3000);
    }

    @Then("quiz  {string} appears")
    public void quizAppears(String quiz) {
        WebElement element = getDriver().findElement(By.xpath("//h4[contains(text(),'List of Quizzes')]"));
    }

    @Then("{string} appears")
    public void appears(String ListOfQuizzes) {
        WebElement element = getDriver().findElement(By.xpath("//h4[contains(text(),'List of Quizzes')]"));
    }


    @Then("error message {string} appears")
    public void errorMessageAppears(String question) {
        WebElement element =getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]"));
    }

}
