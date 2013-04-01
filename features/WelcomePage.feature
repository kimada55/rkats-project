# WelcomePage.feature
# KIMADA 3/26/2013

Feature: User lands on welcome page

  As a user
  So that I can view all postings
  I want to be able to select the View All Postings link

Scenario: View Active Postings

Given the following posts exist:
  | title	| post_type	| detail	| post_date	| user_post_id	| user_id | created_at | updated_at | exp_date |
  | Google	| Scholarship	| This is the google scholarship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	| 30-Mar-2013 |
  | Apple	| Internship	| This is an internship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	| 30-Apr-2013 |

  Given I am on the MWIT welcome page
  And I follow "View All Active Postings"
  Then I should see "This is an internship."
  And I should not see "Google"