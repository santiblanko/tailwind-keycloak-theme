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
 - Facebook
 - GitHub
 - Google
 - Twitter

### Login
<img src="https://i.ibb.co/yVr29kp/Captura-de-Pantalla-2022-09-24-a-la-s-9-15-02-p-m.png" alt="Captura-de-Pantalla-2022-09-24-a-la-s-9-15-02-p-m" border="0" />

### Register
<img src="https://i.ibb.co/PgqFSV0/Captura-de-Pantalla-2022-09-24-a-la-s-9-17-01-p-m.png" alt="Captura-de-Pantalla-2022-09-24-a-la-s-9-17-01-p-m" border="0">

### Reset Password
<img src="https://i.ibb.co/QCM1j2J/Captura-de-Pantalla-2022-09-24-a-la-s-9-18-18-p-m.png" alt="Captura-de-Pantalla-2022-09-24-a-la-s-9-18-18-p-m" border="0">

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
