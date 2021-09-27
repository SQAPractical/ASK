package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagementTName {
    @When("I go to login page")
    public void iGoToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click Teacher tab")
    public void iClickTeacherTab() throws InterruptedException{
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Diana Drown")
    public void iClickDianaDrown() throws InterruptedException{
        getDriver().findElement(By.xpath("//*[contains(text(),'Diana')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Options button")
    public void iClickOptionsButton() throws InterruptedException{
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']/..//*[contains(., 'Options')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Change User's Name button")
    public void iClickChangeUserSNameButton()throws InterruptedException{
        getDriver().findElement(By.xpath("//button[@class='mat-menu-item']/..//*[contains(., 'Name')]")).click();
        Thread.sleep(2000);
    }

    //@And("I type new name {string}")
    //public void iTypeNewName(String newName) throws InterruptedException {
     //   getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(newName);
     //   Thread.sleep(2000);
    //}

//    @And("I click Change button")
//    public void iClickChangeButton() throws InterruptedException{
//        getDriver().findElement(By.xpath("//*[contains(text(),'Change')]")).click();
//        Thread.sleep(6000);
//    }

    @And("I delete the name")
    public void iDeleteTheName() throws InterruptedException{
        getDriver().findElement(By.xpath(" //input[@formcontrolname='name']")).clear();
        Thread.sleep(4000);
    }

    @Then("text {string} appears")
    public void textAppears(String text) throws InterruptedException{
        Thread.sleep(2000);

        WebElement Element = getDriver().findElement(By.xpath("//h2[contains(., '"+text+"')]"));
        assertThat(Element.isDisplayed()).isTrue();
    }



    @And("I find and click {string} in the list")
    public void iFindAndClickInTheList(String teacherName) {
//        getDriver().findElement(By.xpath("//*[contains(text(),'"+teacherName+"')]")).click();
        getDriver().findElement(By.xpath("//*[text() = '"+teacherName+" ']")).click();
    }

    @Then("error message {string} appears")
    public void errorMessageAppears(String error) throws InterruptedException{
        Thread.sleep(2000);

        WebElement Element = getDriver().findElement(By.xpath("//*[contains(text(),'"+error+"')]"));
        assertThat(Element.isDisplayed()).isTrue();

    }}