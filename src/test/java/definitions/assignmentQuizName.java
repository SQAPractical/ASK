package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class assignmentQuizName {
    @And("I choose {string}")
    public void iChoose(String quiz) throws InterruptedException {
        String quizpath = "//span[contains(text(),'" + quiz + "')]";
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(quizpath)).click();
    }

    @Then("I choose group {string}")
    public void iChooseGroup(String group) throws InterruptedException {
        String groupPath = "//span[contains(text(),'All')]/../../..//span[contains(text(),'" + group + "')]";
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(groupPath)).click();
    }

    @And("I choose Student {string}")
    public void iChooseStudent(String student) {
        getDriver().findElement(By.xpath("//mat-list-option[contains(.,'" + student + "')]//mat-pseudo-checkbox")).click();
    }


    @And("I delete quiz with title {string}")
    public void iDeleteQuizWithTitle(String title) throws InterruptedException {
//         using click on element using javascript function as ,element is not visible on screen
                Thread.sleep(2000);
                String path = "//mat-panel-title[contains(text(),'" + title + "')]/../../..//span[text()='Delete']/..";
                WebElement element = getDriver().findElement(By.xpath(path));
                JavascriptExecutor executor = (JavascriptExecutor) getDriver();
                executor.executeScript("arguments[0].click();", element);
                Thread.sleep(2000);

                String confirmPath = "//h1[text()='Confirmation']/..//span[text()='Delete']";
                WebElement confirmP = getDriver().findElement(By.xpath(confirmPath));
                JavascriptExecutor executor2 = (JavascriptExecutor) getDriver();
                executor2.executeScript("arguments[0].click();", confirmP);

               }


        @Then("I verify quiz name {string} in list of assignments with student {string}")
        public void iVerifyQuizNameInListOfAssignmentsWithStudent (String quizName, String studName) throws
        InterruptedException {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: " + quizName + "')]")).click();
            Thread.sleep(2000);
            assertThat(getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: " + quizName + "')]/../../..//*[contains(text(),'" + studName + "')]")).isDisplayed()).isTrue();
        }

        @Then("I verify quiz name {string} in list of assignments")
        public void iVerifyQuizNameInListOfAssignments (String quizName) throws InterruptedException {
            Thread.sleep(2000);
            String actualText = getDriver().findElement(By.xpath("//h4[contains(text(),'My Assignments')]/..//table")).getText();
            assertThat(actualText).containsIgnoringCase(quizName);
        }

    @And("I edit quiz with title {string} to {string}")
    public void iEditQuizWithTitleTo(String quiz, String newquiz) throws InterruptedException {
        Thread.sleep(2000);
        String path1 = "//mat-panel-title[contains(text(),'" + quiz + "')]/../../..//span[text()='Edit']/..";
        WebElement element1 = getDriver().findElement(By.xpath(path1));
        JavascriptExecutor executor3 = (JavascriptExecutor) getDriver();
        executor3.executeScript("arguments[0].click();", element1);
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Title Of The Quiz')]")).clear();
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Title Of The Quiz')]")).sendKeys(newquiz);

    }

    @Then("I verify quiz name {string} in list of quizzes")
    public void iVerifyQuizNameInListOfQuizzes(String newquiz) throws InterruptedException {
        Thread.sleep(2000);
        String path2 = "//mat-panel-title[contains(text(),'" + newquiz + "')]/../../..//span[text()='Preview']/..";
        WebElement element2 = getDriver().findElement(By.xpath(path2));
        JavascriptExecutor executor4 = (JavascriptExecutor) getDriver();
        executor4.executeScript("arguments[0].click();", element2);

        Thread.sleep(2000);
        String actualText = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+newquiz+"')]")).getText();
        assertThat(actualText).containsIgnoringCase(newquiz);

    }
//    xpath to preview the quiz
//    //*[contains(text(), 'Stan quiz1')]/../../..//*[contains(text(), 'Preview')]



}
