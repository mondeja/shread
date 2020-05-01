"use strict"

const fs = require("fs");
const path = require("path");

const walk = require("./util/walk.js");

const BASE_URL = "https://mondeja.github.io/shread";

const PUBLIC_DIR = path.resolve(__filename, "..", "..", "public");

const EXCLUDE_PATHS = [
  "list.txt",
];
const EXCLUDE_EXTENSIONS = [
  "po",
]

async function main() {
  return walk(PUBLIC_DIR).then(files => {
    let listFileContent = "";

    for (let f=0; f<files.length; f++) {
      let relativePath = path.relative(PUBLIC_DIR, files[f]);

      if (EXCLUDE_PATHS.indexOf(relativePath) > -1) {
        continue;
      }
      if (EXCLUDE_EXTENSIONS.indexOf(files[f].split(".").pop()) > -1) {
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
