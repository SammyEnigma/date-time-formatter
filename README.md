DateTimeFormatter Library
=========================

Original Repository: https://github.com/dmitrytoropchin/dateformater

Provides classes for formatting dates and time in a readable format. 

For example, the following code

```
DateFormaterHumanReadable *formater = new DateFormaterHumanReadable();

qDebug() << formater->format(QDate());

qDebug() << formater->format(QDate::currentDate());
qDebug() << formater->format(QDate::currentDate().addDays(-1));
qDebug() << formater->format(QDate::currentDate().addDays(1));

qDebug() << formater->format(QDateTime::currentDateTime());
qDebug() << formater->format(QDate::currentDate().addMonths(1));

qDebug() << "";

qDebug() << formater->format(QDate(), QDate());

qDebug() << formater->format(QDate::currentDate(), QDate::currentDate().addDays(1));
qDebug() << formater->format(QDate::currentDate(), QDate::currentDate().addMonths(1));
qDebug() << formater->format(QDate::currentDate(), QDate::currentDate().addYears(1));

qDebug() << formater->format(QDateTime::currentDateTime(),
                             QDateTime::currentDateTime().addSecs(3600));
qDebug() << formater->format(QDateTime::currentDateTime(),
                             QDateTime::currentDateTime().addDays(1).addSecs(3600));
qDebug() << formater->format(QDateTime::currentDateTime(),
                             QDateTime::currentDateTime().addYears(1).addSecs(3600));
```

displays

```
"undefined date"
"today"
"yesterday"
"tomorrow"
"today in 20:49"
"19 december 2019"

"undefined period"
"from 19 to 20 november 2019"
"from 19 november to 19 december 2019"
"from 19 november 2019 to 19 november 2020"
"from 20:49 to 21:49 19 november 2019"
"from 20:49 19 november to 21:49 20 november 2019"
"from 20:49 19 november 2019 to 21:49 19 november 2020"
```
