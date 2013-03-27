# IterimPage.feature
# KIMADA 3/26/2013

Feature: User lands on welcome page

  As a user
  So that I can view my options
  I want to be able to select the View All Postings link

Scenario: Welcome Page

Given the following posts exist:
  | title	| post_type	| detail	| post_date	| user_post_id	| user_id | created_at | updated_at |
  | Google	| SCH	| This is the google scholarship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	|
  | Apple	| INT	| This is an internship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	|

  Given I am on the MWIT welcome page
  Then I should see "View All Postings"
  When I follow "View All Postings"
  Then I should see "This is the google scholarship."