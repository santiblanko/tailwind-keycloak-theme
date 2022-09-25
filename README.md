# tailwindUI + keycloak 

### Styled Pages
- Login
- Login Config TOTP
- Login IDP Link Confirm
- Login OTP
- Login Reset Password
- Login Update Password
- Login Update Profile
- Register
- Social Media Icons
   * Facebook
   * GitHub
   * Google
   * Twitter

### Login
<img src="https://i.ibb.co/yVr29kp/Captura-de-Pantalla-2022-09-24-a-la-s-9-15-02-p-m.png" alt="Captura-de-Pantalla-2022-09-24-a-la-s-9-15-02-p-m" border="0" />

### Register
<img src="https://i.ibb.co/PgqFSV0/Captura-de-Pantalla-2022-09-24-a-la-s-9-17-01-p-m.png" alt="Captura-de-Pantalla-2022-09-24-a-la-s-9-17-01-p-m" border="0">

### Reset Password
<img src="https://i.ibb.co/QCM1j2J/Captura-de-Pantalla-2022-09-24-a-la-s-9-18-18-p-m.png" alt="Captura-de-Pantalla-2022-09-24-a-la-s-9-18-18-p-m" border="0">

<img src="https://i.ibb.co/rMH4rVJ/Captura-de-Pantalla-2022-09-25-a-la-s-12-25-08-a-m.png" alt="Captura-de-Pantalla-2022-09-25-a-la-s-12-25-08-a-m" border="0">


### Dockerfile for test the theme with disable cache 

```
FROM quay.io/keycloak/keycloak:legacy

RUN sed -i -E "s/(<staticMaxAge>)2592000(<\/staticMaxAge>)/\1\-1\2/" /opt/jboss/keycloak/standalone/configuration/standalone.xml
RUN sed -i -E "s/(<cacheThemes>)true(<\/cacheThemes>)/\1false\2/" /opt/jboss/keycloak/standalone/configuration/standalone.xml
RUN sed -i -E "s/(<cacheTemplates>)true(<\/cacheTemplates>)/\1false\2/" /opt/jboss/keycloak/standalone/configuration/standalone.xml

RUN sed -i -E "s/(<staticMaxAge>)2592000(<\/staticMaxAge>)/\1\-1\2/" /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml
RUN sed -i -E "s/(<cacheThemes>)true(<\/cacheThemes>)/\1false\2/" /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml
RUN sed -i -E "s/(<cacheTemplates>)true(<\/cacheTemplates>)/\1false\2/" /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml
```

### My docker-compose for development

```
version: '3'

volumes:
  postgres_data:
      driver: local

services:
  postgres:
      image: postgres
      #volumes:
        #- postgres_data:/var/lib/postgresql/data
      environment:
        POSTGRES_DB: keycloak
        POSTGRES_USER: keycloak
        POSTGRES_PASSWORD: password
  keycloak:
      build: .
      environment:
        DB_VENDOR: POSTGRES
        DB_ADDR: postgres
        DB_DATABASE: keycloak
        DB_USER: keycloak
        DB_SCHEMA: public
        DB_PASSWORD: password
        KEYCLOAK_USER: admin
        KEYCLOAK_PASSWORD: Pa55w0rd
      ports:
        - 8080:8080
      depends_on:
        - postgres
      volumes:
        - ./themes:/opt/jboss/keycloak/themes
```

If this implementation looks great you can share a beer using [patreon](https://patreon.com/santiblanko?utm_medium=clipboard_copy&utm_source=copyLink&utm_campaign=creatorshare_creator) or send me bitcoins.

### Bitcoin direction: 
31p39e3AtdEv8T2aU9y9D1XH9Wc5HEtRte

I will be enormously grateful. :) Also I am available for capacitations, keycloak courses and projects!! 
<b>Whatsapp :) +573233729549</b>
