package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;

public class submissionAutomaticallyGraded
{
    @And("I select {int} point per question on slider")
    public void iSelectPointPerQuestionOnSlider(int points) throws InterruptedException {
        WebDriver driver = new ChromeDriver();
        WebElement slider = driver.findElement(By.xpath("//mat-radio-group/following-sibling::mat-slider"));
        Actions action = new Actions(driver);
        action.dragAndDropBy(slider, 30, 0).perform();
        Thread.sleep(2000);
    }
}
