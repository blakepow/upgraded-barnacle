const http = require('http')

const server = http.createServer((req, res, next) => {
    console.log('request made')
})

server.listen(4000, 'localhost', () => {
    console.log('listening for requests on port 4000')
})