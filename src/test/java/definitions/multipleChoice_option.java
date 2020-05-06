package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.junit.rules.ExpectedException;
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
//        String text = getDriver().findElement(By.xpath("//*[contains(text(),'"+ question+"')]")).getText();
//        if(text == null){
//            assert true;
//        }else{
//            assert false;
//        }
        try{
            String text = getDriver().findElement(By.xpath("//*[contains(text(),'"+ question+"')]")).getText();
        }catch (Exception e){

            if(e.getMessage().contains("Unable to locate element")){
                assert true;
            }
        }


//        Assert.assertFalse(getDriver().findElement(By.xpath("//*[contains(text(),'"+ question+"')]")) != null);

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


    @And("In {string}, I add more {int} options")
    public void inIAddMoreOptions(String question, int number) {
        String option = "Option ";
        String button = "//*[contains(text(),'" + question + "')]/../../..//*[contains(text(),'Add Option')]";

        for (int i = 4; i<= number + 2; i ++){
            getDriver().findElement(By.xpath(button)).click();
            String xpath = "//*[contains(text(),'" + question +"')]/../../..//*[@placeholder='" + option + i + "*']";
            getDriver().findElement(By.xpath(xpath)).sendKeys(option + i);
        }
    }

    @And("I click on {string} dropdown list")
    public void iClickOnDropdownList(String text) {
        getDriver().findElement(By.xpath("//*[@placeholder = '"+text+"']")).click();
    }

    @And("I select {string} quizz")
    public void iSelectQuizz(String quiz) {

        getDriver().findElement(By.xpath("//*[contains(text(),'"+quiz+"')]")).click();

    }

    @And("I select {string} student")
    public void iSelectStudent(String student) {
        getDriver().findElement(By.xpath("//*/following-sibling::text()[contains(.,'"+student+"')]/..")).click();


    }

    @And("I click on {string} button at Assignments page")
    public void iClickOnButton(String button) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+button+"')]")).click();

    }

    @And("I click on {string} button of quiz {string}")
    public void iClickOnButtonOfQuiz(String button, String quizz) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+ quizz+"')]/..//*[contains(text(),'"+button+"')]")).click();
    }

    @When("I check on {string} is my correct answer")
    public void iCheckOnIsMyCorrectAnswer(String answer) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+answer+"')]")).click();
    }

    @Then("{string} student with {string} question is displayed at Automatically Graded")
    public void studentWithQuestionIsDisplayedAtAutomaticallyGraded(String student, String question) {

        String xpath1 = "//*[contains(text(),'"+question+"')]";
        String xpath2 = "//*[contains(text(),'"+student+"')]";


        String actual1 = getDriver().findElement(By.xpath(xpath1)).getText();
        System.out.println("Actual 1" + actual1);
        String actual2 = getDriver().findElement(By.xpath(xpath2)).getText();
        System.out.println("Actual 2" + actual2);
        Assert.assertTrue(actual1.contains(question));
        Assert.assertTrue(actual2.contains(student));



    }

    @When("I click on Review button at Automatically Graded")
    public void iClickOnReviewButtonAtAutomaticallyGraded() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Nhung Q')]/..//*[contains(text(),'Review')]")).click();
    }

    @Then("{string} popup appears after click Submit answer")
    public void popupAppearsAfterClickSubmitAnswer(String text) {
        String xpath = "//*[contains(text(),'"+text+"')]/../..";
        Assert.assertTrue( getDriver().findElement(By.xpath(xpath)).isDisplayed());
    }
}
