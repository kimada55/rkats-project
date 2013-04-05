Feature: Administrator can post any item

Scenario: Do not Add Job type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Title" with "Programming Job at Facebook"
  When I fill in "Post type" with "Job"
  And I fill in "Detail" with "These are the details"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I follow "Back"
  And I am on the MWIT Posts page
  And I should not see "Programming Job at Facebook"

Scenario: Do not Add Internship type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Post type" with "Internship"
  When I fill in "Title" with "Internship at Twitter"
  And I fill in "Detail" with "These are the details"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I follow "Back"
  And I am on the MWIT Posts page
  And I should not see "Internship at Twitter"

Scenario: Do Not Add Scholarship type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Post type" with "Scholarship"
  And I fill in "Title" with "Packard Scholarship for Women in Technology"
  And I fill in "Detail" with "Get your application in now"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I follow "Back"
  And I am on the MWIT Posts page
  And I should not see "Packard Scholarship for Women in Technology"

Scenario: Do Not Add Event type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Post type" with "Event"
  And I fill in "Title" with "Technology Mixer at WestingHouse"
  And I fill in "Detail" with "These are the details"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I follow "Back"
  And I am on the MWIT Posts page
  And I should not see "Technology Mixer at WestingHouse"