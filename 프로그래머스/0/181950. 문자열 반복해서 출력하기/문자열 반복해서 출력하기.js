const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

let input = [];

rl.on('line', function (line) {
    input = line.split(' ');
}).on('close', function () {
    let str = input[0];
    let n = Number(input[1]);
    let result = ""
    for (i = 0; i < n; i++) {
        result += str
    }
    console.log(result)
});