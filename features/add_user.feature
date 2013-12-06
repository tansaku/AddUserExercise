Feature: Admin adds user
	As an admin 
	So that users can access our great site
	I want to add a new user

  Scenario: add user
  	Given I am on the home page
	And I click "Add user"
    Then I should be on the new user page
	And I fill in "Username" with "Jon" and "Password" with "Password"
	And I press "Create User"
	Then I should see "New User: Jon"