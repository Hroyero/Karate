Feature: Get user on regres
  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method get
    Then status 200


  Scenario: Get a user of user
    * def jsonResponse = read('../json/list_of_users.json')
    Given url "https://reqres.in" + "/api/users?page=2"
    When method get
    Then status 200
    And match $ == jsonResponse