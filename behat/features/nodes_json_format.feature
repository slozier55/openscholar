Feature:
  Testing the RESTWS for json output from nodes.

  @api
  Scenario: Verify for the json output for a specific node.
    Given I visit "node/1.json"
     Then I should see the following <json>:
          | title | John |
