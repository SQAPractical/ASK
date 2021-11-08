package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class singleChoiceQuestionText {
    @Then("Message {string}red{string} appears")
    public void messageRedAppears(String arg0, String arg1) {

    }

    @And("I type text for question {int}")
    public void iTypeTextForQuestion(int arg0) {

    }
}
