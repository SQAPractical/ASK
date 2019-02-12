package study.qa.automation.stepDefinitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static study.qa.automation.utils.TestContext.getDriver;

public class def_3_10 {
    @And("^Select Textual Type of Q1$")
    public void selectTextualTypeOfQ1() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Q1 \"([^\"]*)\"$")
    public void typeTextOfQ1(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Select Textual Type of Q2$")
    public void selectTextualTypeOfQ2() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Q2 \"([^\"]*)\"$")
    public void typeTextOfQ2(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q2:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Select Textual Type of Q3$")
    public void selectTextualTypeOfQ3() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("^Type text of Q3 \"([^\"]*)\"$")
    public void typeTextOfQ3(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q3:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Select Single-Choice Type of Q4$")
    public void selectSingleChoiceTypeOfQ4() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//div[contains(text(), 'Single-Choice')]")).click();
    }

    @And("^Type text of Q4 \"([^\"]*)\"$")
    public void typeTextOfQ4(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Type text in Options Q4 \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsQ4(String option1, String option2) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(1000);
    }

    @And("^Select first option as correct answer in Q4$")
    public void selectFirstOptionAsCorrectAnswerInQ4() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q4:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
        Thread.sleep(1000);
    }

    @And("^Select Single-Choice Type of Q5$")
    public void selectSingleChoiceTypeOfQ5() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//div[contains(text(), 'Single-Choice')]")).click();
    }

    @And("^Type text of Q5 \"([^\"]*)\"$")
    public void typeTextOfQ5(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Type text in Options Q5 \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsQ5(String option1, String option2) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(1000);
    }

    @And("^Select first option as correct answer in Q5$")
    public void selectFirstOptionAsCorrectAnswerInQ5() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q5:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
        Thread.sleep(1000);
    }

    @And("^Select Single-Choice Type of Q6$")
    public void selectSingleChoiceTypeOfQ6() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//div[contains(text(), 'Single-Choice')]")).click();
    }

    @And("^Type text of Q6 \"([^\"]*)\"$")
    public void typeTextOfQ6(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Type text in Options Q6 \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsQ6(String option1, String option2) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(1000);
    }

    @And("^Select first option as correct answer in Q6$")
    public void selectFirstOptionAsCorrectAnswerQ6() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q6:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
        Thread.sleep(1000);
    }

    @And("^Select Multiple-Choice Type of Q7$")
    public void selectMultipleChoiceTypeOfQ7() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//div[contains(text(), 'Multiple-Choice')]")).click();
    }

    @And("^Type text of Q7 \"([^\"]*)\"$")
    public void typeTextOfQ7(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Type text in Options Q7 \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsQ7(String option1, String option2) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(1000);
    }

    @And("^Select first and second option as correct answer in Q7$")
    public void selectFirstAndSecondOptionAsCorrectAnswerInQ7() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q7:')]/../../..//*[@placeholder='Option 2*']/../../../../..//mat-checkbox")).click();
        Thread.sleep(1000);
    }

    @And("^Select Multiple-Choice Type of Q8$")
    public void selectMultipleChoiceTypeOfQ8() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//div[contains(text(), 'Multiple-Choice')]")).click();
    }

    @And("^Type text of Q8 \"([^\"]*)\"$")
    public void typeTextOfQ8(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Type text in Options Q8 \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsQ8(String option1, String option2) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(1000);
    }

    @And("^Select first and second option as correct answer in Q8$")
    public void selectFirstAndSecondOptionAsCorrectAnswerInQ8() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q8:')]/../../..//*[@placeholder='Option 2*']/../../../../..//mat-checkbox")).click();
        Thread.sleep(1000);
    }

    @And("^Select Multiple-Choice Type of Q9$")
    public void selectMultipleChoiceTypeOfQ9() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//div[contains(text(), 'Multiple-Choice')]")).click();
    }

    @And("^Type text of Q9 \"([^\"]*)\"$")
    public void typeTextOfQ9(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//*[@placeholder='Question *']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @And("^Type text in Options Q9 \"([^\"]*)\" and \"([^\"]*)\"$")
    public void typeTextInOptionsQ9(String option1, String option2) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//textarea[@placeholder='Option 1*']")).sendKeys(option1);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//textarea[@placeholder='Option 2*']")).sendKeys(option2);
        Thread.sleep(1000);
    }

    @And("^Select first and second option as correct answer in Q9$")
    public void selectFirstAndSecondOptionAsCorrectAnswerInQ9() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-checkbox")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q9:')]/../../..//*[@placeholder='Option 2*']/../../../../..//mat-checkbox")).click();
        Thread.sleep(1000);
    }

    @And("^Set Passing Rate to 90%$")
    public void setPassingRate90() throws Throwable {
        for (int i = 0; i < 15; i++) {
            getDriver().findElement(By.xpath("//span[contains(text(),'+')]")).click();
        }
    }

    @Then("^Verify that quiz \"([^\"]*)\" appears in the list of Quizzes with passing rate (\\d+)%$")
    public void verifyThatQuizAppearsInTheListOfQuizzesWithPassingRate(String quizName, String arg1) throws Throwable {
        // System.out.println(quizName);
        // System.out.println(arg1);

        WebElement quizTitle = getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'" + quizName + "')]"));
        // quizTitle.click();
        // System.out.println(quizTitle.getAttribute("outerHTML"));

        WebElement itemPanel = quizTitle.findElement(By.xpath("./../../.."));
        // System.out.println(itemPanel.getAttribute("outerHTML"));

        String xPath = ".//td[contains(text(),'Passing Percentage:')]/following-sibling::td";
        WebElement passingRate = itemPanel.findElement(By.xpath(xPath));
        // System.out.println(passingRate.getAttribute("outerHTML"));

        // WebElement passingRate = getDriver().findElement(By.xpath("//div[@id='cdk-accordion-child-1570']//td[contains(text(),'Passing Percentage:')]/following-sibling::td"));
        // String textFromPassingRate = passingRate.getText();
        String textFromPassingRate = passingRate.getAttribute("innerHTML");
        // System.out.println("Found:");
        // System.out.println(passingRate);
        // System.out.println(textFromPassingRate);
        Assert.assertTrue(textFromPassingRate.contains(arg1));
//        Assertions.assertThat(textFromPassingRate.contains(arg1)).isTrue();

//        if (textFromPassingRate.contains("90")) {
//            System.out.println("Passing Rate appears correctly");
//        } else {
//            System.out.println("NG");
//        }
    }


    @And("^Delete created quiz \"([^\"]*)\"$")
    public void deleteCreatedQuiz(String quizName) throws Throwable {
        int numQuizzes = getDriver().findElements(By.xpath("//div[@class='quizzes']//*[contains(text(),'" + quizName + "')]")).size();
        System.out.println(numQuizzes);
        for (int i = 0; i < numQuizzes; i++) {
            getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'" + quizName + "')]")).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("//div[@class='quizzes']//*[contains(text(),'" + quizName + "')]//../../..//*[contains(text(),'Delete')]")).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../../..//*[contains(text(), 'Delete')]")).click();
            Thread.sleep(5000);

        }
    }
}

