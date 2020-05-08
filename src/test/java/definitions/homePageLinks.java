package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageLinks {
    @And("page {string} appears")
    public void pageAppears(String page) throws InterruptedException {
        String actualText = getDriver().findElement(By.xpath("//h4[contains(text(),'"+page+"')]")).getText();
        assertThat(actualText).containsIgnoringCase(page);
        Thread.sleep(2000);
    }
}
