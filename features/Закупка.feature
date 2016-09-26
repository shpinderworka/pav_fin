﻿# encoding: utf-8
# language: ru

@tree

Функционал: Закупка товаров и услуг
	Как оператор
	Хочу принимать товары от поставщиков
	Чтобы все делалось само 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Покупка
	Допустим я подготоваливаю вспомогательные данные
	Когда я создаю покупку
		Когда В панели разделов я выбираю "Закупки"
		И     Я нажимаю кнопку командного интерфейса "Покупка"
		Тогда открылось окно "Покупка"
		И     я нажимаю на кнопку "Создать"
		Тогда открылось окно "Покупка (создание)"
	И я заполняю шапку документа
		И     я открываю выпадающий список "Контрагент"
		И     я выбираю значение реквизита "Контрагент" из формы списка
		Тогда открылось окно "Контрагенты"
		И     В форме "Контрагенты" в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Поставщики'   |
		И     В форме "Контрагенты" в ТЧ "Список" я выбираю текущую строку
		И     В форме "Контрагенты" в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'       |
		| '000000001' | 'ООО "Зеленый свет"' |
		И     В форме "Контрагенты" в ТЧ "Список" я выбираю текущую строку
	И я выбираю товары
		Тогда открылось окно "Покупка (создание) *"
		И     в ТЧ "Товары" я нажимаю на кнопку "Добавить"
		И     в ТЧ "Товары" я выбираю значение реквизита "Товар" из формы списка
		Тогда открылось окно "Список номенклатуры"
		И     В форме "Список номенклатуры" в таблице "Список" я перехожу к строке:
		|  'Наименование' |
		|  'Материалы'    |
		И     В форме "Список номенклатуры" в ТЧ "Список" я выбираю текущую строку
		И     В форме "Список номенклатуры" в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'        |
		| '000000022' | 'Страшная загогулина' |
		И     В форме "Список номенклатуры" в ТЧ "Список" я выбираю текущую строку
		Тогда открылось окно "Покупка (создание) *"
		И     в ТЧ "Товары" я активизирую поле "Количество"
		И     в ТЧ "Товары" в поле "Количество" я ввожу текст "100,000"
		И     в ТЧ "Товары" я активизирую поле "Цена"
		И     в ТЧ "Товары" в поле "Цена" я ввожу текст "20,00"
		И     в ТЧ "Товары" я активизирую поле "Сумма"
		И     в ТЧ "Товары" в поле "Сумма" я ввожу текст "2 000,00"
		И     В форме "Покупка (создание) *" в ТЧ "Товары" я завершаю редактирование строки
		И     в ТЧ "Товары" я нажимаю на кнопку "Добавить"
		И     в ТЧ "Товары" я выбираю значение реквизита "Товар" из формы списка
		Тогда открылось окно "Список номенклатуры"
		И     В форме "Список номенклатуры" в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Материалы'    |
		И     В форме "Список номенклатуры" в ТЧ "Список" я выбираю текущую строку
		И     В форме "Список номенклатуры" в таблице "Список" я перехожу к строке:
		|  'Наименование'        |
		|  'Красивая загогулина' |
		И     В форме "Список номенклатуры" в ТЧ "Список" я выбираю текущую строку
		Тогда открылось окно "Покупка (создание) *"
		И     в ТЧ "Товары" я активизирую поле "Количество"
		И     в ТЧ "Товары" в поле "Количество" я ввожу текст "15,000"
		И     в ТЧ "Товары" я активизирую поле "Цена"
		И     в ТЧ "Товары" в поле "Цена" я ввожу текст "10,00"
		И     в ТЧ "Товары" я активизирую поле "Сумма"
		И     в ТЧ "Товары" в поле "Сумма" я ввожу текст "150,00"
		И     В форме "Покупка (создание) *" в ТЧ "Товары" я завершаю редактирование строки
	И я провожу документ
		И     я нажимаю на кнопку "Провести"
	Тогда результат проведения корректен
		И     В текущем окне я нажимаю кнопку командного интерфейса "Остатки номенклатуры"
		Тогда таблица формы с именем "Список" стала равной:
		| 'Номенклатура'        | 'Номер строки' | 'Сумма'    |    'Количество' |
		| 'Страшная загогулина' | '1'            | '2 000,00' |    '100,00'     |
		| 'Красивая загогулина' | '2'            | '150,00'   |    '15,00'      |
