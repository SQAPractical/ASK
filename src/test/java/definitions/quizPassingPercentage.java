package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizPassingPercentage {
    @And("I move slider to {int} percent")
    public void iMoveSliderToPercent(int percent) throws InterruptedException {
        Thread.sleep(2000);
        String percentXpath;
        switch (percent) {
            case 50:

                for (int i=0;i<25;i++) {
                    percentXpath = "//button[@class = 'mat-button mat-primary']//span[contains(text(),'-')]";
                    getDriver().findElement(By.xpath(percentXpath)).click();
                    getDriver().findElement(By.xpath("//h3[normalize-space()='Passing Rate']")).click();
                    System.out.println(i);
                }
                break;
            case 100:
                percentXpath = "//span[contains(text(),'+')]";
                for (int i=0;i<50;i++) {
                    getDriver().findElement(By.xpath(percentXpath)).click();
                    getDriver().findElement(By.xpath("//h3[normalize-space()='Passing Rate']")).click();
                    System.out.println(i);
                }
            default:
                break;
        }
//
    }

    @Then("I check if {string} percent appears for {string}")
    public void iCheckIfPercentAppearsFor(String percent, String quizName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        String passingPercentText = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '"+quizName+"')]/../../..//td[contains(text(), 'Passing Percentage:')]/..")).getText();
        System.out.println("passingPercentText is: " + passingPercentText);
        assertThat(passingPercentText.contains(percent)).isTrue();

    }
}

