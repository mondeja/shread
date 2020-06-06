"use strict"

/**
 * Configure Atom Text Editor through ~/.atom/config.cson file.
 **/

const fs = require("fs");
const os = require("os");
const path = require("path");

const CSON = require("cson");

const main = () => {
  const homeDirectory = os.homedir();
  const atomConfigFilePath = path.join(homeDirectory, ".atom", "config.cson");
  const atomConfig = CSON.parseCSONFile(atomConfigFilePath);

  // Editor global config
  if (atomConfig["*"].core === undefined) {
    atomConfig["*"].core = {};
  }
  //   Don't send telemetry data to developers
  atomConfig["*"].core.telemetryConsent = "no";

  if (atomConfig["*"].welcome === undefined) {
    atomConfig["*"].welcome = {};
  }
  // Doesn't show welcome screen
  atomConfig["*"].welcome.showOnStartup = false;


  if (atomConfig["*"].editor === undefined) {
    atomConfig["*"].editor = {};
  }
  //   Show indent guide
  atomConfig["*"].editor.showIndentGuide = true;
  //   Show line numbers
  atomConfig["*"].editor.showLineNumbers = true;
  //   Indentation of 4 spaces by default
  atomConfig["*"].editor.tabLength = 4;

  if (atomConfig["*"].editor.whitespace === undefined) {
    atomConfig["*"].editor.whitespace = {};
  }
  //   Remove multiple lines at the end of the files
  atomConfig["*"].editor.whitespace.ensureSingleTrailingNewline = true;
  //   Remove blank spaces at the end of the lines
  atomConfig["*"].editor.whitespace.removeTrailingWhitespace = true;

  // JS files configuration
  if (atomConfig[".source.js"] === undefined) {
    atomConfig[".source.js"] = {};
  }
  if (atomConfig[".source.js"].editor === undefined) {
    atomConfig[".source.js"].editor = {};
  }
  //   2 spaces indentation
  atomConfig[".source.js"].editor.tabLength = 2;

  // Configuración para archivos JSON
  if (atomConfig[".source.json"] === undefined) {
    atomConfig[".source.json"] = {};
  }
  if (atomConfig[".source.json"].editor === undefined) {
    atomConfig[".source.json"].editor = {};
  }
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
