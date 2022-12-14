import process from 'node:process';

console.log('Running…')

// Begin reading from stdin so the process does not exit.
process.stdin.resume();

process.on('SIGINT', () => {
    console.log('Received SIGINT. Press Control-D to exit.');
});

// Using a single function to handle multiple signals
function handle(signal) {
    console.log(`Received ${signal}`);
}

process.on('SIGINT', handle);
process.on('SIGTERM', handle);

setTimeout(() => {
    console.log('Done…')
    process.exit(0)
}, 30000)
