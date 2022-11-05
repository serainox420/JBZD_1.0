.class public Lcom/inmobi/analytics/InMobiAnalytics;
.super Ljava/lang/Object;
.source "InMobiAnalytics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inmobi/analytics/InMobiAnalytics;->beginSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public static beginSection(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 90
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->beginSection(ILjava/lang/String;Ljava/util/Map;)V

    .line 92
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setIsEventsUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "Please pass a valid Section Name"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static endSection(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inmobi/analytics/InMobiAnalytics;->endSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public static endSection(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 122
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->endSection(ILjava/lang/String;Ljava/util/Map;)V

    .line 124
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setIsEventsUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "Please pass a valid Section Name"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static endSessionManually()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/analytics/InMobiAnalytics;->endSessionManually(Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method public static endSessionManually(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->endSession(Ljava/util/Map;)V

    .line 64
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setIsEventsUser()V

    goto :goto_0
.end method

.method public static reportCustomGoal(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->reportCustomGoal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Unable to report custom goal due to unexpected exception."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setIsEventsUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Unable to set user attribute unexpected exception."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startSessionManually()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/analytics/InMobiAnalytics;->startSessionManually(Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public static startSessionManually(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setIsEventsUser()V

    goto :goto_0
.end method

.method public static tagEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inmobi/analytics/InMobiAnalytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setIsEventsUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Unable to tag event due to unexpected exception."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static tagTransactionManually(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->tagTransactionManually(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 186
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->setIsEventsUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Unable to tag transaction due to unexpected exception."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
