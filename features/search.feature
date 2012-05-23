Feature: Testing gmail 
  Just bitching gmail to see if things work

  Scenario: Hitting google
    Given I have opened "http://www.gmail.com"
    When I try to login as "osama.binladen" 
    Then I should google should show me an error message 
