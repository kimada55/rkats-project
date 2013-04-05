Feature: Administrator can post any item

Scenario: Add Job type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Title" with "Programming Job at Google"
  When I fill in "Post type" with "Job"
  And I select "2009-01-01" as the "Post date" date
  And I select "2013-04-15" as the "Event date" date
  And I select "2013-04-16" as the "Exp date" date
  When I fill in "Detail" with "These are the details"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I press "Create Post"
  And I am on the MWIT Posts page
  And I should see "Programming Job at Google"

Scenario: Add Internship type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Post type" with "Internship"
  When I fill in "Title" with "Internship at Zynga"
  And I select "2013-01-01" as the "Post date" date
  And I select "2013-04-30" as the "Event date" date
  And I select "2013-05-01" as the "Exp date" date
  When I fill in "Detail" with "These are the details"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I press "Create Post"
  And I am on the MWIT Posts page
  And I should see "Internship at Zynga"

Scenario: Add Scholarship type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Post type" with "Scholarship"
  When I fill in "Title" with "Hewlett Scholarship for Women in Technology"
  And I select "2013-02-05" as the "Post date" date
  And I select "2013-05-30" as the "Event date" date
  And I select "2013-06-01" as the "Exp date" date
  When I fill in "Detail" with "Get your application in now"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I press "Create Post"
  And I am on the MWIT Posts page
  And I should see "Hewlett Scholarship for Women in Technology"

Scenario: Add Event type post
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Post type" with "Event"
  When I fill in "Title" with "Technology Mixer at HUB Oakland"
  And I select "2013-03-13" as the "Post date" date
  And I select "2013-08-07" as the "Event date" date
  And I select "2013-08-08" as the "Exp date" date
  When I fill in "Detail" with "These are the details"
  When I fill in "User post" with "15"
  When I fill in "post_user_id" with "21"
  And I press "Create Post"
  And I am on the MWIT Posts page
  And I should see "Technology Mixer at HUB Oakland"

###
  Scenario: Add Job type post with Past Expired Date
  Given I am on the MWIT Posts page
  When I follow "New Post"
  Then I should be on the New Posts page
  When I fill in "Title" with "Programming Job at Google"
  When I fill in "Post type" with "Job"
  And I select "2009-01-01" as the "Post date" date
  And I select "2013-04-15" as the "Event date" date
  And I select "2013-03-03" as the "Exp date" date
  When I fill in "Detail" with "These are the details"
  When I fill in "User post" with "1"
  When I fill in "post_user_id" with "1"
  And I press "Create Post"
  And I am on the MWIT Posts page
  And I should not see "Programming Job at Google"