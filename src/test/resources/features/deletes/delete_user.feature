@users_delete
Feature: created to users in the api

  Background:
    * url "https://reqres.in/api"
    * header Content-Type = "Application/json"

  Scenario: validate create user status 201
    Given path "users/1000"
    When method post
    Then status 204