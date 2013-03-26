Feature: Administrator can post any item

Scenario: Add Job type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Job" from "Post type"
  And I fill in "Programming Job at Google" in "Heading"
  And I select "05/25/2013" from "Date"
  And I fill in "These are the details" in "Details"
  And I press "Add"
  Then I should be on the home page
  And I should see "Programming Job at Google" in the "JOBS" section

Scenario: Add Internship type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Internship" from "Post type"
  And I fill in "Internship at Zynga" in "Heading"
  And I select "4/25/2013" from "Date"
  And I fill in "These are the details" in "Details"
  And I press "Add"
  Then I should be on the home page
  And I should see "Internship at Zynga" in the "Internships" section

Scenario: Add Scholarship type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Scholarship" from "Post type"
  And I fill in "Hewlett Scholarship for Women in Technology" in "Heading"
  And I select "07/25/2013" from "Date"
  And I fill in "Get your application in now" in "Details"
  And I press "Add"
  Then I should be on the home page
  And I should see "Hewlett Scholarship for Women in Technology" in the "Scholarships" section

Scenario: Add Event type post
  Given I am on the  home page
  When I follow "New Post"
  Then I should be on the Create New Item page
  When I select "Event" from "Post type"
  And I fill in "Technology Mixer at HUB Oakland in "Heading"
  And I select "05/15/2013" from "Date"
  And I fill in "These are the details" in "Details"
  And I press "Add"
  Then I should be on the home page
  And I should see "Technology Mixer at HUB Oakland" in the "Events" section