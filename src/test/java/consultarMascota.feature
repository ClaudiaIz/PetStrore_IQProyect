Feature:  Consultar Mascota

  Background:
    * def crearMascota = call read('classpath:crearMascota.feature')

  Scenario: consultar una mascota por id
    * def id = crearMascota.response.id
    Given url apiUrl
    And path '/v2/pet/'+id
    When method Get
    Then status 200
    * def response = response
    And match response.id == crearMascota.response.id
    And match response.name == 'Memo'