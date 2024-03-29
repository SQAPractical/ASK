package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.maven.surefire.shared.lang3.ObjectUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterSuite;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import static support.TestContext.getDriver;

public class StepdefsCheckLinks {


    List<WebElement> listLinks;

    @When("I collect the links on home page")
    public void iCollectAllLinkTagsOnHomePage() throws InterruptedException {

        listLinks = getDriver().findElements(By.tagName("a"));
//        System.out.println("TOTAL LINKS: "+listLinks.size());
       }

    @And("I check the urls of the panel links")
    public void iCheckTheUrlsOfTheLinks() throws InterruptedException {
        for (int i = 0; i < 6; i++){
//        Iterator<WebElement> itr = listLinks.listIterator();
//        while (itr.hasNext()){

            String url = listLinks.get(i).getAttribute("href");
//            String url = itr.next().getAttribute("href");
            System.out.println("PANEL URL: "+url);

            switch (url){
                case "http://ask-stage.portnov.com/#/home":
                    WebElement home = getDriver().findElement(By.xpath("//h5[contains(text(),'Home')]"));
                    home.click();
                    Thread.sleep(1000);
                    String homeURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(homeURL,"http://ask-stage.portnov.com/#/home");
                    System.out.println("HOME lINK OK");
                    break;
                case "http://ask-stage.portnov.com/#/submissions/0":
                    WebElement sub = getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]"));
                    sub.click();
                    Thread.sleep(1000);
                    String subURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(subURL,"http://ask-stage.portnov.com/#/submissions/0" );
                    System.out.println("SUB lINK OK");
                    break;
                case "http://ask-stage.portnov.com/#/assignments":
                    WebElement assg = getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]"));
                    assg.click();
                    Thread.sleep(1000);
                    String assgURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(assgURL,"http://ask-stage.portnov.com/#/assignments" );
                    System.out.println("ASG lINK OK");
                    break;
                case "http://ask-stage.portnov.com/#/quizzes":
                    WebElement qzz = getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]"));
                    qzz.click();
                    Thread.sleep(1000);
                    String qzzURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(qzzURL,"http://ask-stage.portnov.com/#/quizzes" );
                    System.out.println("QZZ lINK OK");
                    break;
                case "http://ask-stage.portnov.com/#/users-management":
                    WebElement umng = getDriver().findElement(By.xpath("//h5[contains(text(),\"User's Management\")]"));
                    umng.click();
                    Thread.sleep(1000);
                    String umngURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(umngURL,"http://ask-stage.portnov.com/#/users-management" );
                    System.out.println("UMNG lINK OK");
                    break;
                case "http://ask-stage.portnov.com/#/settings":
                    WebElement set = getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]"));
                    set.click();
                    Thread.sleep(1000);
                    String setURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(setURL,"http://ask-stage.portnov.com/#/settings" );
                    System.out.println("SET lINK OK");
                    break;
                default:
                    System.out.println("NOT ABLE TO CHECK ALL LINKS ON LEFT PANEL");
            }

        }
        System.out.println("FINISHED CHECKING PANEL URLS");
//        WebElement home = getDriver().findElement(By.xpath("//h5[contains(text(),'Home')]"));
//        home.click();
    }

    @When("I navigate to the login page")
    public void iNavigateToLoginPage() {
        WebDriver driver = getDriver();
        String regURl = "http://ask-stage.portnov.com/#/login";
        driver.get(regURl);
    }


    @And("I type {string} in the email field")
    public void iTypeInTheEmailField(String email) {
        WebElement em = getDriver().findElement(By.xpath("//input[@placeholder='Email *']"));
        em.sendKeys(email);
    }

    @And("I type {string} in the password field")
    public void iTypeInThePasswordField(String password) {
        WebElement pw = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        pw.sendKeys(password);
    }

    @When("I click Sign in button")
    public void iClickSignInButton() {
        WebElement signBtn = getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]"));
        signBtn.click();
    }

    @Then("I see the role Teacher")
    public void iSeeTheRoleTeacher() {

        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//p[contains(text(),'TEACHER')]")));
        String homeURL = "http://ask-stage.portnov.com/#/home";
        String hmURL = getDriver().getCurrentUrl();
        try{
            Assert.assertEquals(hmURL, homeURL);
            System.out.println("EXPECTED URL: "+ homeURL + " ACTUAL URL:" + hmURL);

        }
        catch(Exception e){
            System.out.println("LOGIN NOT SUCCESSFUL");
        }
    }




    @And("I check the urls of the body links")
    public void iCheckTheUrlsOfTheBodyLinks() throws InterruptedException {
        System.out.println("CHECKING BODY URLS");
        for (int i = 6; i < listLinks.size(); i++){
            WebElement home = getDriver().findElement(By.xpath("//h5[contains(text(), 'Home')]"));
            home.click();
            WebDriverWait wait = new WebDriverWait(getDriver(), 1);
            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h4[contains(., 'Statistics')]")));
            System.out.println("AM HOME");
            listLinks = getDriver().findElements(By.tagName("a"));
            String url = listLinks.get(i).getAttribute("href");
            System.out.println("BODY URL: "+url);



            switch (url){
                case "http://ask-stage.portnov.com/#/submissions/0":
                    WebElement sub = getDriver().findElement(By.xpath("//span[contains(text(), 'Submissions')]"));
                    sub.click();
                    Thread.sleep(1000);
                    String subURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(subURL,"http://ask-stage.portnov.com/#/submissions/0" );
                    System.out.println("SUB lINK OK");

                    break;
                case "http://ask-stage.portnov.com/#/assignments":
                    WebElement assg = getDriver().findElement(By.xpath("//span[contains(text(), 'Assignments')]"));
                    assg.click();
                    String assgURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(assgURL,"http://ask-stage.portnov.com/#/assignments" );
                    System.out.println("ASG lINK OK");
//                    home = getDriver().findElement(By.xpath("//h5[contains(text(), 'Home')]"));
//                    home.click();
                    Thread.sleep(1000);
                    System.out.println("GOING HOME");
                    break;
                case "http://ask-stage.portnov.com/#/users-management":
                    WebElement umng = getDriver().findElement(By.xpath("//span[contains(text(), 'Management')]"));
                    umng.click();
                    Thread.sleep(1000);
                    String umngURL = getDriver().getCurrentUrl();
                    Assert.assertEquals(umngURL,"http://ask-stage.portnov.com/#/users-management" );
                    System.out.println("UMNG lINK OK");

                    break;
                default:
                    System.out.println("NOT ABLE TO CHECK ALL LINKS IN BODY");
            }


        }
        System.out.println("FINISHED CHECKING BODY URLS");
    }



}
