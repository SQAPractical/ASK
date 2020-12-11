package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class textQuestionShowStopper {
    @And("I type quiz title {string}")
    public void iTypeQuizTitle(String qTitle) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(qTitle);
    }

//    @And("I click on {string} button")
//    public void iClickOnButton(String arg0) throws InterruptedException {
//        Thread.sleep(2000);
//        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
//            }

    @And("I check Textual ratio button")
    public void iCheckRatioButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-2']")).click();
            }

//    @And("I type question {string}")
//    public void iTypeQuestion(String question) {
//        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question);
//
//
//    }

    @And("I check Is Show Stopper Question check box")
    public void iCheckIsShowStopperQuestionCheckBox() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(), 'Show-Stopper')]//..//..//..")).click();
        Thread.sleep(2000);
    }


    @Then("Text {string} appears")
    public void textAppears(String Text) throws InterruptedException {
        Thread.sleep(2000);
        WebElement expectedText = getDriver().findElement(By.xpath("//*[contains(text(), '"+Text+"')]"));
        assertThat(expectedText.isDisplayed()).isTrue();
    }


    @And("I click Select Quiz To Assign")
    public void iClickSelectQuizToAssign() throws InterruptedException {
        Thread.sleep(1500);
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();

    }

//    @And("I click {string}")
//    public void iClick(String quizAssign) throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizAssign+"')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I click student {string} check box")
    public void iClickStudentCheckBox(String stName) throws InterruptedException {
        Thread.sleep(1500);
        getDriver().findElement(By.xpath("//mat-list-option[contains(.,'"+stName+"')]//mat-pseudo-checkbox")).click();
    }

    @And("I click {string} button on pop up window")
    public void iClickButtonOnPopUpWindow(String logOut) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'"+logOut+"')]")).click();
    }


    @Then("redText {string} appears")
    public void redtextAppears(String stopText) throws InterruptedException {
        Thread.sleep(2000);
        WebElement confText = getDriver().findElement(By.xpath("//p[contains(text(),'"+stopText+"')]"));
        assertThat(confText.isDisplayed()).isTrue();

    }

    @And("I click {string} {string} button")
    public void iClickButton(String goToAssess, String quizName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//table//tr[1]/td[contains(text(),'"+quizName+"')]//../td[4]/a/button")).click();
    }

    @And("i click {string} button")
    public void iClickButton(String buttonName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button/*[contains(text(),'"+buttonName+"')]")).click();
    }

    @And("I click {string} item")
    public void iClick(String quizAssign) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizAssign+"')]")).click();
        Thread.sleep(2000);
    }

//    @And("I click Save button")
//    public void iClickSaveButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//button/span[contains(text(), 'Save')]")).click();
//        Thread.sleep(2000);
//    }

//    @And("I click Create New Assignment button")
//    public void iClickCreateNewAssignmentButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Assignment')]")).click();
//        Thread.sleep(2000);
//    }
}


