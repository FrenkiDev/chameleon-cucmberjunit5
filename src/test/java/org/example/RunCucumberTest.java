package org.example;

import io.cucumber.spring.CucumberContextConfiguration;
import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;

import static io.cucumber.junit.platform.engine.Constants.*;

@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("org/example")
@CucumberContextConfiguration
@ContextConfiguration("classpath:spring.xml")
@TestExecutionListeners(inheritListeners=false, listeners={DependencyInjectionTestExecutionListener.class})
@ConfigurationParameter(key = PLUGIN_PROPERTY_NAME, value = "pretty,summary,io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm")
@ConfigurationParameter(key = GLUE_PROPERTY_NAME, value = "ru.ibsqa.qualit, org.example")
@ConfigurationParameter(key = PLUGIN_PUBLISH_QUIET_PROPERTY_NAME, value = "true")
@ConfigurationParameter(key = PLUGIN_PUBLISH_ENABLED_PROPERTY_NAME, value = "true")
@ConfigurationParameter(key = PARALLEL_EXECUTION_ENABLED_PROPERTY_NAME, value = "true")
@ConfigurationParameter(key = PARALLEL_CONFIG_STRATEGY_PROPERTY_NAME, value = "fixed")
@ConfigurationParameter(key = EXECUTION_MODE_FEATURE_PROPERTY_NAME, value = "same_thread")
@ConfigurationParameter(key = PARALLEL_CONFIG_FIXED_PARALLELISM_PROPERTY_NAME, value = "2")
public class RunCucumberTest {
}
