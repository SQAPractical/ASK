package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class usersManagmStRole {
    @And("I click on {string} tab")
    public void iClickOnTab(String roleUsersManagm) {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
    }

    @And("I click on {string} name")
    public void iClickOnName(String teacherName) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+teacherName+"')]")).click();
    }

    @And("I click on {string}")
    public void iClickOn(String options) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']")).click();
    }

    @And("I click on Change User's Role")
    public void iClickOnChangeUserSRole() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[@class='mat-menu-item']/ ..//*[contains(text(), 'school')]")).click();
    }

    @And("I confirm Change role")
    public void iConfirmChangeRole() {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Change Role')]")).click();
    }
}
