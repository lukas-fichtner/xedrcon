const { Command, flags } = require('@oclif/command')
const NodeBe = require('node-be')


class AdmincmdCommand extends Command {
    async run() {
        const { flags } = this.parse(AdmincmdCommand)
        let client = new NodeBe(flags.host, flags.port, flags.key)

        //Event: 'message'
        //RCon messages and command responses will be emitted
        client.on('message', function(message) {
            console.log(message)
        })

        //Event: 'error'
        //Errors while connecting/login or socket errors will be emitted
        client.on('err', function(err) {
            console.log(err)
        })

        //Event: 'close'
        //Will be emitted when the server shuts down, becomes unresponsive or the connection is lost
        client.on('close', function() {
            console.log('Connection closed.')
        })

        //Event: 'listening'
        //Will be emitted when the connection is successfully established and login has succeeded
        client.on('listening', function() {
            console.log('Connected!')
                //send rcon/server commands
            client.sendCommand('#' + flags.name),
                client.sendCommand('#logout'),
                setTimeout(function() {
                        client.close()
                    },
                    200);
        })

        //Attempt to connect with given host:port and password
        client.connect()
    }
}

AdmincmdCommand.description = `DayZ Admin CMD
...
Extra documentation goes here
`

AdmincmdCommand.flags = {
    name: flags.string({ char: 'c', description: 'command to push' }),
    host: flags.string({ char: 'h', description: 'host to push' }),
    port: flags.string({ char: 'p', description: 'port to push' }),
    key: flags.string({ char: 'k', description: 'pw to push' }),
}

module.exports = AdmincmdCommand