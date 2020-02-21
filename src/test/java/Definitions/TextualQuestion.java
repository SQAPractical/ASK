
package Definitions;

        import cucumber.api.java.en.And;
        import cucumber.api.java.en.Then;
        import org.openqa.selenium.By;

        import static support.TestContext.getDriver;

public class TextualQuestion {
    @Then("I type email {string} in login page")
    public void iTypeEmailInLoginPage(String email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type password {string} in login page")
    public void iTypePasswordInLoginPage(String pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(pass);
    }

    @And("I click Sign in button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @Then("I click on Quizzes menu")
    public void iClickOnQuizzesMenu() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String type) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(type);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @Then("I click on Textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-2']//label[@class='mat-radio-label']")).click();
    }

    @Then("I type {string} on Question field")
    public void iTypeOnQuestionField(String type) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(type);
    }

    @And("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
    }

    @Then("I click on Title quiz")
    public void iClickOnTitleQuiz() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Title')]")).click();
    }

    @And("I click Edit button")
    public void iClickEditButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Title')]/../../..//*[contains(text(),'Edit')]")).click();
    }


    @Then("I type {string} on Title Of The Quiz")
    public void iTypeOnTitleOfTheQuiz(String type) {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(type);

    }

    @Then("I click on Title{int} quiz")
    public void iClickOnTitleQuiz(int arg0) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Title1')]")).click();
    }

    @Then("I click Preview button")
    public void iClickPreviewButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Title1')]/../../..//*[contains(text(),'Preview')]")).click();
    }

    @Then("I delete {string} on Title Of The Quiz")
    public void iDeleteOnTitleOfTheQuiz(String del) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(del);
    }

    @Then("I click on What is Java quiz")
    public void iClickOnWhatIsJavaQuiz() {
        getDriver().findElement(By.xpath("//*[contains(text(),'What is Java')]")).click();
    }
}

