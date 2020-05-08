package definitions;
import static support.TestContext.getDriver;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

public class endToEnd_5MultipleChoice {
    String button = "//*[@type='button']/span/mat-icon";
    int locationQuestion = 1;
    public void fillDataForQuestion(int numberOfQuestion, String typeOfQuestion, int locationQuestion ) throws InterruptedException{

        String question = "Q";
        String option = "Option ";
        String questionTitle = "Question *";
        String addOption = "Add Option";
        String saveQuestion = "Save";
        for(int i =locationQuestion; i <=numberOfQuestion;i++){

//             SELECT TYPE OF QUIZ
            String selectType = "//*[contains(text(),'" + question +i+ "')]/../../..//*[contains(text(),'" + typeOfQuestion + "')]";
            getDriver().findElement(By.xpath(selectType)).click();
            Thread.sleep(2000);

//          ADD QUESTION NAME
            String questionNameXpath = "//*[contains(text(),'" + question +i+"')]/../../..//*[@placeholder='" + questionTitle + "']";
            String xpath = "//*[contains(text(),' " + question + "')]/../../..//*[@placeholder='" + option + "']";
            getDriver().findElement(By.xpath(questionNameXpath)).sendKeys(question + i);

//          ADD 1 MORE OPTION
            if(typeOfQuestion.equals("Single-Choice") || typeOfQuestion.equals("Multiple-Choice")) {
                String addOptionxpath = "//*[contains(text(),'" + question + i + "')]/../../..//*[contains(text(),'" + addOption + "')]";
                getDriver().findElement(By.xpath(addOptionxpath)).click();

//            FILL DATA 3 OPTIONS FOR QUESTION
                for (int j = 1; j <= 3; j++) {
                    String optionName = "//*[contains(text(),'" + question + i + "')]/../../..//*[@placeholder='" + option + j + "*']";
                    getDriver().findElement(By.xpath(optionName)).sendKeys(option + j);

//                CHECK CORRECT ANSWER FOR 2 OPTIONS
                    if (j <= 2 && typeOfQuestion.equals("Multiple-Choice")) {
                        String correctAnswer = "//*[contains(text(),'" + question + i + "')]/../../..//*[@placeholder ='" + option + j + "*']/../../../../..//*[input]";
                        getDriver().findElement(By.xpath(correctAnswer)).click();
                    }
                    if(j == 1 && typeOfQuestion.equals("Single-Choice")){
                        String correctAnswer = "//*[contains(text(),'" + question + i + "')]/../../..//*[@placeholder ='" + option + j + "*']/../../../../..//*[input]";
                        getDriver().findElement(By.xpath(correctAnswer)).click();

                    }
                }
            }
            //  Click on add new question button
            if(i<numberOfQuestion) {
                getDriver().findElement(By.xpath(button)).click();
            }
            Thread.sleep(3000);
        }

    }

    @When("I add {int} questions {string}")
    public void iAddQuestions(int numberOfQuestion, String typeOfQuestion) throws InterruptedException {
        fillDataForQuestion(numberOfQuestion,typeOfQuestion,locationQuestion);
    }

    @When("I add {int} questions which include {int} questions {string}, {int} questions {string}, and {int} questions {string}")
    public void iAddQuestionsWhichIncludeQuestionsQuestionsAndQuestions(int totalQuestion, int num1, String type1, int num2, String type2, int num3, String type3) throws InterruptedException {

            fillDataForQuestion(num1,type1,locationQuestion);
            if(num1 < totalQuestion){
                getDriver().findElement(By.xpath(button)).click();
            }




             num2 = num2 + num1;
            locationQuestion = num1 +1;
            Thread.sleep(2000);
            fillDataForQuestion(num2,type2,locationQuestion);
            if(num2<totalQuestion){
                getDriver().findElement(By.xpath(button)).click();
            }

            num3 = num3 + num2;
            locationQuestion = num2 + 1;
            Thread.sleep(2000);
            fillDataForQuestion(num3,type3,locationQuestion);
            if(num3 < totalQuestion){
                getDriver().findElement(By.xpath(button)).click();
            }

    }

//    @When("I add {int} questions which {int} type of questions include {int} questions {string}, {int} questions {string}, and {int} questions {string}")
//    public void iAddQuestionsWhichTypeOfQuestionsIncludeQuestionsQuestionsAndQuestions(int totalQuestion,int numberTypeOfQuestion, int num1, String type1, int num2, String type2, int num3, String type3) {
//
//        for(int i = 1;i<= numberTypeOfQuestion;i++) {
//            fillDataForQuestion(num1, type1, locationQuestion);
//
//            if (num1 < totalQuestion) {
//                getDriver().findElement(By.xpath(button)).click();
//            }
//            num2 = num2 + num1;
//            locationQuestion = num1 + 1;
//            fillDataForQuestion(num2, type2, locationQuestion);
//            if (num2 < totalQuestion) {
//                getDriver().findElement(By.xpath(button)).click();
//            }
//            num3 = num3 + num2;
//            locationQuestion = num2 + 1;
//            fillDataForQuestion(num3, type3, locationQuestion);
//        }
//    }
}
