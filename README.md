# library

Загрузить в библиотеку демо-данные из файла
###### library = Library.load_data

Добавить нового автора 
###### puts library.add_author(Author.new('Jack Gordon', "biography"))

Проверка того, что автор с аналогичными данными добавлен не будет
###### puts library.add_author(Author.new('Jack Gordon', "biography"))

Добавить нового читателя
###### puts library.add_reader(Reader.new('Jim Valentine', 'JimCollin@gmail.com',
'Hollywood', 'First Street', '9'))

Проверка того, что читатель с аналогичными данными добавлен не будет
###### puts library.add_reader(Reader.new('Jim Valentine', 'JimCollin@gmail.com',
'Hollywood', 'First Street', '9'))

Добавить новую книгу
###### puts library.add_book(Book.new('THE PLACE', 'Jack London'))

Проверка того, что книга с аналогичными данными добавлена не будет
###### puts library.add_book(Book.new('THE PLACE', 'Jack London'))

Добавить новый ордер
###### puts library.add_order(Order.new('Jim Collin', 'MARTIN EDEN'))

Проверка того, что ордер с читателем которого нет в базе добавлен не будет
###### puts library.add_order(Order.new('Jim Collin 1', 'MARTIN EDEN'))

Проверка того, что ордер с книгой которой нет в базе добавлен не будет
###### puts library.add_order(Order.new('Jim Collin', 'MARTIN EDEN 1'))

Узнать читателя с наибольшим количеством ордеров
###### puts library.most_reading_person

Узнать самую популярную книгу
###### puts library.most_popular_book

Узнать количество ордеров у трех самых популярных книг
###### puts library.three_popular_book

Сохранить файл библиотеки с добавленными вами при тестировании данными
###### library.save_data_to_file
