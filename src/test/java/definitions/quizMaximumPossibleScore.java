package definitions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class quizMaximumPossibleScore {
    @And("I click on a single-choice radio-button for {int} times in {int} quizzes")
    public void iClickOnASingleChoiceRadioButtonForTimesInQuizzes(int numberOfTimes, int arg1) throws InterruptedException {
        for (int j = 1; j <= numberOfTimes; j++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + j + "')]/..")).click();
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("(//*[contains(text(), 'Single-Choice')]/.)[" + j + "]")).click();
        }
    }

    @And("I type {string} in Option {int} and Option {int} in {int} quizzes")
    public void iTypeOptionsInOptionAndOptionTimesInQuizzes(String quizOption, int firstOption, int secondOption, int numberOfQuizzes) {
        for (int j = 1; j <= numberOfQuizzes; j++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + j + "')]/..")).click();
            getDriver().findElement(By.xpath("(//textarea[@placeholder='Option "+firstOption+"*'])[" + j + "]")).sendKeys(quizOption);
            getDriver().findElement(By.xpath("(//textarea[@placeholder='Option "+secondOption+"*'])[" + j + "]")).sendKeys(quizOption);
        }
    }

    @And("I click on option {int} radio-button {int} times in {int} quizzes")
    public void iClickOnOptionRadioButtonTimesInQuizzes(int arg0, int arg1, int numberOfQuizzes) throws InterruptedException {
        for (int j = 1; j <= numberOfQuizzes; j++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + j + "')]/..")).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("(//textarea[@placeholder='Option 1*']/../../../../../mat-radio-button)[" + j + "]")).click();
        }
    }


    @And("I select a total of {int} points in {string} in {int} questions")
    public void iSelectATotalOfPointsInInQuestions(int arg0, String arg1, int arg2) throws InterruptedException {
        int[] sliderOffsetArray = new int[]{0,85,0,33,0,33,33,-10};
        int numberOfQuestions= 7;
        for (int j = 1; j <= numberOfQuestions; j++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + j + "')]/..")).click();
            Thread.sleep(500);
            WebElement sliderElement = getDriver().findElement(By.xpath("(//*[@class='mat-slider-thumb'])[" + j + "]"));
            Actions action = new Actions(getDriver());
            action.dragAndDropBy(sliderElement, sliderOffsetArray[j], 0).perform();
        }
    }

    @And("I select {string} in the List of Quizzes")
    public void iSelectInTheListOfQuizzes(String quizName) throws InterruptedException {
            Thread.sleep(1000);
            getDriver().findElement(By.xpath("(//*[contains(text(), '"+quizName+"')]/../../..)[last()]")).click();
    }


    @Then("{string} quiz has a maximum possible score of {int}")
    public void quizHasAMaximumPossibleScoreOf(String quizName, int maxScore) throws InterruptedException {
        Thread.sleep(1000);
        String maxPointsChosen = "(//*[contains(text(),'"+quizName+"')])[last()]/../../..//table//td[contains(text(), 'Maximum')]/following-sibling::td[text()='" +maxScore+ "']";
        assertThat(getDriver().findElement(By.xpath(maxPointsChosen)).isDisplayed()).isTrue();
    }

    @And("I delete {string} from the list of quizzes")
    public void iDeleteFromTheListOfQuizzes(String quizToDelete) throws InterruptedException {
        Thread.sleep(1000);
        String deleteButton = "(//*[contains(text(), '"+quizToDelete+"')]/../../..)[last()]//*[contains(text(),'Delete')]";
        String deleteButtonConfirmation = "//button[@aria-label='Close dialog'][*[contains(text(), 'Delete')]]";

        getDriver().findElement(By.xpath(deleteButton)).click();
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(deleteButtonConfirmation)).click();
        Thread.sleep(3000);

    }


    @And("I select a total of {int} points in {string} in {int} questions version {int}")
    public void iSelectATotalOfPointsInInQuestionsVersion(int arg0, String arg1, int numberOfQuestions, int arg3) throws InterruptedException {
        int[] sliderOffsetArray = new int[]{0,0,85,33,0,33};
        for (int j = 1; j <= numberOfQuestions; j++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'Q" + j + "')]/..")).click();
            Thread.sleep(500);
            WebElement sliderElement = getDriver().findElement(By.xpath("(//*[@class='mat-slider-thumb'])[" + j + "]"));
            Actions action = new Actions(getDriver());
            action.dragAndDropBy(sliderElement, sliderOffsetArray[j], 0).perform();
        }
    }
}

