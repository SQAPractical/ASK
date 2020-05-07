package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import java.util.List;

import static support.TestContext.getDriver;

public class singleChoiceOpt {

    @Then("I click on Option {int} radio button")
    public void iClickOnOptionRadioButton(int arg0) throws InterruptedException {
        List<WebElement> radiobtns = getDriver().findElements(By.xpath("//mat-radio-button"));
        WebElement radiobtn = radiobtns.get(arg0 + 2);
        radiobtn.click();
        Thread.sleep(1000);
    }

    @Then("I type {string} in the {string} field")
    public void iTypeInTheField(String arg0, String arg1) throws InterruptedException {
        List<WebElement> textareas = getDriver().findElements(By.xpath("//textarea"));
        WebElement textarea = null;

        if (arg1.toLowerCase().compareTo("option 1") == 0) {
            textarea = textareas.get(1);
        } else if (arg1.toLowerCase().compareTo("option 1") == 1) {
            textarea = textareas.get(2);}
        else if (arg1.toLowerCase().compareTo("option 1") == 2) {
            textarea = textareas.get(3);}

        textarea.sendKeys(arg0);
          Thread.sleep(2000);
    }

    @Then("I click on the icon-tool button next to {string} field")
    public void iClickOnTheIconToolButtonNextToOptField(String arg0) throws InterruptedException {
        List<WebElement> textareas = getDriver().findElements(By.xpath("//button[@mat-icon-button]"));
        WebElement textarea = null;

        if (arg0.toLowerCase().compareTo("option 1") == 0) {
            textarea = textareas.get(1);
        } else {
            textarea = textareas.get(2);
        }

        textarea.click();
        Thread.sleep(2000);
    }

    @Then("I click on the icon-tool button next to Option {int} field")
    public void iClickOnTheIconToolButtonNextToOptionField(int arg0) throws InterruptedException {
        List<WebElement> setbtns = getDriver().findElements(By.xpath("//*[@mat-icon-button]"));
        WebElement setbtn = setbtns.get(arg0 - 1);
        setbtn.click();
        Thread.sleep(1000);
    }

    @Then("I click on {string} button in icon-tool menu")
    public void iClickOnButtonInIconToolMenu(String button) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(text(),'"+button+"')]/parent::button")).click();
        Thread.sleep(2000);
    }

    @Then("I click on Add Option button {int} times")
    public void iClickOnAddOptionButtonTimes(int arg0) {
        for (int i = 1; i <= arg0; i++) {
            getDriver().findElement(By.xpath("//*[contains(text(),'Add Option')]")).click();
        }
    }

    @Then("I type {string} in the other {int} fields")
    public void iTypeInTheOtherFields(String arg0, int arg1) throws InterruptedException {
            List<WebElement> textareas = getDriver().findElements(By.xpath("//textarea"));
            WebElement textarea = null;

            for (int i = 2; i <= arg1 + 2; i++) {
                textarea = textareas.get(i);
                textarea.sendKeys(arg0);
            }
            Thread.sleep(2000);
    }

    @And("I verify that Option {int} became Option {int}")
    public void iVerifyThatOptionBecameOption(int arg0, int arg1) throws InterruptedException {
        List<WebElement> textareas = getDriver().findElements(By.xpath("//textarea"));
        WebElement option1 = textareas.get(1);
        WebElement option2 = textareas.get(2);

        String option1Value = option1.getAttribute("value");
        String option2Value = option2.getAttribute("value");

            Thread.sleep(2000);
    }

    @Then("I click on {string} button in icon-tool menu and verify that Option {int} becames Option {int}")
    public void iClickOnButtonInIconToolMenuAndVerifyThatOptionBecamesOption(String button, int arg1, int arg2) throws InterruptedException {
        Thread.sleep(1000);
        List<WebElement> textareas = getDriver().findElements(By.xpath("//textarea"));
        WebElement option1 = textareas.get(arg1);
        WebElement option2 = textareas.get(arg2);

        String option1Value = option1.getAttribute("value");
        String option2Value = option2.getAttribute("value");

        getDriver().findElement(By.xpath("//*[contains(text(),'"+button+"')]/parent::button")).click();
        Thread.sleep(2000);

         textareas = getDriver().findElements(By.xpath("//textarea"));
         option1 = textareas.get(arg1);
         option2 = textareas.get(arg2);

        String option1ValueNew = option1.getAttribute("value");
        String option2ValueNew = option2.getAttribute("value");

        Assert.assertTrue("The Option '" + arg1 + "' did not become Option '" + arg2 +"'",
                option1Value.equals(option2ValueNew));
        Assert.assertTrue("The Option '" + arg2 + "' did not become Option '" + arg1 +"'",
                option2Value.equals(option1ValueNew));
    }

    @Then("I click on {string} button inside Quiz with {string}")
    public void iClickOnButtonInsideQuizWithTitle(String button, String title) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'"+title+"')]/../../..//span[contains(text(),'"+
                button+"')]/parent::button")).click();

    }

    @Then("I add text {string} in the Option {int}")
    public void iAddTextInTheOption(String arg0, int arg1) throws InterruptedException {

        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']")).sendKeys(arg0);

    }
}






