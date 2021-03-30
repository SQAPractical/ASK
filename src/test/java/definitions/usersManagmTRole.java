package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class usersManagmTRole {
    @And("I click on {string} button")
    public void iClickOnButton(String changeRole) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'" + changeRole + "')]")).click();
    }

    @And("I click on Change User's Role button")
    public void iClickOnChangeUserSRoleButton() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button[contains(.,'Role')]")).click();
    }

    @And("I click on Options button")
    public void iClickOnOptionsButton() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-accent']")).click();
    }

    //@And("I click on {string} name")
   // public void iClickOnName(String personName) {
   //     String xpath = "//*[contains(text(),'" + personName + "')]";
   //     getDriver().findElement(By.xpath(xpath)).click();
  //  }

    @And("I click on Teachers button")
    public void iClickOnTeachersButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
    }

    @And("I click on User's Management button")
    public void iClickOnUserSManagementButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(@href,'users-management')]")).click();
    }

    @And("I click on user {string}")
    public void iClickOnUser(String personName) {
        getDriver().findElement(By.xpath("//h4[contains(text(),'"+ personName +"')]/../..")).click();
    }

    @And("I click on Students button")
    public void iClickOnStudentsButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Students')]")).click();
    }

    @And("I push on Options button")
    public void iPushOnOptionsButton() {
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-accent']")).click();
    }
}

