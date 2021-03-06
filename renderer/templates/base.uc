# Basic configuration
set network.loopback=interface
set network.loopback.ifname='lo'
set network.loopback.proto='static'
set network.loopback.ipaddr='127.0.0.1'
set network.loopback.netmask='255.0.0.0'

add network device
set network.@device[-1].name=up
set network.@device[-1].type=bridge

{% if (capab.platform != "switch"): %}
add network device
set network.@device[-1].name=down
set network.@device[-1].type=bridge

{% endif %}
set network.up_none=interface
set network.up_none.ifname=up
set network.up_none.proto=none
