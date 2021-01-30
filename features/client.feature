Feature: Client
  In order to get reverse geocoding
  As a CLI
  I want to be as objective as possible

  Scenario: Human-readable address
    When I run `tellus address '54.15066' '-4.47894'`
    Then the output should contain "Douglas"
