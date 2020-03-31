package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import java.util.Random;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class OlgaStepDef {
    @Given("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String firstName) {
    getDriver().findElement(By.xpath("//*[@formcontrolname='firstName']")).sendKeys(firstName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String lastName) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='lastName']")).sendKeys(lastName);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String gropuCode) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='group']")).sendKeys(gropuCode);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type password {string}")
    public void iTypePassword(String password) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);
    }

    @And("I type confirm password {string}")
    public void itypeConfirmPassword(String confirmPassword) throws InterruptedException {
        Thread.sleep(1000);
            getDriver().findElement(By.xpath("//*[@formcontrolname='confirmPassword']")).sendKeys(confirmPassword);
    }

    @And ("I click {string} button")
    public void iClickButton(String buttonName) throws InterruptedException {
        Thread.sleep(3000);
            getDriver().findElement(By.xpath("//*[contains(text(),'" + buttonName + "')]")).click();
    }

    @Then("message {string} appears")
    public void messageAppears(String message) throws InterruptedException {
        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }

    @Given("I navigate to login page")
    public void iNavigateToLoginPage() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on Quizzes")
    public void iClickOnQuizzes() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I should see Title Of The Quiz *")
    public void iShouldSeeTitleOfTheQuiz() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[@class='mat-input-infix mat-form-field-infix']")).isDisplayed();
    }

    @And("I type on Title Of The Quiz {string}")
    public void iTypeOnTitleOfTheQuiz(String quiztitle) {
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"name\"]")).sendKeys(quiztitle);
    }

    @Then("I should see username {string}")
    public void iShouldSeeUsername(String user) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+user+"')]"));
    }

    @Then("error message {string} appears")
    public void errorMessageAppears(String errormessage)  throws InterruptedException {
        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//*[@id='mat-error-1'],'"+errormessage+"')]")).isDisplayed()).isTrue();
    }

    @Then("I wait (\\d+) sec")
    public void iWaitSecond(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("I click {string} element")
    public void iClickElement(String arg0) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//button[@class='mat-button mat-primary']")).click();
    }

    @Then("I should see Title of page {string}")
    public void iShouldSeeTitleOfPage(String pageTitle) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),' "+pageTitle+"')]")).isDisplayed();
    }

    @And("I click {string} ButtonSgn")
    public void iClickButtonSgn(String btnSignIn) {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @And("I click {string} ButtonQuiz")
    public void iClickButtonQuiz(String btnQuiz) {
        getDriver().findElement(By.xpath("//*[@class='controls']//button[@class='mat-raised-button mat-primary']")).click();
    }

    @And("I click Sign In button")
    public void iClickSignInButton(String btnSignIn) {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @And("button Add Question should not appears")
    public void buttonAddQuestionShouldNotAppears() throws InterruptedException {
        Thread.sleep(3000);
        assertThat(getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//button[@class='mat-button mat-primary']")).isEnabled());
    }

    @Then("button Add Question should appears")
    public void andButtonAddQuestionShouldAppears() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//button[@class='mat-button mat-primary']")).isEnabled();
    }

    @Then("I click Single-Choice radio button")
    public void iClickSingleChoiceRadioButton() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@id='mat-radio-3']//*[@class='mat-radio-outer-circle']")).click();
    }

    @And("I type question {string}")
    public void iTypeQuestion(String question) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//textarea[@id='mat-input-3']")).sendKeys(question);
    }

//    @And("I type in option1 {string}")
//    public void iTypeInOption1(String option1) throws InterruptedException {
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//*[@placeholder=\"Option 1*\"]")).sendKeys(option1);
//    }

//    @And("I type in option2 {string}")
//    public void iTypeInOption2(String option2) throws InterruptedException {
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//*[@placeholder=\"Option 2*\"]")).sendKeys(option2);
//    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I click on element out of field")
    public void iClickOnElementOutOfField() {
        getDriver().findElement(By.xpath("//div[@class='left']")).click();
    }

    @Then("I see error message {string}")
    public void iSeeErrorMessage(String errorMessage) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-error-10'],'"+errorMessage+"'")).isDisplayed();
    }
