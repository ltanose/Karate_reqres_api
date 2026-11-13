Feature: register to users in the api

  Background:
    * url "https://reqres.in/api"
    * header Content-Type = "Application/json"



  Scenario: validate register user status 200
    Given path "register"
    And request
    """
  {
  "email": "eve.holt@reqres.in",
  "password": "pistol"
  }
  """
    When method post
    Then status 200
    * def userId = response.id
    And match userId == '#number'
    And match response.token == "#string"


  Scenario: validate registration without password, status 400
    Given path "register"
    And request
    """
  {
  "email": "eve.holt@reqres.in",
  }
  """
    When method post
    Then status 400
    And match response.error == 'Missing password'

  @List_register_users_post
  Scenario: validate registration without email, status 400
    Given path "register"
    And request
    """
  {
  "password": "pistol"
  }
  """
    When method post
    Then status 400
    And match response.error == 'Missing email or username'
