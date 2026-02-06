%dw 2.0

output application/json 
---
{
	apName: app.name,
	status: 'UP',
	'mule.version': mule.version,
	'server.host': server.host,
	ipaddress: server.ip,
	'server.time': now()
}