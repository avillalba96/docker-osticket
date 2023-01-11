#!/bin/bash
  
MYSQL_USER="root"
MYSQL_DB="os_ticket"
MYSQL_PASS="PASSWORD"
CONTAINER_NAME="osticket-db"
DOCKER_EXEC="docker exec $CONTAINER_NAME"
DOCKER_COMMAND=(mysql -p$MYSQL_PASS -u$MYSQL_USER -h localhost $MYSQL_DB -e "DELETE FROM ost_thread WHERE object_type = 'T' AND object_id NOT IN (SELECT ticket_id FROM ost_ticket); DELETE FROM ost_thread_collaborator WHERE thread_id NOT IN (SELECT id FROM ost_thread); DELETE FROM ost_thread_entry WHERE thread_id NOT IN (SELECT id FROM ost_thread); DELETE FROM ost_thread_entry_email WHERE thread_entry_id NOT IN (SELECT id FROM ost_thread_entry); DELETE FROM ost_thread_event WHERE thread_id NOT IN (SELECT id FROM ost_thread); DELETE FROM ost_thread_referral WHERE thread_id NOT IN (SELECT id FROM ost_thread);")

$DOCKER_EXEC "${DOCKER_COMMAND[@]}"