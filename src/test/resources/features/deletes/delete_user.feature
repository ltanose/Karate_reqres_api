@users_delete
Feature: Delete to users in the api

  Background:
    * url baseUrl
    * header Content-Type = "Application/json"
    * header x-api-key = apiKey

  Scenario: validate create user status 201
    Given path "users/1000"
    When method delete
    Then status 204