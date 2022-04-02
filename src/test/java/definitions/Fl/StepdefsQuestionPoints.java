package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import net.sourceforge.htmlunit.corejs.javascript.ArrowFunction;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import static support.TestContext.getDriver;

public class StepdefsQuestionPoints {
    @Given("Bob is logged in with his {string} and {string}")
    public void bobIsLoggedIn(String email, String password) throws InterruptedException {
        WebDriver driver = getDriver();
        String regURl = "http://ask-stage.portnov.com/#/login";
        driver.get(regURl);
        WebElement em = getDriver().findElement(By.xpath("//input[@placeholder='Email *']"));
        em.sendKeys(email);
        WebElement pw = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        pw.sendKeys(password);
        WebElement signBtn = getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]"));
        signBtn.click();
        Thread.sleep(1000);
//        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
//        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//p[contains(text(),'TEACHER')]")));
//        String homeURL = "http://ask-stage.portnov.com/#/home";
//        String hmURL = getDriver().getCurrentUrl();
//        try{
//            Assert.assertEquals(hmURL, homeURL);
//            System.out.println("EXPECTED URL: "+ homeURL + " ACTUAL URL:" + hmURL);
//
//        }
//        catch(Exception e){
//            System.out.println("LOGIN NOT SUCCESSFUL");
//        }
    }

    @And("Bob has created a quiz")
    public void bobHasCreatedAQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Create New Quiz')]")).click();
        getDriver().findElement(By.xpath("//input[@placeholder = 'Title Of The Quiz *']")).sendKeys("Test assigning points");
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[text()[contains(.,'Textual')]]")).click();
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys("Q1");
        for (int i = 0; i <= 5; i++) {
            WebElement slider = getDriver().findElement(By.xpath("//mat-radio-group/following-sibling::mat-slider"));
            slider.sendKeys(Keys.ARROW_RIGHT);
            Thread.sleep(1000);
//            System.out.println("MOVING SLIDER RIGHT BY 1");
            String pointsSlider = getDriver().findElement(By.xpath("//h2")).getText();
            String pointsCard = getDriver().findElement(By.xpath("//mat-panel-description")).getText();
            Assert.assertTrue(pointsCard.contains(pointsSlider));
            System.out.println("POINTS IN SLIDER:"+pointsSlider+" POINTS IN CARD: "+pointsCard);
        }
//
//    }


    }
}
