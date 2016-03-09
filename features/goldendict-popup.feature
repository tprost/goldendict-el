Feature: goldendict-popup
  In order to open GoldenDict's popup interface with a particular query
  As an emacs user
  I want to run a command

  @todo
  Scenario: Converting a marked region
    Given I am in buffer "my-buffer"
    And the buffer is empty
    And I insert:
    """
    cat
    """
    And I select "cat"
    And transient mark mode is active
    And I bind key "C-c g" to "goldendict-popup"
    And I press "C-c g"
    Then Emacs should run "goldendict \"cat\""
