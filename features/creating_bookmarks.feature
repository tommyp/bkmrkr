Feature: Creating And Seeing Bookmarks

  In order to see my bookmarks
  I must be able to create abookmarks

  Scenario: create a bookmark
    Given I am on the bookmarks page
    When I follow "Add"
    When I fill in "bookmark_url" with "http://bbc.co.uk"
    When I fill in "bookmark_tag_list" with "news, tv, uk"
    When I press "Submit"
    Then I should see "bbc.co.uk"
  
  Scenario: create a bookmark and browse by tag
    Given I am on the bookmarks page
    When I follow "Add"
    When I fill in "bookmark_url" with "http://www.guardian.co.uk/"
    When I fill in "bookmark_tag_list" with "news, uk"
    When I press "Submit"
    Then I should see "guardian.co.uk"
    When I follow "news"
    Then I should see "guardian.co.uk"

  Scenario: create a bookmark and browse by domain
    Given I am on the bookmarks page
    When I follow "Add"
    When I fill in "bookmark_url" with "http://twitter.github.com/bootstrap/"
    When I fill in "bookmark_tag_list" with "design, framework, css"
    When I press "Submit"
    Then I should see "twitter.github.com"
    When I go to the show page for "http://twitter.github.com"
    Then I should see "twitter.github.com/bootstrap/"
