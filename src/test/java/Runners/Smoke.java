package Runners;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/cucumber", "json:target/cucumber/report.json"},
        features = "src/test/resources/features",
        glue = {"definitions", "support"},
        tags = {"@Smoke1"} // same as VM option -Dcucumber.options="--tags @predefined"
)
public class Smoke {
    @BeforeClass
    public static void setup() {
        //this is my test change
        //this is my test change
        System.out.println("BeforeAll");
    }

    @AfterClass
    public static void teardown() {
        System.out.println("AfterAll");
    }
}
