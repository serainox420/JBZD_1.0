.class public Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;
.super Ljava/lang/Object;
.source "AdTrackerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDownloadGoalAdded()Z
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Application Context NULL cannot checkStatusUpload"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "insertStatus"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkDownloadGoalUploaded()Z
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Application Context NULL cannot checkStatusUpload"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "uploadStatus"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getReferrerFromLogs()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logcat"

    aput-object v2, v0, v1

    const-string v1, "-d"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ActivityManager:I"

    aput-object v2, v0, v1

    .line 150
    const/4 v1, 0x0

    .line 152
    :try_start_0
    const-string v2, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Getting referrer from logs"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getLogcatPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 157
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 158
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 162
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received referrer from logs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :goto_1
    return-object v0

    .line 169
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 170
    :goto_2
    const-string v2, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Getting referrer from logs failed"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 169
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static isPermissionGranted(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 53
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Cant check permissions"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V
    .locals 5

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->isMetricSample()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v1, "g"

    iget-object v2, p1, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v1, "n"

    iget v2, p1, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v1, "t"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    invoke-direct {v2, v3, v0}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string v1, "g"

    iget-object v2, p1, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "n"

    iget v2, p1, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v1, "e"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    if-eqz p6, :cond_2

    .line 129
    const-string v1, "m"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    invoke-direct {v2, v3, v0}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Error reporting metric"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    const-string v1, "g"

    iget-object v2, p1, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v1, "n"

    iget v2, p1, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_DUMPED:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    invoke-direct {v2, v3, v0}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static resetStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "uploadStatus"

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sendBroadcastMessage(I)Z
    .locals 3

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v1, "action.inmobi.ADTRACKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "iatError"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Cant send test broadcast"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setInternalReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 178
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 179
    :cond_0
    :try_start_0
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Cannot set Market Referrer..Referrer NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "t2"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getLongPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "t2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 189
    :cond_2
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving referrer from broadcast receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "referrer"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 194
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Install Receiver already set. Download Goal queued"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Cannot set referrer"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "referrer"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "rlc"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "mk-siteid"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    :cond_4
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Initialization incomplete. Please call InMobi initialize with a valid app Id"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "waitForReferrer"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 215
    invoke-static {p0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 216
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->init()V

    .line 217
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getGoalList()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v1

    const-string v2, "download"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->addGoal(Ljava/lang/String;IJIZ)Z

    .line 219
    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->reportToServer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_6
    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->onReceiveReferrer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setReferrerFromLogs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 231
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 232
    :cond_0
    :try_start_0
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Cannot set Market Referrer from logs..Referrer NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 236
    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "t2"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->getLongPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "t2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 242
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "referrer"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "rlc"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Cannot set referrer from logs"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updateStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "uploadStatus"

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
