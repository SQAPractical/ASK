package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStRoleAndDelete {
//    @And("I click on {string} on left side menu")
//    public void iClickOnOnLeftSideMenu(String menuItem) {
//        getDriver().findElement(By.xpath("//*[@href='/#/users-management']")).click();
//    }

    @And("I select {string} to open list of students")
    public void iSelectToOpenListOfStudents(String students) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Students')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} from the list")
    public void iClickOnFromTheList(String studentname) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()[contains(.,'Ranjjani Ravi')]]")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} button on right side")
    public void iClickOnButtonOnRightSide(String options) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(., 'Options')]")).click();
        Thread.sleep(2000);
    }

//    @And("I click on {string} option")
//    public void iClickOnOption(String userRole) throws InterruptedException {
//        getDriver().findElement(By.xpath("//button[contains(., 'Role')]")).click();
//        Thread.sleep(2000);
//
//    }

//    @And("I click on {string} button")
//    public void iClickOnButton(String role) throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Change Role')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I select {string} to open list of teacher")
    public void iSelectToOpenListOfTeacher(String teacher) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        Thread.sleep(2000);

    }

    @Then("Message as {string} appears")
    public void messageAsAppears(String userMessage) throws InterruptedException {
        Thread.sleep(2000);
        String xPathWithMessage = "//*[contains(text(),'" + userMessage + "')]";
        assertThat(getDriver().findElement(By.xpath(xPathWithMessage)).isDisplayed()).isTrue();
    }

    @Then("Message as {string} will appear")
    public void messageAsWillAppear(String teacherMessage) throws InterruptedException {
        Thread.sleep(2000);
        String xPathWithMessage = "//*[contains(text(),'" + teacherMessage + "')]";
        assertThat(getDriver().findElement(By.xpath(xPathWithMessage)).isDisplayed()).isTrue();

    }

    @And("I click on {string} from the list of students")
    public void iClickOnFromTheListOfStudents(String listMenu) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()[contains(.,'Test User')]]")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} button at the bottom")
    public void iClickOnButtonAtTheBottom(String deleteUser) throws InterruptedException {
        getDriver().findElement(By.xpath("//div//button[contains(., 'Delete')]")).click();
        Thread.sleep(2000);
    }

    @Then("Message {string} is displayed")
    public void messageIsDisplayed(String testUser) throws InterruptedException {
        Thread.sleep(2000);
        String xPathWithMessage = "//*[contains(text(),'" + testUser + "')]";
        assertThat(getDriver().findElement(By.xpath(xPathWithMessage)).isDisplayed()).isTrue();

    }

    @And("I click on {string} button from the Popup window")
    public void iClickOnButtonFromThePopupWindow(String delete) throws InterruptedException {

        getDriver().findElement(By.xpath("//span[contains(text(), 'Delete')]")).click();
        Thread.sleep(2000);
    }

    @Then("User role is {string} is displayed")
    public void userRoleIsIsDisplayed(String userRole) {
        String xPath = "//td[contains(text(),'User Role')]/..";
        String textThatContainsUserRoleInfo = getDriver().findElement(By.xpath(xPath)).getText();
        System.out.println(textThatContainsUserRoleInfo);
        assertThat(textThatContainsUserRoleInfo.contains(userRole)).isTrue();

    }

    @And("Student {string} is not present on list of users")
    public void studentIsNotPresentOnListOfUsers(String studentName) {
        String listOfStudents = getDriver().findElement(By.xpath("//mat-tab-group")).getText();
        System.out.println(listOfStudents);

        assertThat(listOfStudents.contains(studentName)).isFalse();
    }
}
