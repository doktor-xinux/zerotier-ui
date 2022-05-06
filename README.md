
# Zerotier-ui

Bei diesem Projekt handelt es sich um eine Erweiterung des Frontends von https://github.com/dec0dOS/zero-ui.

Das Backend wurde Komplett neu in Python neugeschrieben.

Für das Projekt wurde eine Docker-Compose File erstellt um die Benutzung zu vereinfachen.




## Deployment

Um das Projekt zu Kompillieren müssen verschiedene Abhängigkeiten installiert werden.


### Backend

* flask
* flask_cors
* bcrypt
* tinydb
* loguru
* requests

```bash
  cd backend
  pip3 install -r requirements.txt
```



### Frontend

```bash
  cd frontend
  yarn install && yarn start
```


## Acknowledgements

 - [Originale Zero-Tier UI](https://github.com/dec0dOS/zero-ui)

