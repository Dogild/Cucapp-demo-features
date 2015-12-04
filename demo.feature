Feature: Demo

   Scenario: Open the popover with keypbard event
     Given the user hit the key command and a

   Scenario: Open the popover with keypbard event and enter a value
     Given the user hit the key command and a
     Then I enter the value Cappuccino

   Scenario: Open the popover with keypbard event and enter a value
     Given the user hit the key command and a
     Then I enter the value Cappuccino
     Then I press the key enter
     Then I should have the value Cappuccino

   Scenario: Open the popover with a left click event
     Given the user make a left click on the add button

   Scenario: Open the popover with a left click event and enter a value
     Given the user make a left click on the add button
     Then I enter the value Cappuccino

   Scenario: Open the popover with a left click event and enter a value
     Given the user make a left click on the add button
     Then I enter the value Cappuccino
     Then I press the key enter
     Then I should have the value Cappuccino

   Scenario: Open the popover with a double click event and enter a value
     Given the user make a double click on the tableView
     Then I enter the value Cappuccino
     Then I press the key enter
     Then I should have the value Cappuccino

   Scenario: Create two entries
     Given the user make a left click on the add button
     Then I enter the value Cappuccino
     Then I press the key enter
     Then I should have the value Cappuccino
     Given the user make a left click on the add button
     Then I enter the value Cucapp
     Then I press the key enter
     Then I should have the value Cucapp

    Scenario: Drag an entity
      Given the user make a left click on the add button
      Then I enter the value Cappuccino
      Then I press the key enter
      Then I should have the value Cappuccino
      Given the user make a left click on the add button
      Then I enter the value Cucapp
      Then I press the key enter
      Then I should have the value Cucapp
      Then I drop Cucapp on Cappuccino
      Then I should have the value CucappCappuccino

   Scenario: Open an external window
     Given the user make a left click on the external button
     Given the user wants the main window in front
     Given the user wants the external window in front
     Then I enter the value CappuccinoInAnExternalWindow
     Then I close my window