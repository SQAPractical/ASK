package definitions;
import static support.TestContext.getDriver;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

public class endToEnd_5MultipleChoice {

    @When("I add {int} questions {string}")
    public void iAddQuestions(int numberOfQuestion, String typeOfQuestion) throws InterruptedException {
        String button = "//*[@type='button']/span/mat-icon";
        String question = "Q";
        String option = "Option ";
        String questionTitle = "Question *";
        String addOption = "Add Option";
        String saveQuestion = "Save";
        for(int i =1; i <=numberOfQuestion;i++){

//             SELECT TYPE OF QUIZ
            String selectType = "//*[contains(text(),'" + question +i+ "')]/../../..//*[contains(text(),'" + typeOfQuestion + "')]";
            getDriver().findElement(By.xpath(selectType)).click();
            Thread.sleep(2000);

//          ADD QUESTION NAME
            String questionNameXpath = "//*[contains(text(),'" + question +i+"')]/../../..//*[@placeholder='" + questionTitle + "']";
            String xpath = "//*[contains(text(),' " + question + "')]/../../..//*[@placeholder='" + option + "']";
            getDriver().findElement(By.xpath(questionNameXpath)).sendKeys(question + i);

//          ADD 1 MORE OPTION
            String addOptionxpath = "//*[contains(text(),'" + question +i + "')]/../../..//*[contains(text(),'" + addOption + "')]";
            getDriver().findElement(By.xpath(addOptionxpath)).click();

//            ADD 3 OPTIONS FOR QUESTION
            for(int j = 1;j<=3;j++) {
                String optionName = "//*[contains(text(),'" + question + i + "')]/../../..//*[@placeholder='" + option +j+"*']";
                getDriver().findElement(By.xpath(optionName)).sendKeys(option + j);

//                CHECK CORRECT ANSWER FOR 2 OPTIONS
                if(j<=2){
                    String correctAnswer = "//*[contains(text(),'" + question+ i + "')]/../../..//*[@placeholder ='" + option + j + "*']/../../../../..//*[input]";
                    getDriver().findElement(By.xpath(correctAnswer)).click();
                }
            }
//            Click on add new question button
            if(i<numberOfQuestion) {
                getDriver().findElement(By.xpath(button)).click();
            }
            Thread.sleep(3000);
        }
//        CLICK ON SAVE QUESTION
        getDriver().findElement(By.xpath("//*[contains(text(),'"+saveQuestion+"')]")).click();
    }
}
