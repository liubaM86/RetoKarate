Feature: User creation at https://www.demoblaze.com/
  Background:
    * url 'https://api.demoblaze.com'
    * header Content-Type = 'application/json'
  Scenario: Register user correctly
    * def randomUsername = 'user_' + Math.floor(Math.random() * 100000)
    * def password = 'clave123'
    * def requestBody =
  """
  {
    "username": "#(randomUsername)",
    "password": "#(password)"
  }
  """
    Given path '/signup'
    And request requestBody
    When method post
    Then status 200
    * print 'Usuario creado:', randomUsername
    * print 'Response:', response


  Scenario: Registration of an existing user in Demoblaze
    * def existingUsername = 'liubama2025'
    * def password = 'liubama2025123'
    * def requestBody =
  """
  {
    "username": "#(existingUsername)",
    "password": "#(password)"
  }
  """
    Given path '/signup'
    And request requestBody
    When method post
    Then status 200
    * print 'Response:', response
    And match response == {errorMessage: 'This user already exist.'}