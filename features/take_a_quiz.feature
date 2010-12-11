Feature: Taking a quiz
  as a student
  I want to take this quiz
  so the training Bureau will stop hassling me
  
  Scenario:  logging into a test
    Given there is a quiz named "Respiratory Protection"
      And there is a student with ID "EV2345"
    When I go to the quiz start page for "Respiratory Protection"
      And I fill in "Id" with "EV2345"
      And I press "Start Quiz"
    Then I should be on the quiz taking page for "Respiratory Protection"
  
  Scenario:  getting rebuked for using a wrong ID
      Given there is a quiz named "Respiratory Protection"
        And there are no students in the system
      When I go to the quiz start page for "Respiratory Protection"
        And I fill in "Id" with "EV2345"
        And I press "Start Quiz"
      Then I should be on the quiz start page for "Respiratory Protection"
        And I should see "Your Id is invalid"