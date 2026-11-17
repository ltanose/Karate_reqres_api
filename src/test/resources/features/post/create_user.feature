@Create_users_post
Feature: created to users in the api

  Background:
    * url baseUrl
    * header Content-Type = "Application/json"
    * header x-api-key = apiKey


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