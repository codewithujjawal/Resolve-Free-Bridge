# Resolve Free Bridge

### Automate DaVinci Resolve Free when external scripting is unavailable.

DaVinci Resolve Free 21.1 changed the scripting/automation landscape:
the traditional external scripting route isn't available, but the
embedded Lua Console can still access the live Resolve API.

This project turns that remaining capability into a practical bridge.

## Why?

Tools that depend on Resolve's external scripting interface can stop
working on Free.

But the Resolve Lua Console can still do things like:

- read the current timeline
- configure render jobs
- export audio
- start rendering
- query render state

This project makes those capabilities usable from outside Resolve.