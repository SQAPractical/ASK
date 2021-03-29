package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class usersManagmTDelete {


    @And("I push the  button User's management")
    public void iPushTheButtonUserSManagement() throws InterruptedException {
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Management')]")).click();
    }

    @And("I push the  button Teacher")
    public void iPushTheButtonTeacher() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
    }


    @And("I click {string} name")
    public void iClickName(String personName) throws InterruptedException {
        Thread.sleep(5000);
        String xpath = "//*[contains(text(),'" + personName + "')]";
        getDriver().findElement(By.xpath(xpath)).click();

    }


    @And("I delete name{string} in field")
    public void iDeleteNameInField(String newName) throws InterruptedException {
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).clear();
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Name')]")).sendKeys(newName);

    }


    @And("I copy email")
    public void iCopyEmail() {
        getDriver().findElement(By.xpath("//button[@id='copbtn']")).click();
    }

    @And("I Navigate to email generator")
    public void iNavigateToEmailGenerator() throws InterruptedException {
        Thread.sleep(5000);
        getDriver().get("https://generator.email/");
    }

    @And("I click refresh button")
    public void iClickRefreshButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Refresh')]")).click();
    }

    @And("I confirm email address")
    public void iConfirmEmailAddress(String confirmemailadress) throws InterruptedException {
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//a[contains(text(),'Confirm email address')]")).sendKeys(confirmemailadress);
    }

    @And("I click Login with credentials button")
    public void iClickLoginWithCredentialsButton() throws InterruptedException {
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//button[contains(.,'Login with Credentials')]")).click();
    }

    @And("I click the button Student")
    public void iClickTheButtonStudent() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Students')]")).click();
    }


    @And("I click Change Role button")
    public void iClickChangeRoleButton() throws InterruptedException {
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Role')]")).click();
    }

    @Then("User became a teacher")
    public void userBecameATeacher() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//td[contains(text(),'TEACHER')]")).click();
    }




    @And("I click the button Option")
    public void iClickTheButtonOption() throws InterruptedException {
        Thread.sleep(10000);
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-accent']")).click();
    }


}


