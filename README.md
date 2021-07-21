# ApiLibrary
Api Libreria

* GET -> /books -> Obtener todos los libros
* GET -> /books/{id}  -> Obtener un libro
* POST -> /books -> Crear libro -> Enviar por BODY con formato:
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

* DELETE -> /books/{id} -> Desactivar un libro
* DELETE -> /books/delete/{id} -> Eliminar libro de la Base
