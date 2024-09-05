# Prueba Técnica - Flutter

Desarrollado por: Santiago Ríos Valero.

## Descripción del Proyecto
De acuerdo a la necesidad de la vacante, se requiere desarrollar una app en el sistema operativo solicitado (iOS, Android o Ambos) en la herramienta requerida (Android Studio, XCode, Visual Studio, Visual Code, Idea JetBrains) con el framework necesario (Nativo, Flutter, Reactive Native, Ionic, otros), y se debe crear con las características nombradas en el siguiente ítem.

## Items a realizar

- Pantalla de Splash.
- Pantalla de Landing.
- Pantalla de Detail.
- Pantalla de Detail Scroll.
 

## Requisitos Previos

- Flutter SDK (Versión 3.22.2)
- Dart (Versión 3.4.3)

## Configuración del Entorno

Asegúrate de tener Flutter, Dart instalados en tu sistema. Para verificar, ejecuta los siguientes comandos en tu terminal:

```bash
flutter doctor
dart --version
```

## Correr el proyecto

- Colocar en la carpeta del proyecto el archivo `.env` que está en el correo de la prueba técnica.

- Correr los siguientes comandos en tu terminal:

```
flutter pub get
```

```
flutter run
```


## Uso de GetX

Este proyecto utiliza GetX para una gestión eficiente del estado, navegación simplificada entre pantallas, y la inyección de dependencias para una mejor escalabilidad y mantenimiento del código.

## Estructura del Proyecto

- `/lib`: Contiene el código fuente de Dart para la aplicación.
  - `/models`: Modelos de datos para la aplicación.
  - `/modules`: Módulos de la aplicación, cada uno con su controlador, vista y binding.
  - `/services`: Carpeta donde se encuentran las funciones que consumen los endpoints.
  - `/utils`: Constantes y funciones generales para la aplicación.
  - `/widgets`: Widgets reutilizables en la aplicación.
- `/assets`: Recursos como imágenes, íconos y modelos en formato json.

## Agradecimientos

- Agradecimientos especiales a Pragma por la oportunidad de participar en su proceso de selección. Espero poder aportar mis conocimientos y habilidades en su equipo de trabajo.