# ViewPostings.feature
# KIMADA 3/26/2013

Feature: Administrator can view all postings

  As an administrator
  So that I can view all postings
  I want to view all postings by any user

Scenario: View Postings

Given the following posts exist:
  | title	| post_type	| detail	| post_date	| user_post_id	| user_id | created_at | updated_at |
  | Google	| SCH	| This is the google scholarship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	|
  | Apple	| INT	| This is an internship.	| 26-Mar-2013	| KIMADA	| 1	| 26-Mar-2013	| 26-Mar-2013	|

  And I am on the MWIT Posts page
  Then I should see "Postings"
  And I should see "This is the google scholarship."
  And I should see "This is an internship."