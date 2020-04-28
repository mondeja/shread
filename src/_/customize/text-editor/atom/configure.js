"use strict"

/**
 * Configure Atom Text Editor through ~/.atom/config.cson file.
 **/

const fs = require("fs");
const os = require("os");
const path = require("path");

const CSON = require("cson");

const main = () => {
  // Obtenemos el directorio del usuario
  const homeDirectory = os.homedir();

  // Obtenemos la ruta al archivo de configuración de Atom
  const atomConfigFilePath = path.join(homeDirectory, ".atom", "config.cson");

  // Obtenemos el contenido del archivo como un JSON
  const atomConfig = CSON.parseCSONFile(atomConfigFilePath);

  // Configuración global del editor

  if (atomConfig["*"].core === undefined) {
    atomConfig["*"].core = {};
  }
  //   No envíes datos a los desarrolladores
  atomConfig["*"].core.telemetryConsent = "no";

  if (atomConfig["*"].welcome === undefined) {
    atomConfig["*"].welcome = {};
  }
  //   No muestres el mensaje de bienvenida al arrancar
  atomConfig["*"].welcome.showOnStartup = false;

  if (atomConfig["*"].editor === undefined) {
    atomConfig["*"].editor = {};
  }
  //   Muestra la guía de indentación
  atomConfig["*"].editor.showIndentGuide = true;
  //   Muestra los números de línea
  atomConfig["*"].editor.showLineNumbers = true;
  //   Identación de 4 espacios por defecto
  atomConfig["*"].editor.tabLength = 4;

  if (atomConfig["*"].editor.whitespace === undefined) {
    atomConfig["*"].editor.whitespace = {};
  }
  //   Elimina múltiples líneas a final de archivo
  atomConfig["*"].editor.whitespace.ensureSingleTrailingNewline = true;
  //   Elimina espacios en blanco a final de línea
  atomConfig["*"].editor.whitespace.removeTrailingWhitespace = true;

  // Configuración para archivos Javascript
  if (atomConfig[".source.js"] === undefined) {
    atomConfig[".source.js"] = {};
  }
  if (atomConfig[".source.js"].editor === undefined) {
    atomConfig[".source.js"].editor = {};
  }
  //   Indentación de 2 espacios
  atomConfig[".source.js"].editor.tabLength = 2;

  // Configuración para archivos JSON
  if (atomConfig[".source.json"] === undefined) {
    atomConfig[".source.json"] = {};
  }
  if (atomConfig[".source.json"].editor === undefined) {
    atomConfig[".source.json"].editor = {};
  }
  //   Indentación de 2 espacios
  atomConfig[".source.json"].editor.tabLength = 2;

  const atomConfigCSONString = CSON.createCSONString(
    atomConfig,
    {indent: "  "}
  )

  try {
    fs.writeFileSync(atomConfigFilePath, atomConfigCSONString);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
}

if (require.main === module) {
  main();
}

 module.exports = main;
