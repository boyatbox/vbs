Given a book named "cucumber cookbook" with following body
  """
  Title – Cucumber cookbook
  Author of this book is first time writer so please excuse the naïve mistakes. But he will definitely improve with chapters he writes.
  """
  
  Scenario Outline: E-mail content verification
    Given I have a user account with <Role> rights
    Then I should receive an email with the body:
      """
      Dear user,
      You have been granted <Role> rights.  You are <details>. Please be    
      responsible.
      -The Admins
      """

    Examples:
      | Role    | details                                       |
      | Manager | now able to manage your employee accounts     |
      | Admin   | able to manage any user account on system |