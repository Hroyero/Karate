Feature: Post user on regres
  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * request { "name": "#(name)" , "job": "#(job)" }
    ##* def var = { "name": "Hollmans" , "job": "Doctor" }



  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
      |name     |job    |
      |juan     |leader |
      |carlos   |doctor |
      |gustavo  |teacher|

  #Scenario: Post a user without job
   # And request { "name": "Hollmans" }
    #When method post
    #Then status 201


  #Scenario: Post a user with name invalid
   # And request { "name": "$#$%&" , "job": "Doctor" }
    #When method post
    #Then status 201

