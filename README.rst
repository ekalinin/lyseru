Что это?
========

Это перевод замечательного учебника по Erlang: http://learnyousomeerlang.com/.

Как это работает?
=================

Текст написан с помощью генератора документации `sphinx <http://sphinx.pocoo.org/>`_,
который позволяет получать из исходного текста не только html, но и pdf, epub и т.д.

Весь текст расположен в директории src. Результаты сборки складываются в директории
`src/_build/html` для html версии, `src/_build/latex` для pdf версии и т.д.

Как собрать?
============

Примеры сборки текста приводятся для ОС сеймейства debian/ubuntu.

Подготовка к сборке
-------------------

Чтобы не «загадить» систему, будем весь необходимый софт ставить в
`виртуальном окружении <http://www.virtualenv.org/>`_. Для начала необходимо
поставить сам virtualenv::

    $ sudo aptitude install python-virtualenv

После этого вытягиваем git-репозиторий::

    $ git clone git://github.com/ekalinin/learnyousomeerlang.ru.git

И инициализируем окружение::

    $ cd learnyousomeerlang.ru
    $ make bootstrap

Собираем html
-------------

Чтобы собрать html версию учебника, необходимо, находясь в корне проекта,
выполнить::

    $ make html

Результат сборки будет «лежать» тут::

    src/_build/html/


Собираем pdf
------------

Чтобы собрать pdf версию, необходимо установить latex::

    $ sudo aptitude install texlive-full

После этого достаточно выполнить в корне проекта::

    $ make pdf

Результат будет «лежать» тут::

    src/_build/latex/learnyousomeerlangru.pdf
