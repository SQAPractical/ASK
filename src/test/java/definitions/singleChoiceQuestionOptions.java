package definitions;

import com.beust.jcommander.StringKey;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.Keys;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionOptions {
    @And("I Click on Option 1 radio button as correct answer")
    public void iClickonOption1radiobuttonascorrectanswer()  {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 1*']//..//..//..//..//..//*[@class = 'mat-radio-outer-circle']")).click();
    }

    @And("I type text {string} into the Option 1 field")
    public void iTypeTextIntoTheOption1Field(String Op1)  {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 1*']")).sendKeys(Op1);
    }

    @And("I type text {string} into the Option 2 field")
    public void iTypeTextIntoTheOption2Field(String Op2) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 2*']")).sendKeys(Op2);
        Thread.sleep(500);
    }

    @Then("Application navigates to Quizzes page")
    public void applicationNavigatesToQuizzesPage() {
        getDriver().get("http://ask-stage.portnov.com/#/quizzes");
    }

    @And("I click on Add Option button")
    public void iClickOnAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class = 'add-option']")).click();
        Thread.sleep(500);
    }
    @And("I click on Option 1 settings button")
    public void iClickOnOption1SettingsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder = 'Option 1*']//..//..//..//..//..//*[@class = 'mat-icon-button mat-accent']")).click();
        Thread.sleep(500);
    }

    @And("I click on Move Option Down")
    public void iClickOnMoveOptionDown() {
        getDriver().findElement(By.xpath("//*[@role = 'menuitem'][3]")).click();
    }
}

    // Then Option 1 moved down
    //@Then("Option 1 moved down")
    //public void optionMovedDown() {
      // String xPath = "//*[@placeholder = 'Option 2*']";
      // String attributeValue = getDriver().findElement(By.xpath(xPath)).getText();
      // String expectedAttributeValue = "1";
        //String expectedAttributeValue = String(Op1);
        //String expectedAttributeValue = StringKey(Op1);
        //String expectedAttributeValue = Keys(Op1);
       // assertThat(expectedAttributeValue).isEqualTo(attributeValue);
   // }

    //Then Add Option button become disabled
    //@Then("Add Option button become disabled")
   // public void addOptionButtonBecomeDisabled() {
   // assertThat(getDriver().findElement(By.xpath("//*[@class = 'add-option']")));
    //ElementClickInterceptedException
   //}

