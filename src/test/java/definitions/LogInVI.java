package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import static support.TestContext.getDriver;

public class LogInVI {
    @And("I click on I forgot my password link")
    public void iClickOnIForgotMyPasswordLink() {
        getDriver().findElement(By.xpath("//a[contains(text(),'I forgot my password')]")).click();
    }


}
