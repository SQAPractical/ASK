package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.Keys;
//import org.openqa.selenium.interactions.Actions;
import java.awt.datatransfer.Clipboard;
import java.awt.Toolkit;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;
public class login {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }
    @And("I click  on Sign-In button")
    public void iClickOnSignInButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }
    @Then("Password displays in bullets, copy and cut disabled")
    public void passwordDisplaysInBulletsCopyAndCutDisabled() {
        String attribute = "type";
        String attributeValue = "password";
        WebElement passwordField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        String actualAttributeValue = passwordField.getAttribute(attribute);
        assertThat(actualAttributeValue).isEqualTo(attributeValue);
    }
    @And("I press ENTER")
    public void iPressENTER() {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Keys.ENTER);
        getDriver().switchTo().activeElement().sendKeys(Keys.ENTER);
    }
    @Then("Password displays in bullets")
    public void passwordDisplaysInBullets() {
        String attribute = "type";
        String attributeValue = "password";
        WebElement passwordField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        String actualAttributeValue = passwordField.getAttribute(attribute);
        assertThat(actualAttributeValue).isEqualTo(attributeValue);
    }
    @And("I Highlight the password")
    public void iHighlightThePassword() {
//        WebElement passwordField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
//        passwordField.sendKeys(Keys.chord(Keys.CONTROL, "a"));
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
    }
    @And("I Press COMMAND + X on your keyboard")
    public void iPressCOMMANDXOnYourKeyboard() {
        getDriver().switchTo().activeElement().sendKeys(Keys.chord(Keys.COMMAND, "x"));
        //       try {Thread.sleep(3000); } catch (InterruptedException e) {}
    }
    @Then("Copy fails")
    public void copyFails() {
        //      Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
        Transferable clipboardContents = Toolkit.getDefaultToolkit().getSystemClipboard().getContents(null);
        if (clipboardContents != null) {
            try {
                String clipboardString = (String) clipboardContents.getTransferData(DataFlavor.stringFlavor);
                assertThat(clipboardString).isNotEqualTo(getDriver().switchTo().activeElement().getAttribute("value"));
            } catch (Exception ee) {}
        }
    }
    @And("I Press COMMAND + C on your keyboard")
    public void iPressCOMMANDCOnYourKeyboard() {
        getDriver().switchTo().activeElement().sendKeys(Keys.chord(Keys.COMMAND, "c"));
    }
}





