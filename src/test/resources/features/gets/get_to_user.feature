@List_users_get
Feature: lister to users in the api

  Background:
    * url baseUrl
    * header Content-Type = "Application/json"
    * header x-api-key = apiKey



  Scenario: validate the status 200
    Given path "users/1"
    When method get
    Then status 200
    And match response.data ==
    """
  {
  "id": '#number',
  "email": '#string',
  "first_name": '#string',
  "last_name": '#string',
  "avatar": '#string'
  }
  """
    And match response.data.first_name == "George"
    And match response.data.last_name == "Bluth"
    And match response.data.email == "george.bluth@reqres.in"


  Scenario: validate the status 404
    Given path "users/1000"
    When method get
    Then match responseStatus == 404


  Scenario: validate the status 403
    Given path "users/1000"
    And header x-api-key = "INVALID_API_KEY"
    When method get
    Then match responseStatus == 403