package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionOptions {
    @And("I select Question Type Single-Choice")
    public void iSelectQuestionTypeSingleChoice() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Single-Choice')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I click on Add Option button")
    public void iClickOnAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
        Thread.sleep(2000);
    }

    @And("I type {string} in Option {int}")
    public void iTypeInOption(String text, int arg1) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+arg1+"*']")).sendKeys(text);
    }

    @And("I click on the Option one radio button")
    public void iClickOnTheOptionOneRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
        Thread.sleep(2000);

    }

    @And("I click on quiz {string} from the quiz list")
    public void iClickOnQuizFromTheQuizList(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Preview button near {string}")
    public void iClickOnPreviewButtonNear(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../../div//button//span[contains(text(), 'Preview')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on the Settings button on the right of option")
    public void iClickOnTheSettingsButtonOnTheRightOfOption() throws InterruptedException {
        getDriver().findElement(By.xpath("//span//*[contains(text(),'settings')]")).click();
        Thread.sleep(2000);
    }

    @Then("Delete button is disabled")
    public void deleteButtonIsDisable() throws InterruptedException {
        WebElement deleteButton = getDriver().findElement(By.xpath("//button[@disabled='true']"));
        String attribute = "disabled";
        String attributeValue = "true";
        assertThat(deleteButton.getAttribute(attribute)).isEqualTo(attributeValue);
        Thread.sleep(2000);
    }

    @Then("the Delete button is enable")
    public void theDeleteButtonIsEnable() {
        WebElement deleteButton = getDriver().findElement(By.xpath("//button[@disabled='true']"));
        assertThat(deleteButton.isDisplayed());
    }

    @And("I click on the Settings button on the right of option {int}")
    public void iClickOnTheSettingsButtonOnTheRightOfOption(int arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Option "+arg0+"*')]/../../../../../..//*[contains(text(), 'settings')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on the Move Up button")
    public void iClickOnTheMoveUpButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Move option up')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on the Preview button")
    public void iClickOnThePreviewButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Preview')]")).click();
        Thread.sleep(2000);
    }

    @Then("the text {string} displays on the third place")
    public void theTextDisplaysOnTheThirdPlace(String text) {
        WebElement expectedText= getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
        assertThat(expectedText.isDisplayed());

    }

    @And("I click on the Move Down button")
    public void iClickOnTheMoveDownButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Move option down')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on the Close Menu button")
    public void iClickOnTheCloseMenuButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Close Menu')]")).click();
        Thread.sleep(2000);
    }

    @Then("Option {int} moved down to option {int}")
    public void optionMovedDownToOption(int arg0, int arg1) {
        String textOfOption4 = getDriver().findElement(By.xpath("//*[@placeholder=\"Option 4*\"]")).getText();
        System.out.println("TestOfOpt4 = " + textOfOption4);
        String textOfOption3 = "3333";
        assertThat(textOfOption4.contains(textOfOption3)).isTrue();
    }



/*
    @And("I click on Preview button")
    public void iClickOnPreviewButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'text for field Quiz 22')]/../../../div//button//span[contains(text(), 'Preview')]")).click();
        Thread.sleep(2000);
    }
*/


}
