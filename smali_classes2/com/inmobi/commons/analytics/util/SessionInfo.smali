.class public Lcom/inmobi/commons/analytics/util/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:Ljava/lang/String;

.field private static d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 187
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    .line 199
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const-string v0, "inmobiAppAnalyticsAppId"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    const-string v2, "APP_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Exception getting app id"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method public static declared-synchronized getFirstTime()I
    .locals 2

    .prologue
    .line 53
    const-class v0, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 125
    const-class v2, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    monitor-exit v2

    return-object v0

    .line 128
    :cond_0
    :try_start_1
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    const-string v3, "SESSION_ID"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_2
    const-string v3, "[InMobi]-4.5.5"

    const-string v4, "Exception getting session id"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 137
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getSessionTime(Landroid/content/Context;)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 142
    const-class v4, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v4

    :try_start_0
    sget-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 143
    sget-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    monitor-exit v4

    return-wide v0

    .line 145
    :cond_0
    :try_start_1
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    const-string v1, "SESSION_TIME"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 148
    sput-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_2
    const-string v1, "[InMobi]-4.5.5"

    const-string v5, "Exception getting session time"

    invoke-static {v1, v5, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v0, v2

    .line 154
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static declared-synchronized isUpdatedFromOldSDK(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 35
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    const-string v2, "UPDATED_FROM_OLD_SDK"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeSessionId(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 159
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    .line 160
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    .line 161
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    const-string v2, "SESSION_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v2, "SESSION_TIME"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    monitor-exit v1

    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    :try_start_1
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Exception removing session id"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetFirstTime()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static storeAppId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    sput-object p1, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    .line 175
    const-string v0, "inmobiAppAnalyticsAppId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    const-string v1, "APP_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Exception storing app id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized storeFirstTime(Landroid/content/Context;)V
    .locals 12

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 63
    const-class v4, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v4

    .line 65
    :try_start_0
    const-string v1, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 68
    const-string v2, "SESSION_TIMEM"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 71
    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    .line 72
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 74
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 75
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 76
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 77
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 80
    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :cond_0
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 84
    or-int/lit8 v0, v0, 0x2

    .line 86
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-eq v1, v6, :cond_2

    .line 87
    or-int/lit8 v0, v0, 0x4

    :cond_2
    move-wide v10, v2

    move v2, v0

    move-wide v0, v10

    .line 94
    :goto_0
    const-string v3, "SESSION_TIMEM"

    invoke-interface {v5, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    sput v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_1
    monitor-exit v4

    return-void

    .line 90
    :cond_3
    :try_start_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 91
    const/16 v2, 0xf

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Exception storing session data first time"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static declared-synchronized storeSessionId(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 105
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    .line 107
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    const-string v2, "SESSION_ID"

    sget-object v3, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v2, "APP_SESSION_ID"

    sget-object v3, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v2, "SESSION_TIME"

    sget-wide v4, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit v1

    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_1
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Exception putting session id"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updatedFromOldSDK(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 41
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    const-string v2, "UPDATED_FROM_OLD_SDK"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
