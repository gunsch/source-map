#!/usr/bin/env node
const fs = require("fs");
const Path = require("path");

fs.writeFileSync(Path.resolve(__dirname, "package.json"), JSON.stringify({
    ...require("../../package.json"),
    ...{
        "name": "@cspotcode/source-map-consumer"
    }
}, null, 2));
