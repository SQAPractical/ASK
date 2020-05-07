package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static support.TestContext.getDriver;
import static support.TestContext.initialize;

public class assignQuizStudent {
    @Then("I Select Quiz To Assign {string}")
    public void iSelectQuizToAssign(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]/..")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '"+arg0+"')]/..")).click();
        Thread.sleep(1000);
    }

    @Then("I select Group Filter {string}")
    public void iSelectGroupFilter(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Group Filter')]/../..")).click();

        WebElement element = getDriver().findElement(By.xpath("//span[@class='mat-option-text' " +
                "and contains(text(),'" + arg0 + "')]"));
        ((JavascriptExecutor)getDriver()).executeScript("arguments[0].scrollIntoView(true);", element);
        Thread.sleep(500);
//        Actions actions = new Actions(getDriver());
//        actions.moveToElement(element);
//        actions.perform();
     element.click();

        Thread.sleep(1000);
    }

    @Then("I select first {int} students")
    public void iSelectFirstStudents(int arg0) throws InterruptedException {
        List<WebElement> checkboxes = getDriver().findElements(By.xpath("//mat-list-option"));
        List<WebElement> students = getDriver().findElements(By.cssSelector(".mat-card .mat-list-text"));

        int selectedStudents = 0;
        int sizeOfList = checkboxes.size();
        int i = 0;

        while (i < sizeOfList && selectedStudents < arg0) {

            WebElement student = students.get(i);
            String studentGroup = student.findElement(By.tagName("span")).getText();
            String studentName = student.getText().replaceFirst(studentGroup, "").trim();
            if (!studentName.isEmpty()) {
                checkboxes.get(i).click();
                selectedStudents++;
            }
            i++;
        }
        Thread.sleep(1000);
    }

    @And("Assignment appears for {int} students with title of Quiz {string}")
    public void assignmentAppearsForStudentsWithTitleOfQuiz(int arg0, String arg1) throws InterruptedException {
        WebDriverWait wait = new WebDriverWait(getDriver(), 20);

//        wait.until(ExpectedConditions.invisibilityOf(getDriver().findElement(By.tagName("ac-spinner"))));

        WebElement row = getDriver().findElements(By.className("mat-expansion-panel")).get(0);

        String quizTitle = row.findElement(By.xpath("//*[contains(text(), 'Quiz:')]")).getText();

        Assert.assertTrue("Quiz title doesn't have '" + arg1 + "'",
                quizTitle.contains(arg1));

        String students = row.findElement(By.xpath("//*[contains(text(), 'Students:')]")).getText();
        String numberOfStudents = students.replace("Students: ", "").trim();

        Assert.assertTrue("The number of Students is not '" + arg0 + "'",
               Integer.parseInt(numberOfStudents) == arg0);
        Thread.sleep(2000);
    }

    @Then("I click on Give Assignment button")
    public void iClickOnGiveAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Give Assignment')]/parent::button")).click();
        Thread.sleep(4000);
    }

    @Then("I maximize window")
    public void iMaximizeWindow() {
        getDriver().manage().window().fullscreen();
    }
}
