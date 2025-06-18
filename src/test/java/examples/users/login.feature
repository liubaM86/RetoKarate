Feature: Login to Demoblaze

  Background:
    * url 'https://api.demoblaze.com'
    * header Content-Type = 'application/json'

  Scenario:  Successful login to Demoblaze
    * def username = 'liubama2025'
    * def password = 'liubama2025123'
    * def requestBody =
  """
  {
    "username": "#(username)",
    "password": "#(password)"
  }
  """
    Given path '/login'
    And request requestBody
    When method post
    Then status 200
    * print 'Login response:', response
    And match response contains 'Auth_token:'
    * def token = response.replace('Auth_token: ', '').trim()
    * assert token.length > 0
    * print 'Token:', token

  Scenario Outline: Login outline
    * def requestBody =
  """
  {
    "username": "<username>",
    "password": "<password>"
  }
  """
    Given path '/login'
    And request requestBody
    When method post
    Then status 200
    * print 'Response:', response


    Examples:
      | username        | password       | expected                                |
      | liubama2025     | liubama2025123 | ""                                      |
      | liubama2025     | incorrecta     | { errorMessage: 'Wrong password.' }     |
      | usuarioFake9999 | cualquiera     | { errorMessage: 'User does not exist.' }|

  Scenario: Login failed
    * def username = 'usuario_que_no_existe_123'
    * def password = 'cualquier123'
    * def requestBody =
  """
  {
    "username": "#(username)",
    "password": "#(password)"
  }
  """
    Given path '/login'
    And request requestBody
    When method post
    Then status 200
    And match response == { errorMessage: 'User does not exist.' }