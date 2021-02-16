package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import javax.swing.*;
import java.security.Key;
import java.time.Duration;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;

import static org.assertj.core.api.Assertions.assertThat;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.openqa.selenium.Keys.ARROW_DOWN;
import static org.testng.AssertJUnit.assertFalse;
import static org.testng.AssertJUnit.assertTrue;
import static support.TestContext.getDriver;

public class usersManagmStRole {

    WebDriverWait wait = new WebDriverWait(getDriver(), 5);

    private final String signIn = "//*[text()='Sign In']";
    private final String email = "//input[@formcontrolname='email']";
    private final String passw = "//input[@formcontrolname='password']";
    private final String usersMg = "//mat-sidenav[@mode='side']/ac-side-menu/mat-list/a[5]/div/div/h5";

    @When("I log in as a teacher {string} and {string}")
    public void iLogInAsATeacherAnd(String mail, String pass) {
        getDriver().findElement(By.xpath(email)).sendKeys(mail);
        getDriver().findElement(By.xpath(passw)).sendKeys(pass);
        getDriver().findElement(By.xpath(signIn)).click();


    }

    @And("I navigate to Users Management page")
    public void iNavigateToUsersManagementPage() {
        getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);

        getDriver().findElement(By.xpath(usersMg)).click();
    }


    @And("I click on the student account")
    public void iIClickOnTheStudentAccount()
    {
        getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        getDriver().findElement(By.xpath("//*[text()='A B']")).click();
    }

    @And("I click on Options button")
    public void iClickOnOptionsButton() {
        getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']/mat-icon")).click();
    }

    @And("I click on Change User's name button")
    public void iClickOnChangeUserSNameButton() {

        WebElement usName = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']/div/div/div/button[1]"));

        try {
            wait.until(ExpectedConditions.elementToBeClickable(usName));
        } catch (Exception e) {
            System.out.println("Oh");
        }
        usName.click();
    }

    @And("I delete old full name")
    public void iDeleteOldFullName() throws InterruptedException {
        WebElement nm = getDriver().findElement(By.xpath("//input[@formcontrolname='name']"));

        Actions a = new Actions(getDriver());
        a.moveToElement(nm).click(nm);
        a.moveToElement(nm).doubleClick(nm).build().perform();
        a.moveToElement(nm).sendKeys(Keys.DELETE).build().perform();
        a.moveToElement(nm).doubleClick(nm).build().perform();
        a.moveToElement(nm).sendKeys(Keys.DELETE).build().perform();
        assertTrue(nm.getText().isEmpty());

    }

    @And("I enter new name of the student {string}")
    public void iEnterNewNameOfTheStudent(String newName) throws InterruptedException {

        WebElement newNm = getDriver().findElement(By.xpath("//input[@formcontrolname='name']"));
        newNm.sendKeys(newName);
        getDriver().findElement(By.xpath("//*[text()='Change']")).click();


    }

    @Then("full name of the student is changed")
    public void fullNameOfTheStudentIsChanged() {
        WebElement changedN = getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-user-details-page[1]/mat-card[1]/div[1]/h2[1]"));
        getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);


        WebElement oldName = getDriver().findElement(By.xpath("//input[@formcontrolname='name']"));
        oldName.sendKeys("A B");
        getDriver().findElement(By.xpath("//*[text()='Change']")).click();
    }

    @And("I click on Change User's role button")
    public void iClickOnChangeUserSRoleButton() throws InterruptedException {

        Actions a = new Actions(getDriver());
        WebElement roleB = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']/div/div/div/button"));

        WebElement roleA = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']/div/div/div/button[2]"));


        try {
           a.moveToElement(wait.until(ExpectedConditions.elementToBeClickable(roleB))).moveToElement(roleA).click().build().perform();
        } catch (Exception e) {
            assertFalse(roleA.isDisplayed());
        }
    }


//        WebElement scope = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-pane']/div/div"));
//
//        System.out.println(scope.findElements(By.tagName("button")).size());
//        List<WebElement> options = scope.findElements(By.tagName("button"));
//
//        for(WebElement option : options){
//
//           if(option.getText().equalsIgnoreCase("Change User's Role")){
//               option.click();
//           }


    @And("I click on Change Role button")
    public void iClickOnChangeRoleButton() throws InterruptedException {

        WebElement chRoleButton = getDriver().findElement(By.xpath("//span[text()='Change Role']"));

        WebElement teach = getDriver().findElement(By.xpath("//div[@class='horizontal-group user-meta']/div/table/tbody/tr[1]/td[2]"));

            wait.until(ExpectedConditions.elementToBeClickable(chRoleButton));

        chRoleButton.click();
        Thread.sleep(1000);

    }


    @Then("User Role is changed from Student to Teacher")
    public void userRoleIsChangedFromStudentToTeacher() throws InterruptedException {

        WebElement teach = getDriver().findElement(By.xpath("//div[@class='horizontal-group user-meta']/div/table/tbody/tr[1]/td[2]"));

            wait.until(ExpectedConditions.visibilityOf(teach));
            assertTrue(teach.getText().equalsIgnoreCase("teacher"));
            System.out.println(teach.getText());
            Thread.sleep(1000);
    }

    @And("I change status back to Student")
    public void iChangeStatusBackToStudent() throws InterruptedException {

//        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']/mat-icon")).click();
//
//        getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
//        Actions a = new Actions(getDriver());
//        WebElement roleB = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']/div/div/div/button"));
//
//        WebElement roleA = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']/div/div/div/button[2]"));
//
//        try {
//            a.moveToElement(wait.until(ExpectedConditions.elementToBeClickable(roleB))).moveToElement(roleA).click().build().perform();
//        } catch (Exception e) {
//            assertFalse(roleA.isDisplayed());
//        }
//
//        WebElement chRoleButton = getDriver().findElement(By.xpath("//span[text()='Change Role']"));
//
//        wait.until(ExpectedConditions.elementToBeClickable(chRoleButton));
//        chRoleButton.click();
//        Thread.sleep(1000);

        changeRoleToStudent();
    }

    private void changeRoleToStudent() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']/mat-icon")).click();

        getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        Actions a = new Actions(getDriver());
        WebElement roleB = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']/div/div/div/button"));

        WebElement roleA = getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']/div/div/div/button[2]"));

        try {
            a.moveToElement(wait.until(ExpectedConditions.elementToBeClickable(roleB))).moveToElement(roleA).click().build().perform();
        } catch (Exception e) {
            assertFalse(roleA.isDisplayed());
        }

        WebElement chRoleButton = getDriver().findElement(By.xpath("//span[text()='Change Role']"));

        wait.until(ExpectedConditions.elementToBeClickable(chRoleButton));
        chRoleButton.click();
        Thread.sleep(1000);
    }
}
