const { Command, flags } = require('@oclif/command')
const NodeBe = require('node-be')


class RconcmdCommand extends Command {
    async run() {
        const { flags } = this.parse(RconcmdCommand)
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
                    //send rcon/server command
                if (flags.command == "say") {
                    client.sendCommand("say -1" + " " + flags.message),
                        client.sendCommand('#logout'),
                        setTimeout(function() {
                                client.close();
                                process.exit(0);
                            },
                            200);
                } else {
                    client.sendCommand(flags.command),
                        client.sendCommand('#logout'),
                        setTimeout(function() {
                                client.close();
                                process.exit(0);
                            },
                            200);
                }
            })
            //Attempt to connect with given host:port and password
        client.connect()
    }

}

RconcmdCommand.description = `DayZ Rcon CMD
...
Usage:
xedrcon rconcmd -c say -m "Server wird in 1min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
`

RconcmdCommand.flags = {
    command: flags.string({ char: 'c', description: 'command to push' }),
    message: flags.string({ char: 'm', description: 'command say message to push' }),
    host: flags.string({ char: 'h', description: 'host to push' }),
    port: flags.string({ char: 'p', description: 'port to push' }),
    key: flags.string({ char: 'k', description: 'pw to push' }),
}

module.exports = RconcmdCommand