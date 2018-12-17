@outflow
Feature: Budget - Outflow
    As a Budget user, I want to register outflow budgets

Scenario Outline: Add new outflow with invalid values
    Given I am on budget website
    When I add new outflow with <category> and <description> and <invalid_value>
    Then I can not register outflow without fill all fields
    Examples:
            | category    | description              | invalid_value |
            | "Car"       | "Paid gas"               | "tstmc"       |
            | "Travel"    | "Paid share of trip"     | ""            |
            | "Misc"      | "12345"                  | "1.1.."       |
            | "Kids"      | "Bought toys"            | "-1234"       |
            | "Gifting"   | " "                      | "!@#$%%"      |
            | "Insurance" | ""                       | ""            |
            | "Insurance" | ""                       | "100"         |
            | "Utensils"  | ""                       | " "           |
            | "Car"       | "Bought a car"           | ""            |
            | "Clothing"  | "Bought clothes at mall" | " "           |

Scenario: Check new outflow on chart
    Given I am on budget website
    When I add new outflow successfuly with "Car" and "Gas" and "250110"
    Then I check it on report screen