package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCode {
    @When("I navigate to page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/");
    }

    @And("I type email {string}")
    public void iTypeFirstName(String FName) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-login-page/mat-card[1]/form/mat-form-field[1]/div/div[1]/div/input")).sendKeys(FName);
    }
    @And("I type password {string}")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-login-page/mat-card[1]/form/mat-form-field[2]/div/div[1]/div/input")).sendKeys(Pass);
    }

    @And("I click on Sign In button")
    public void iClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-login-page/mat-card[1]/form/div/button")).click();
    }

    @Then("Message {string} appears")
    public void messageAppears(String ExpectedMessage) throws InterruptedException {
        Thread.sleep(2000);

        String xPathForMessage = "//*[contains(text(),'"+ExpectedMessage+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPathForMessage));

        assertThat(elementWithMessage.isDisplayed()).isTrue();
    }

    @And("I navigate to quizzes page")
    public void iNavigateToQuizzesPage() {
        getDriver().get("http://ask-stage.portnov.com/#/quizzes");
    }

    @And("I create a new quiz")
    public void iCreateANewQuiz() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/quiz-builder");
        Thread.sleep(1000);
    }

    @And("I write title of quiz {string}")
    public void iWriteTitleOfQuiz(String quizN) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-card/div/mat-form-field/div/div[1]/div/input")).sendKeys(quizN);
    }


    @And("I click on Add Question")
    public void iClickOnAddQuestion() {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/div/button")).click();
    }

    @And("I click choose single choice question")
    public void iClickChooseSingleChoiceQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[1]/div/mat-radio-group/mat-radio-button[2]/label/div[1]")).click();
        Thread.sleep(2000);
    }

    @And("I write question title {string}")
    public void iWriteQuestionTitle(String question) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/mat-form-field/div/div[1]/div/textarea")).sendKeys(question);

    }

    @And("I write optionFirst {string}")
    public void iWriteOptionFirst(String optionName) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[1]/mat-form-field/div/div[1]/div/textarea")).sendKeys(optionName);
    }
    @And("I write optionSecond {string}")
    public void iWriteOptionSecond(String optionName) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[2]/mat-form-field/div/div[1]/div/textarea")).sendKeys(optionName);
    }

    @And("I choose default option")
    public void iChooseDefaultOption() {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[1]/mat-radio-button/label/div[1]")).click();
    }

    @Then("I save the quiz")
    public void iSaveTheQuiz() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/div/div/div/button[2]")).click();
    }

    @And("I navigate to users management")
    public void iNavigateToUsersManagement() throws InterruptedException {

        getDriver().get("http://ask-stage.portnov.com/#/users-management");
        Thread.sleep(2000);
    }

    @And("I navigate to Alla Shepelenko student profile")
    public void iNavigateToAllaShepelenkoStudentProfile() {
        getDriver().get("http://ask-stage.portnov.com/#/user-details/12687");
    }

    @And("I click Options")
    public void iClickOptions() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-user-details-page/mat-card/div[2]/div[2]/button")).click();

    }

    @And("I change role")
    public void iChangeRole() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("/html/body/div[2]/div[2]/div/div/button[2]")).click();
    }

    @Then("I confirm to change role")
    public void iConfirmToChangeRole() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("/html/body/div[2]/div[3]/div/mat-dialog-container/ac-modal-confirmation/div[2]/button[2]")).click();
        Thread.sleep(1000);
    }

    @And("I Add option")
    public void iAddOption() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/div[3]/button")).click();
    }


    @And("I write optionThird {string}")
    public void iWriteOptionThird(String arglol) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[3]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arglol);
    }


    @And("I write optionFour {string}")
    public void iWriteOptionFour(String arglo) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[4]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arglo);
    }

    @And("I write optionFive {string}")
    public void iWriteOptionFive(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[5]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionSix {string}")
    public void iWriteOptionSix(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[6]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionSeven {string}")
    public void iWriteOptionSeven(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[7]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionEight {string}")
    public void iWriteOptionEight(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[8]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionNine {string}")
    public void iWriteOptionNine(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[9]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionTen {string}")
    public void iWriteOptionTen(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[10]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionEleven {string}")
    public void iWriteOptionEleven(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[11]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionTwelve {string}")
    public void iWriteOptionTwelce(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[12]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionThirteen {string}")
    public void iWriteOptionThirteen(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[13]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionFourteen {string}")
    public void iWriteOptionFourteen(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[14]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionFifteen {string}")
    public void iWriteOptionFifteen(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[15]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }
    @And("I write optionSixteen {string}")
    public void iWriteOptionSixteen(String arg0) {
        getDriver().findElement(By.xpath("/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/mat-radio-group[16]/mat-form-field/div/div[1]/div/textarea")).sendKeys(arg0);
    }

}
