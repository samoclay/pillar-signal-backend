java $JAVA_OPTS -Ddw.server.applicationConnectors[0].port=$PORT -Ddw.twilio.accountId=$TWILIO_ACCOUNT_SID -Ddw.twilio.accountToken=$TWILIO_ACCOUNT_TOKEN -Ddw.twilio.numbers[0]=$TWILIO_NUMBER -Ddw.twilio.localDomain=$TWILIO_DOMAIN -Ddw.twilio.messagingServicesId=$TWILIO_MESSAGE_SERVICE_ID -Ddw.attachments.accelerate=$ATTACHMENTS_USE_ACCELERATE -Ddw.attachments.accessKey=$ATTACHMENTS_ACCESS_KEY -Ddw.attachments.accessSecret=$ATTACHMENTS_SECRET_KEY -Ddw.attachments.bucket=$ATTACHMENTS_BUCKET -Ddw.profiles.accessKey=$PROFILES_ACCESS_KEY -Ddw.profiles.accessSecret=$PROFILES_ACCESS_SECRET -Ddw.profiles.bucket=$PROFILES_BUCKET -Ddw.profiles.region=$PROFILES_REGION -Ddw.cache.url=$REDIS_URL -Ddw.directory.url=$REDIS_URL -Ddw.apn.pushCertificate="$APN_PUSH_CERTIFICATE" -Ddw.apn.pushKey="$APN_PUSH_KEY" -Ddw.apn.sandbox=$APN_SANDBOX -Ddw.gcm.apiKey=$GCM_API_KEY -Ddw.gcm.senderId=$GCM_SENDER_ID -Ddw.database.driverClass=org.postgresql.Driver -Ddw.database.user=`echo $DATABASE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $1'}` -Ddw.database.password=`echo $DATABASE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $2'} | awk -F'@' {'print $1'}` -Ddw.database.url=jdbc:postgresql://`echo $DATABASE_URL | awk -F'@' {'print $2'}` -Ddw.messageStore.driverClass=org.postgresql.Driver -Ddw.messageStore.user=`echo $MESSAGESTORE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $1'}` -Ddw.messageStore.password=`echo $MESSAGESTORE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $2'} | awk -F'@' {'print $1'}` -Ddw.messageStore.url=jdbc:postgresql://`echo $MESSAGESTORE_URL | awk -F'@' {'print $2'}` -Ddw.turn.secret=$TURN_SECRET -Ddw.turn.uris[0]=$TURN_URIS_0 -jar target/TextSecureServer-1.66.jar accountdb migrate config/$STAGE.yml
java $JAVA_OPTS -Ddw.server.applicationConnectors[0].port=$PORT -Ddw.twilio.accountId=$TWILIO_ACCOUNT_SID -Ddw.twilio.accountToken=$TWILIO_ACCOUNT_TOKEN -Ddw.twilio.numbers[0]=$TWILIO_NUMBER -Ddw.twilio.localDomain=$TWILIO_DOMAIN -Ddw.twilio.messagingServicesId=$TWILIO_MESSAGE_SERVICE_ID -Ddw.attachments.accelerate=$ATTACHMENTS_USE_ACCELERATE -Ddw.attachments.accessKey=$ATTACHMENTS_ACCESS_KEY -Ddw.attachments.accessSecret=$ATTACHMENTS_SECRET_KEY -Ddw.attachments.bucket=$ATTACHMENTS_BUCKET  -Ddw.profiles.accessKey=$PROFILES_ACCESS_KEY -Ddw.profiles.accessSecret=$PROFILES_ACCESS_SECRET -Ddw.profiles.bucket=$PROFILES_BUCKET -Ddw.profiles.region=$PROFILES_REGION -Ddw.cache.url=$REDIS_URL -Ddw.directory.url=$REDIS_URL -Ddw.apn.pushCertificate="$APN_PUSH_CERTIFICATE" -Ddw.apn.pushKey="$APN_PUSH_KEY" -Ddw.apn.sandbox=$APN_SANDBOX -Ddw.gcm.apiKey=$GCM_API_KEY -Ddw.gcm.senderId=$GCM_SENDER_ID -Ddw.database.driverClass=org.postgresql.Driver -Ddw.database.user=`echo $DATABASE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $1'}` -Ddw.database.password=`echo $DATABASE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $2'} | awk -F'@' {'print $1'}` -Ddw.database.url=jdbc:postgresql://`echo $DATABASE_URL | awk -F'@' {'print $2'}` -Ddw.messageStore.driverClass=org.postgresql.Driver -Ddw.messageStore.user=`echo $MESSAGESTORE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $1'}` -Ddw.messageStore.password=`echo $MESSAGESTORE_URL | awk -F'://' {'print $2'} | awk -F':' {'print $2'} | awk -F'@' {'print $1'}` -Ddw.messageStore.url=jdbc:postgresql://`echo $MESSAGESTORE_URL | awk -F'@' {'print $2'}` -Ddw.turn.secret=$TURN_SECRET -Ddw.turn.uris[0]=$TURN_URIS_0 -jar target/TextSecureServer-1.66.jar messagedb migrate config/$STAGE.yml