package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registration {
    @When("I type {string} into {string} field")
    public void iTypeIntoField(String text, String field) {
        if (field.equalsIgnoreCase("Last Name")) {
            getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(text);

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


    @Then("{string} error appears")
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

    }

