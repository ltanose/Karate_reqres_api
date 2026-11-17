@Update_users_put
Feature: update to users in the api

  Background:
    * url baseUrl
    * header Content-Type = "Application/json"
    * header x-api-key = apiKey



  Scenario: validate update user status 200
    Given path "users/2"
    And request
    """
    {
      "name": "morpheus",
      "job": "zion resident"
    }
    """
    When method put
    Then status 200
    * def userId = response.id
    And match response.name == "morpheus"
    And match response.job == "zion resident"