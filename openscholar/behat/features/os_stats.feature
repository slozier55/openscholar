Feature:
  Testing the stats feature JSON ouput.

  @api
  Scenario: Verify for the json output for a specific node.
    Given I visit "stats"
      And I should get:
      """
      {"success":true,"filesize":{"value":"{{*}}","text":"Total uploaded"},"filesize_bytes":{"value":"{{*}}","text":"Total uploaded bytes"},"users":{"value":"{{*}}","text":"Users"},"new_users":{"value":"{{*}}","text":"New users"},"websites":{"value":"{{*}}","text":"Websites"},"new_websites":{"value":"{{*}}","text":"New websites"},"posts":{"value":"{{*}}","text":"Posts"},"new_posts":{"value":"{{*}}","text":"New posts"},"publications":{"value":"{{*}}","text":"Publications"},"new_publications":{"value":"{{*}}","text":"New publications"},"files":{"value":"{{*}}","text":"Uploaded files"},"href":"{{*}}","os_version":"{{*}}"}
      """

  @api
  Scenario: Verify for the json output for a specific node.
    Given I visit "geckoboard"
    And I should get:
    """
    {"item":[{"value":"{{*}}","text":""}]}
    """
    When I visit "stats?style=geckoboard&type=websites"
    Then I should get:
    """
    {"item":[{"value":"{{*}}","text":""}]}
    """
