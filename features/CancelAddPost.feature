Feature: Administrator can post any item

Scenario: Do not Add Job type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Job" from "Post type"
  And I fill in "Programming Job at Facebook" in "Heading"
  And I select "05/25/2013" from "Date"
  And I fill in "These are the details" in "Details"
  And I press "Cancel"
  Then I should be on the home page
  And I should not see "Programming Job at Facebook" in the "JOBS" section

Scenario: Do not Add Internship type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Internship" from "Post type"
  And I fill in "Internship at Twitter" in "Heading"
  And I select "4/25/2013" from "Date"
  And I fill in "These are the details" in "Details"
  And I press "Cancel"
  Then I should be on the home page
  And I should not see "Internship at Twitter" in the "Internships" section

Scenario: Do Not Add Scholarship type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Scholarship" from "Post type"
  And I fill in "Packard Scholarship for Women in Technology" in "Heading"
  And I select "07/25/2013" from "Date"
  And I fill in "Get your application in now" in "Details"
  And I press "Cancel"
  Then I should be on the home page
  And I should not see "Packard Scholarship for Women in Technology" in the "Scholarships" section

Scenario: Do Not Add Event type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Event" from "Post type"
  And I fill in "Technology Mixer at WestingHouse in "Heading"
  And I select "05/15/2013" from "Date"
  And I fill in "These are the details" in "Details"
  And I press "Cancel"
  Then I should be on the home page
  And I should see "Technology Mixer at WestingHouse" in the "Events" section