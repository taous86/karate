Feature: Karate Demo
  Scenario: Create user
    Given url 'https://reqres.in/api/users'
    When request {"name":"Taous","job":"SDET"}
    And method post
    Then status 201
    And match response == {"name":"Taous","job":"SDET","id":'#ignore',"createdAt":'#ignore'}

    Scenario: Create user
      Given I pass the url endpoint for user creation
      When a request is sent with name Taosu and job SDET
      And send post request
      Then status is 201
      And the json response contains the correct name and job

  @test
  Scenario: Gmail login
        Given driver "https://www.google.com"
        And input("//input[@name='q']",'Karate tool')
        And click("//input[@name='btnI']")
        Then waitForUrl("https://github.com/intuit/karate")


Feature: Demo Karate Tests
  Scenario: Verify that test server is up and running
    Given URL "Api endpoint"
    When method get
    Then status 200
  //test

Feature: sample karate test script
  Background:
    * url 'https://...'
  Scenario: get all customers and then get the first customer by id
    Given path 'customers'
    When method get
    Then status 200
    * def first = response[0]
    Given path 'customers', first.name
    When method get
    Then status 200
