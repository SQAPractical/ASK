package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AssignmentsGradedby {
    @Given("I open ask-stage.portnov login page")
    public void iOpenAskStagePortnovLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys("casio7@meta.ua");
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys("12345");
        assertThat(getDriver().getTitle()).isEqualTo("Assessment Control @ Portnov");
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
        }





    @And("I click on the {string} button")
    public void iClickOnTheButton(String button) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(button)).click();
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(seconds * 1000);
    }

    @And("I type text {string} into xPath {string}")
    public void iTypeTextIntoXPath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("the element {string} has text {string}")
    public void theElementHasText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).contains(text);
    }

    @And("a quiz with a single-choice was created")
    public void aQuizWithASingleChoiceWasCreated()  throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2 * 1000);
        getDriver().findElement(By.xpath("//div[@class='controls']//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(2 * 1000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys("Quiz graded Auto with a single-choice");
        Thread.sleep(2 * 1000);
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
        getDriver().findElement(By.xpath("//*[@class='mat-input-element mat-form-field-autofill-control mat-autosize ng-untouched ng-pristine ng-invalid']")).sendKeys("What is Quality?");
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();

        getDriver().findElement(By.xpath("//div[@class='right']//mat-radio-group[1]//textarea[@placeholder='Option 1*']")).sendKeys("A");
        getDriver().findElement(By.xpath("//div[@class='right']//mat-radio-group[2]//textarea[@placeholder='Option 2*']")).sendKeys("B");
        Thread.sleep(2 * 1000);
        getDriver().findElement(By.xpath("//div[@class='right']//mat-radio-group[3]//textarea[@placeholder='Option 3*']")).sendKeys("C");
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();
        getDriver().findElement(By.xpath("//div[@class='right']//mat-radio-group[4]//textarea[@placeholder='Option 4*']")).sendKeys("D");
        getDriver().findElement(By.xpath("//div[@class='right']//mat-radio-group[1]//label[@class='mat-radio-label']")).click();
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();

    }
}


