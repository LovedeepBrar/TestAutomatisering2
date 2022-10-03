Feature: Resources

  Scenario: Create user account
    Given I have written my email "brar.lovedeep1992@gmail.com"
    Given I have written my username "lovedeepbrar92"
    Given I have written my password "BaraForTest123@"
    When I click on the signup button
    Then Another page is displayed, with a textmessage


  Scenario: Create user account with at least 100chars
    Given I have written my email "brar.lovedeep1992@gmail.com"
    Given I have written my username, at least 100chars "lovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeeplovedeep"
    Given I have written my password "BaraForTest123@"
    When I click the signup button
    Then It cannot create user account, to many chars


  Scenario: Creating an existing user account
    Given I have written my email "brar.lovedeep1992@gmail.com"
    Given I have written an existing username "ChittyChitty"
    Given I have written my password "BaraForTest123@"
    When I click the signup button
    Then cannot create an account


  Scenario: Create user account without an email
    Given I have write my username "brar.lovedeep1992@gmail.com"
    Given I have write my password "BaraForTest123@"
    When I click on the signup button
    Then It cannot create an account, email missing