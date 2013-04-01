# EditPost.feature
# KIMADA 3/31/2013

Feature: Edit a Specific Post

  As a user
  So that I can edit a specific post
  I want to be able to edit one post

Scenario: Edit Specific Post

Given the following posts exist:
  | title	| post_type	| detail	| post_date	| user_post_id	| user_id | created_at | updated_at | exp_date |
  | Google	| Scholarship	| This is the google scholarship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	| 30-Mar-2013 |
  | Apple	| Internship	| This is an internship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	| 30-Apr-2013 |
  | Facebook Event | Event  | This is an event.  | 26-Mar-2013 | KIMADA  | 1 | 26-Mar-2013 | 26-Mar-2013 | 30-Apr-2013 |

  Given I am on the MWIT Posts page
  And I follow "Show" for "Facebook"
  Then I should see "This is an event."
  Then I should not see "Apple"
  When I follow "Edit"
  Then I should see "Editing post"
  When I fill in "Detail" with "Fun, fun, fun!"
  And I press "Update Post"
  Then I am on the MWIT Posts page
  And I should see "Fun, fun, fun!"