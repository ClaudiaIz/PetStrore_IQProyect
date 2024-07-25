Feature:  Eliminar Mascota

  Background:
    * def consultarMascota = call read('classpath:consultarMascota.feature')

  Scenario: Eliminar una mascota por id
    * def id = consultarMascota.response.id
    Given url apiUrl
    And path '/v2/pet/'+id
    When method Delete
    Then status 200
