package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static definitions.multipleChoiceOther.quizName;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationLastName {
    @When("I type {string} into {string} input field")
    public void iTypeIntoField(String text, String field) {
        String fieldCase = field.toLowerCase();
        switch(fieldCase) {
            case "last name":
                getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(text);
                break;
            case "first name":
                getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(text);
                break;
                case "email":
                getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(text);
                break;
                case "group code":
                getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(text);
                break;
                case "password":
                getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(text);
                break;
                case "confirm password":
                getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(text);
                break;
                case "title of the quiz":
                getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
                quizName = text;
                break;
                default:
                getDriver().findElement(By.xpath("//*[contains(text(),'"+field+"')]")).sendKeys(text);
        }

        }

    @And("I click outside text field")
    public void iClickOutsideTextField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).click();
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }


    @Then("{string} error message appears")
    public void appears(String error) {
        if(error.equalsIgnoreCase("no")) {
            Assert.assertEquals(0, getDriver().findElements(By.
                    xpath("//*[contains(text(),'Should contain') or contains(text(),'required')]")).size());
        }
        if(error.equalsIgnoreCase("should contain")) {
            assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Should contain')]")).
                    isDisplayed()).isTrue();
        }
        if(error.equalsIgnoreCase("too long")) {
            assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Too long')]")).
                    isDisplayed()).isTrue();
        }
        if(error.equalsIgnoreCase("required")) {
            assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'required')]")).
                    isDisplayed()).isTrue();
        }
        }

    @And("I click Register Me button;")
    public void iClickRegisterMeButton() {
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        getDriver().findElement(By.xpath("//*[contains(text(),'Register Me')]")).click();
    }
}

