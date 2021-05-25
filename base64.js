function pbcopy(data) {
  const { stdin } = require("child_process").spawn("pbcopy");
  stdin.write(data);
  stdin.end();
}

const [, , raw] = process.argv;
let decoded = "";

if (raw.startsWith("https://trading.health")) {
  const pattern = new RegExp(/^https?:\/\/trading\.health\/full\?api=\w+&url=((\w|\=|\+|\/)+)&type=\d+/)
  const data = pattern.exec(raw)[1];
  decoded = Buffer.from(data, "base64").toString("ascii");
} else {
  decoded = Buffer.from(raw, "base64").toString("ascii");
}
console.log(decoded);
pbcopy(decoded)
