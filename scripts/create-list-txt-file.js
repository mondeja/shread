"use strict"

const fs = require("fs");
const path = require("path");

const walk = require("./util/walk.js");

const BASE_URL = "https://mondeja.github.io/shread";

const PUBLIC_DIR = path.resolve(__filename, "..", "..", "public");
const SRC_DIR = path.resolve(__filename, "..", "..", "src");

const EXCLUDE_PATHS = [
  "list.txt"
];

async function main() {
  return walk(SRC_DIR).then(files => {
    let listFileContent = "";

    for (let f=0; f<files.length; f++) {
      let relativePath = path.relative(SRC_DIR,files[f]);
      if (EXCLUDE_PATHS.indexOf(relativePath) > -1) {
        continue;
      }
      listFileContent += `${BASE_URL}/${relativePath}\n`;
    }

    try {
      fs.writeFileSync(path.join(PUBLIC_DIR, "list.txt"), listFileContent);
    } catch (err) {
      console.error(err);
      process.exit(1);
    }
  });
}

if (require.main === module) {
  main();
}
