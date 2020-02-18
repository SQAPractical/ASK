package definitions;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class quizDelete {




    @Then("user is redirected to home page")
    public void userIsRedirectedToHomePage() {
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'kojix ap')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int arg0) throws Throwable {
        Thread.sleep(3000);
    }

    @And("I click on Quizzes menu")
    public void iClickOnQuizesMenu() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();


    }

    @And("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }

    @And("type title of the quiz {string}")
    public void typeTitleOfTheQuiz(String title) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@placeholder=\"Title Of The Quiz *\"]")).sendKeys(title);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I click on Textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();

    }

    @And("I type a question {string}")
    public void iTypeAQuestion(String question) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question);
    }

    @And("I click on Save button")
    public void iClickOnSaveButton() {
        getDriver().findElement(By.xpath("//*[@class='form-controls-container ng-star-inserted']//button[2]")).click();

    }

    @Then("I select Alla Tester quiz")
    public void iSelectAllaTesterQuizz() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Alla Tester')]")).click();
    }

    @And("I click on Delete button")
    public void iClickOnDeleteButton() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Alla Tester')]/../../..//span[contains(text(),'Delete')]"
        )).click();
    }

    @And("I type email {string} on login page")
    public void iTypeEmailOnLoginPage(String Email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(Email);
    }

    @And("I type password {string} on login page")
    public void iTypePasswordOnLoginPage(String Pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(Pass);
    }

    @Then("appears {string} message")
    public void appearsMessage(String arg0) {
        WebElement element2 = getDriver().findElement(By.xpath("//*[contains(text(),'Are you sure want to DELETE whole quiz? This actio')]"));
        assertThat(element2.isDisplayed()).isTrue();
    }

    @And("I click on Delete button in the right corner")
    public void iClickOnDeleteButtonInTheRightCorner() {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']//span[@class='mat-button-wrapper'][contains(text(),'Delete')]")).click();
    }

    @Given("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type email {string} on login field")
    public void iTypeEmailOnLoginField(String Email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(Email);
    }

    @And("I type password {string} on password field")
    public void iTypePasswordOnPasswordField(String Pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(Pass);

    }

    @And("I push sign in button")
    public void iPushSignInButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Sign In')]")).click();
    }

    @And("I select the quiz menu")
    public void iSelectTheQuizMenu() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I push Create New Quiz button")
    public void iPushCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }


    @Then("I type {string} in title")
    public void iTypeInTitle(String title1) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@placeholder=\"Title Of The Quiz *\"]")).sendKeys(title1);

    }

    @And("push {string} button")
    public void pushButton(String arg0) {
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("push {string} radio button.")
    public void pushRadioButton(String arg0) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();
    }

    @And("I type question {string}")
    public void iTypeQuestion(String question1) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question1);
    }

    @When("I click on Back To Quizzes List button")
    public void iClickOnBackToQuizzesListButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Back To Quizzes List')]")).click();
    }

    @Then("{string} message pops up")
    public void messagePopsUp(String arg0) {
        WebElement message = getDriver().findElement(By.xpath("//*[contains(text(),'You have unsaved changes in your Quiz. Would you l')]"));
        assertThat(message.isDisplayed()).isTrue();
    }


    @And("I choose and click on Discard button.")
    public void iChooseAndClickOnDiscardButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Discard')]")).click();
    }


    @Given("I go to login page")
    public void iGoToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }


    @And("I type {string} email")
    public void iTypeEmail(String Email) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(Email);
    }

    @And("I type {string} password")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(Pass);
    }

    @When("I click sign in button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Sign In')]")).click();
    }



    @And("I'm waiting for {int} seconds")
    public void iMWaitingForSeconds(int arg0) throws InterruptedException {
        Thread.sleep(2000);
    }

    @And("I'm selected Quizzes menu")
    public void iMSelectedQuizzesMenu() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I'm pushing Create New Quiz button")
    public void iMPushingCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I write {string} title")
    public void iWriteTitle(String title) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder=\"Title Of The Quiz *\"]")).sendKeys(title);
    }

    @And("I click on button Add Question")
    public void iClickOnButtonAddQuestion() {
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I push Textual radio button.")
    public void iPushTextualRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]/..//div[@class='mat-radio-container']")).click();
    }

    @And("I type {string}")
    public void iType(String Question) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(Question);
    }

    @And("Check {string}Show-Stopper{string}")
    public void checkShowStopper(String arg0, String arg1) {
        getDriver().findElement(By.xpath("//div[@class='mat-checkbox-inner-container']")).isSelected();
    }

    @And("I push Save Button")
    public void iPushSaveButton() {
        getDriver().findElement(By.xpath("//*[@class='form-controls-container ng-star-inserted']//button[2]")).click();
    }


    @When("I click on Log out button")
    public void iClickOnLogOutButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
    }

    @Then("message {string}  appears")
    public void messageAppears(String arg0) {
        WebElement message = getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]"));
        assertThat(message.isDisplayed()).isTrue();
    }

  /*  @And("I click on button  Log out button")
    public void iClickOnButtonLogOutButton() {
        getDriver().findElement(By.xpath("//mat-dialog-container[@id='mat-dialog-3']/../..//span[contains(text(),'Log Out')]")).click();
    }
*/
    @And("I click on button  Log Out button")
    public void iClickOnButtonLogOutButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }


    @And("I type {string} in email field")
    public void iTypeInEmailField(String email) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type {string} in password field")
    public void iTypeInPasswordField(String pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(pass);
    }


    @And("next I click Sign in Button")
    public void nextIClickSignInButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Sign In')]")).click();
    }

    @Then("I am in main page of second teacher")
    public void iAmInMainPageOfSecondTeacher() throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'Britton Alla2')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I select and click {string} option from Mane Menu")
    public void iSelectAndClickOptionFromManeMenu(String arg0) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("select quiz {string}")
    public void selectQuiz(String arg0) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Alla Tester2')]")).click();
    }

    @And("I submit Delete button")
    public void iSubmitDeleteButton() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Alla Tester2')]/../../..//*[contains(text(),'Delete')]")).click();
    }
}


