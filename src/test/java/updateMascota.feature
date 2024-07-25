Feature:  Actualizar Mascota

  Background:
    * def consultarMascota = call read('classpath:consultarMascota.feature')

  Scenario: Actualizar una mascota
    * def id = consultarMascota.response.id
    Given url apiUrl
    And path '/v2/pet/'+id
    And form field 'name' = 'Azul'
    When method Post
    Then status 200
