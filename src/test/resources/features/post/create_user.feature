@List_users_post
Feature: created to users in the api

  Background:
    * url "https://reqres.in/api"
    * header Content-Type = "Application/json"



  Scenario: validate create user status 201
    Given path "users"
    And request
    """
  {
    "name": "morpheus",
    "job": "leader"
  }
  """
    When method post
    Then status 201
    * def userId = response.id
    And match userId == '#string'
    And match response.name == "morpheus"
    And match response.job == "leader"


#  Scenario: validate create user status 400
#    Given path "users"
#    And request
#    """
#  {
#   "name": null ,
#   "job": null,
#  }
#  """
#    When method post
#    Then status 400
#    And match response.message == 'The request body contains invalid JSON.'
