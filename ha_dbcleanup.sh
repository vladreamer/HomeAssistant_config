#!/bin/sh
mysql -uroot -p1234 <<QUERY_INPUT
USE hass;
DELETE FROM events WHERE event_type = 'service_executed';
DELETE FROM events WHERE event_type = 'call_service';
DELETE FROM events WHERE event_type = 'component_loaded';
QUERY_INPUT
