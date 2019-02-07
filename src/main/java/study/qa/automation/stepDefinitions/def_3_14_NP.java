package study.qa.automation.stepDefinitions;

import cucumber.api.java8.En;

public class def_3_14_NP implements En {
    public def_3_14_NP() {
        And("^Click on Quizzes in the left sidebar$", () -> {
        });
        Then("^Verify that quiz \"([^\"]*)\" shows status pending for all students in the Group \"([^\"]*)\"$", (String arg0, String arg1) -> {
        });
        And("^click Log out in the confirmation window$", () -> {
        });
    }
}
