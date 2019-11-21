package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class def_3_9_new {
    @When("^I select textual type of Question \"([^\"]*)\"$")
    public void iSelectTextualTypeOfQuestion(String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("one")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//div[contains(text(),'Textual')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("two")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2')]/../../..//div[contains(text(),'Textual')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("three")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q3')]/../../..//div[contains(text(),'Textual')]")).click();
        } else {
            System.out.println("not implemented");
        }
    }
    @Then("^I type text of question \"([^\"]*)\" for question \"([^\"]*)\"$")
    public void iTypeTextOfQuestionForQuestion(String text, String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("one")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//textarea")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("two")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2')]/../../..//textarea")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("three")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q3')]/../../..//textarea")).sendKeys(text);
        } else {
            System.out.println("not implemented");
        }
    }
    @When("I select Single-Choice type of Question {string}")
    public void iSelectSingleChoiceTypeOfQuestion(String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("four")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q4')]/../../..//div[contains(text(),'Single-Choice')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("five")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q5')]/../../..//div[contains(text(),'Single-Choice')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("six")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q6')]/../../..//div[contains(text(),'Single-Choice')]")).click();
        } else {
            System.out.println("not implemented");
        }
    }
    @Then("I type text into question field \"([^\"]*)\" for question \"([^\"]*)\"$")
    public void iTypeTextIntoQuestionFieldForQuestion(String text, String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("four")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q4')]/../../..//textarea")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("five")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q5')]/../../..//textarea")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("six")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q6')]/../../..//textarea")).sendKeys(text);
        } else {
            System.out.println("not implemented");
        }
    }
    @And("I type text into Option field {string} for question {string}")
    public void iTypeTextIntoOptionFieldForQuestion(String text, String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("four")) {
            getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(text);
            getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("five")) {
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-10']")).sendKeys(text);
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-11']")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("six")) {
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-13']")).sendKeys(text);
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-14']")).sendKeys(text);
        } else {
            System.out.println("not implemented");
        }
    }
    @When("I select Multiple-Choice type of Question {string}")
    public void iSelectMultipleChoiceTypeOfQuestion(String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("seven")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q7')]/../../..//div[contains(text(),'Multiple-Choice')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("eight")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q8')]/../../..//div[contains(text(),'Multiple-Choice')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("nine")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q9')]/../../..//div[contains(text(),'Multiple-Choice')]")).click();
        } else {
            System.out.println("not implemented");
        }
    }
    @Then("I type text in question field {string} for question {string}")
    public void iTypeTextInQuestionFieldForQuestion(String text, String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("seven")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q7')]/../../..//textarea")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("eight")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q8')]/../../..//textarea")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("nine")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q9')]/../../..//textarea")).sendKeys(text);
        } else {
            System.out.println("not implemented");
        }
    }
    @And("I type text in Option field {string} for question {string}")
    public void iTypeTextInOptionFieldForQuestion(String text, String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("seven")) {
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-16']")).sendKeys(text);
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-17']")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("eight")) {
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-19']")).sendKeys(text);
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-20']")).sendKeys(text);
        } else if (NumberOfQuestion.equalsIgnoreCase("nine")) {
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-22']")).sendKeys(text);
            getDriver().findElement(By.xpath("//textarea[@id='mat-input-23']")).sendKeys(text);
        } else {
            System.out.println("not implemented");
        }
    }

    @And("^I decrease the passing rate to \"([^\"]*)\"$")
    public void iDecreaseThePassingRateTo(String arg0) throws Throwable {
        int PassRate = 75- Integer.parseInt(arg0);
        for (int i=1; i <PassRate+1 ;i++)
        {
            getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper'][contains(text(),'-')]")).click();
        }
        String rate = (getDriver().findElement(By.xpath("//h3[contains(text(),'Passing Rate')]/../h1")).getText());
        assertThat(rate.equalsIgnoreCase(arg0));
    }
    @And ("I click on first option radio-button for question {string}")
    public void iClickOnFirstOptionRadioButtonForQuestion(String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("four")) {
            getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-18']")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("five")) {
            getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-26']")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("six")) {
            getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-34']")).click();
        } else {
            System.out.println("not implemented");
        }
    }

    @And("I click on first check-box for question {string}")
    public void iClickOnFirstCheckBoxForQuestion(String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("seven")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q7')]/../../..//textarea[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("eight")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q8')]/../../..//textarea[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("nine")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q9')]/../../..//textarea[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        } else {
            System.out.println("not implemented");
        }
    }
}







