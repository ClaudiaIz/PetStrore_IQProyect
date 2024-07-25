Feature:  Crear Mascota

  Scenario: Crear una mascota
    Given url apiUrl
    And path '/v2/pet'
    And request
    """
    {
  "id": 77,
  "category": {
    "id": 776,
    "name": "Perros"
  },
  "name": "Memo",
  "photoUrls": [

  ],
  "tags": [
    {
      "id": 1,
      "name": "Golden"
    }
  ],
  "status": "available"
}
    """
    When method Post
    Then status 200
    * def response = response