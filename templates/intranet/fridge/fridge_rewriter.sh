#!/bin/bash
cd /srv/fridge/dynamic/
/usr/bin/curl 'http://api.openweathermap.org/data/2.5/weather?q=Krakow,pl&appid={{ owm_token }}&units=metric' > weather.json
/usr/bin/curl 'http://api.openweathermap.org/data/2.5/forecast?q=Krakow,pl&appid={{ owm_token }}&units=metric' > forecast.json
/usr/bin/curl 'https://api.sunrise-sunset.org/json?lat=50.0583674&lng=19.9518081&formatted=0&date='`/bin/date +%Y-%m-%d` > sun.json