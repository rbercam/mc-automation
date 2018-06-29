@inflow
Feature: Budget - Inflow
    As a Budget user, I want to register inflow budgets

Background: Visit Budget page
    Given I am on budget website

Scenario: Add new inflow successfully
    When I add a new inflow with "Test" and "100"
    Then I see inflow registered
    