//
//    @And("I type in option{int} {string}")
//    public void iTypeInOption(int nr, String opt) {
//        getDriver().findElement(By.xpath("//*[@placeholder=\"Option "+nr+"*\"]")).sendKeys(opt);
//    }


////////////////////////////////////////////////////////////////
////////////// Debugger
///////////////////////////////////////////////////////////////
//    @And("I type in option{int} {string}")
//    public void iTypeInOption(int nr, String opt) {
//        String xpath = "//*[@placeholder=\"Option "+nr+"*\"]";
//        getDriver().findElement(By.xpath(xpath)).sendKeys(opt);
//        }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
    }

    @And("element with Xpath sould be display")
    public void elementWithXpathSouldBeDisplay() throws InterruptedException {
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Max 15 options']")).isDisplayed();
    }

    @And("I can click on Save button, button is disable")
    public void iCanClickOnSaveButtonButtonIsDisable() throws InterruptedException {
        Thread.sleep(3000);
        String xpath = "//*[contains(text(),'Save')]";
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isFalse();
    }

//        @Then ("^element with xpath \"([^\"]*)\" should not be displayed$")
//        public void elementWithXpathShouldNotBeDisplayed(String xpath) {
//            assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isFalse();

    @And("I click Textual radio button")
    public void iClickTextualRadioButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();
    }

//    @And("I type question for Textual {string}")
//    public void iTypeQuestionForTextual(String textualquestion) {
//        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(textualquestion);
//    }

//    @And("I type question {int} for Textual {string}")
//    public void iTypeQuestionForTextual(int questionNr, String textQuestion) {
//        String xpath = "//*[@placeholder=\"Option "+nr+"*\"]";
//       String xpth = "//[@placeholder='Question *]";
//       String xpth = "//mat-panel-title[contains(text(),'Q1')]";
//        String xpath = "//*[contains(text(),\"Q3\")]/../../..//*[contains(text(),\"Textual\")]";
//        getDriver().findElement(By.xpath("//*[contains(text(),\"Q3\")]/../../..//*[contains(text(),\"Textual\")]")).sendKeys(textQuestion);
//        getDriver().findElement(By.xpath("//*[contains(text(),'"+questionNr+"')]/../../..//*[contains(text(),\"Textual\")]")).sendKeys(textQuestion);
//                getDriver().findElement(By.xpath(xpth)).sendKeys(textQuestion);
//    }

    @And("I type {int} questions for Textual area")
    public void iTypeQuestionsForTextualArea(int size) throws InterruptedException {
        int index = 1;
        Thread.sleep(1000);
        while (index <= size) {
            Thread.sleep(500);
            this.selectTextualRadioButton();
            Thread.sleep(500);
            this.enterQuestion();
            this.addNextQuestion();
            index ++;
        }
    }

    private void selectTextualRadioButton(){
        getDriver().findElement(By.xpath("//mat-expansion-panel[contains(@class,'mat-expanded')]" +
                "//*[contains(text(),'Textual')]")).click();
    }

    private void enterQuestion() {
        getDriver().findElement(By.xpath("//mat-expansion-panel[contains(@class,'mat-expanded')]" +
                "//textarea[@placeholder='Question *']"))
                .sendKeys("test " + new Random().nextInt(3000) + " ?");
    }

    private void addNextQuestion() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted shift']" +
                "//button[@class='mat-button mat-primary']")).click();
    }
//
//    @And("I type in option{int} {string}")
//    public void iTypeInOption(int nr, String opt) {
//        getDriver().findElement(By.xpath("//*[@placeholder=\"Option "+nr+"*\"]")).sendKeys(opt);
//
//    assertThat(getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//button[@class='mat-button mat-primary']")).isEnabled());
//
//    @And ("I click {string} button")
//    public void iClickButton(String buttonName) throws InterruptedException {
//        Thread.sleep(3000);
//        getDriver().findElement(By.xpath("//*[contains(text(),'" + buttonName + "')]" )).click();
//    }
}