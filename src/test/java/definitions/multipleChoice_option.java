package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class multipleChoice_option {

    @And("I click on {string} button at {string} question")
    public void iClickOnButtonAtQuestion(String button, String question) {

        String xpath = "//*[contains(text(),'" + question + "')]/../../..//*[contains(text(),'" + button + "')]";
        getDriver().findElement(By.xpath(xpath)).click();

    }

    @And("In {string}, I type {string} in {string} field")
    public void inITypeIn(String question, String text, String option) {
        String xpath = "//*[contains(text(),' " + question + "')]/../../..//*[@placeholder='" + option + "']";
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @And("In {string}, I check on {string} is correct answer")
    public void inICheckOnIsCorrectAnswer(String question, String option) {
        String xpath = "//*[contains(text(),'" + question + "')]/../../..//*[@placeholder ='" + option + "']/../../../../..//*[input]";
        getDriver().findElement(By.xpath(xpath)).click();

    }


    @And("In {string}, I check on {string}")
    public void inICheckOn(String quesion, String include) {
        String xpath = " //*[contains(text(),'" + quesion + "')]/../../..//*[contains(text(),'" + include + "')]";
        getDriver().findElement(By.xpath(xpath)).click();

    }

    @When("I type {string} in the {string} field")
    public void iTypeInTheField(String text, String quiz) {

        getDriver().findElement(By.xpath("//*[@placeholder='" + quiz + "']")).sendKeys(text);

    }

    @Then("{string} will be displayed at List of Quizzes page")
    public void willBeDisplayedAtListOfQuizzesPage(String quiz) {
       String text = getDriver().findElement(By.xpath("//*[@class='quizzes']")).getText();
       Assert.assertTrue(text.contains(quiz));

    }

    @And("In {string}, I select {string} type")
    public void inISelect(String question, String type) {

        String xpath = "//*[contains(text(),'" + question + "')]/../../..//*[contains(text(),'" + type + "')]";
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @When("I click on {string} that I have just created")
    public void iClickOnThatIHaveJustCreated(String question) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+question+"')]")).click();
    }

    @Then("{string} is deleted succesfully")
    public void isDeletedSuccesfully(String question) {
        String text = getDriver().findElement(By.xpath("//*[@class='quizzes']")).getText();
        Assert.assertFalse(text.contains(question));

    }

    @And("I click on {string} button of {string} question")
    public void iClickOnButtonOfQuestion(String delete, String question) {
        String xpath = "//*[contains(text(),'"+question+"')]/../../..//*[contains(text(),'"+delete+"')]";
        getDriver().findElement(By.xpath(xpath)).click();

    }

    @And("I click on {string} on {string} popup")
    public void iClickOnOnPopup(String delete, String popup) {

           String xpath = "//*[contains(text(),'"+popup+"')]/../..//*[contains(text(),'"+delete+"')]";
            getDriver().switchTo().activeElement().findElement(By.xpath(xpath)).click();
    }
}
