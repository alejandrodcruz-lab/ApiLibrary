# ApiLibrary
Api Libreria

* GET -> /libros -> Obtener todos los libros
* GET -> /libros/{id}  -> Obtener un libro
* POST -> /libros -> Crear libro -> Enviar por BODY con formato:
                                  [
                                      {
                                          "id": 2,
                                          "name": "The Best of Edgar Allan Poe",
                                          "publicationDate": "21/07/2021",
                                          "language": "spanish",
                                          "publisher": "Saga",
                                          "genre": "horror",
                                          "price": 10.0,
                                          "format": "digital",
                                          "stock": 100,
                                          "active": true
                                      }
                                  ]

* DELETE -> /libros/{id} -> Desactivar un libro
* DELETE -> /libros/delete/{id} -> Eliminar libro de la Base
