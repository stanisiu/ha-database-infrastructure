#!/bin/bash

sudo mysql -e "SHOW SLAVE STATUS\G" | grep -E "Slave_IO_Running|Slave_SQL_Running|Slave_SQL_Running_State"