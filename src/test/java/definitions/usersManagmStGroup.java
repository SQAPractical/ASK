package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import cucumber.api.java8.Th;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.Iterator;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStGroup {
    @When("I navigate to email generator")
    public void iNavigateToEmailGenerator() {
        getDriver().get("https://generator.email/");
    }

    @And("I click {string}  button to copy emil on email generator site")
    public void iClickButtonToCopyEmilOnEmailGeneratorSite(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//button[text()='"+buttonName+"']")).click();
        Thread.sleep(2000);
    }

    @And("I switch to new tab")
    public void iSwitchToNewTab() {
        Iterator<String> iterator = getDriver().getWindowHandles().iterator();
        String newWindow = iterator.next();
        while(iterator.hasNext()) {
            newWindow = iterator.next();
        }
        getDriver().switchTo().window(newWindow);
    }

    @And("teacher  {string} appears")
    public void teacherAppears(String teacherName) throws InterruptedException {
        Thread.sleep(2000);

        String xPath = "//*[contains(text(),'"+teacherName+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));

        assertThat(elementWithMessage.isDisplayed()).isTrue();
    }

    @And("I click on student name {string}")
    public void iClickOnStudentName(String studentName) {
        getDriver().findElement(By.xpath("//h4[contains(text(),'"+studentName+"')]")).click();

    }

    @And("I click on User{string} on menu")
    public void iClickOnUserOnMenu(String menuButton) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuButton+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int time) throws InterruptedException {
        Thread.sleep(time);
    }

    @And("I click on Options button")
    public void iClickOnOptionsButton() {
        getDriver().findElement(By.xpath("//mat-icon[text()='settings'][@class='mat-icon material-icons']")).click();
    }

    @And("I click on Change User's Name")
    public void iClickOnChangeUserSName() {
        getDriver().findElement(By.xpath("//mat-icon[text()='edit'][@class='mat-icon material-icons']/..")).click();
    }

    @And("I change user name to {string}")
    public void iChangeUserNameTo( String newName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'New User')]")).clear();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'New User')]")).sendKeys(newName);
        Thread.sleep(1000);

    }

    @And("I check that name is changed to {string}")
    public void iCheckThatNameIsChangedTo(String newName) {
        assertThat(getDriver().findElement(By.xpath("//mat-icon[text()='settings'][@class='mat-icon material-icons']/../../../../..//h2")).getText().equals(newName));
    }

    @And("I check for error message {string}")
    public void iCheckForErrorMessage(String newMessage) throws InterruptedException {
        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//*[text()='"+newMessage+"']")).isDisplayed()).isTrue();
        Thread.sleep(1000);

    }

    @And("I delete user name")
    public void iDeleteUserName() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'New User')]")).clear();

    }

    @And("I check {string} button is disabled")
    public void iCheckButtonIsDisabled(String buttonName ) throws InterruptedException {
        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//button/span[contains(text(),'"+buttonName+"')]")).isEnabled()).isFalse();
        Thread.sleep(2000);
    }

    @And("I click on some sign")
    public void iClickOnSomeSign() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Changing User')]")).click();
    }
}
