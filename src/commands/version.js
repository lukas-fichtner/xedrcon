const { Command, flags } = require('@oclif/command')

class VersionCommand extends Command {
    async run() {
        const { flags } = this.parse(VersionCommand)
        const name = flags.name || 'world'
        this.log(`hello ${name} from C:\\SharedHome\\Projekte\\DayZ-ServerMng\\xedrcon\\src\\commands\\version.js`)
    }
}

VersionCommand.description = `xedrcon version
...
Extra documentation goes here
`

VersionCommand.flags = {
    name: flags.string({ char: 'n', description: 'name to print' }),
}

module.exports = VersionCommand