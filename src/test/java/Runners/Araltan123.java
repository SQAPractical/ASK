package Runners;


import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/cucumber", "json:target/cucumber/report.json"},
        features = "src/test/resources/features",
        glue = {"definitions", "support"},
        tags = {"@Araltan123"} // same as VM option mvn clean test -Dcucumber.options="--tags @Sanity"
        // or mvn clean test -Dtest=Sanity
)
public class Araltan123 {

}

