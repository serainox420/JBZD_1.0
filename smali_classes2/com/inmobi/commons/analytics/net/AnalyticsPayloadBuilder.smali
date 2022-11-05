.class public Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;
.super Ljava/lang/Object;
.source "AnalyticsPayloadBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/analytics/db/AnalyticsEvent;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    .line 138
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 141
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/inmobi/commons/thirdparty/Base62;->fromBase10(J)Ljava/lang/String;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_0

    .line 143
    const-string v5, "eid"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_0
    const-string v4, "t"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v4, "ts"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventTimeStamp()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    const-string v4, "ld"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v4, "ls"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v4, "ln"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventAttributeMap()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-eqz v4, :cond_1

    .line 151
    :try_start_1
    const-string v4, "am"

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventAttributeMap()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :cond_1
    :goto_1
    :try_start_2
    const-string v4, "tt"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventTimeTaken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventAttemptCount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 159
    const-string v4, "ac"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    :cond_2
    const-string v4, "at"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventAttemptTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v4, "en"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventCustomName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v4, "ae"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    const-string v4, "k"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v4, "v"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_3
    const-string v4, "pi"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 170
    const-string v4, "in"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemCount()I

    move-result v4

    .line 172
    if-lez v4, :cond_4

    .line 173
    const-string v5, "n"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    :cond_4
    const-string v4, "id"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v4, "ip"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemPrice()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 176
    const-string v4, "c"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v4, "pi"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v4, "ti"

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemType()I

    move-result v4

    .line 180
    sget-object v5, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v5}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 181
    const-string v5, "it"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionStatus()I

    move-result v0

    .line 184
    sget-object v4, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v4

    if-eq v4, v0, :cond_6

    .line 185
    const-string v4, "tp"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    :cond_6
    :goto_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v4

    .line 153
    :try_start_3
    const-string v4, "[InMobi]-[Analytics]-4.5.5"

    const-string v5, "Events attribute map is incorrect. Not sending custom event map."

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    const-string v4, "[InMobi]-[Analytics]-4.5.5"

    const-string v5, "Creation of events json object failed"

    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 195
    :cond_7
    return-object v1
.end method

.method private a(Ljava/lang/String;JLandroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_0
    const-string v0, "ft"

    invoke-static {}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getFirstTime()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v0, "a"

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "an"

    invoke-static {p4}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v0, "av"

    invoke-static {p4}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "p"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "pv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v0, "ca"

    invoke-static {p4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getConnectivityType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v0, "ma"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "mo"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "ss"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v0, "sts"

    invoke-virtual {v1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string v0, "sv"

    const-string v2, "4.5.5"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-static {p4}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getCountryISO(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "co"

    invoke-static {p4}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getCountryISO(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :cond_0
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v2, "[InMobi]-[Analytics]-4.5.5"

    const-string v3, "Creation of session object failed"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string v2, "[InMobi]-[Analytics]-4.5.5"

    const-string v3, "null passed as context"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    :try_start_0
    const-string v1, "session"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    :try_start_1
    const-string v1, "events"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_1
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Session addition to payload failed"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    .line 103
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Events addition to payload failed"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getPayloadList(Ljava/util/List;Landroid/content/Context;)Lcom/inmobi/commons/analytics/net/AnalyticsPayload;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/analytics/db/AnalyticsEvent;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/inmobi/commons/analytics/net/AnalyticsPayload;"
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "PayloadBuilder->getPayloadList:"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 71
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    .line 73
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventSessionId()Ljava/lang/String;

    move-result-object v6

    move v3, v1

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventTableId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :cond_0
    invoke-direct {p0, v5}, Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventSessionTimeStamp()J

    move-result-wide v8

    invoke-direct {p0, v6, v8, v9, p2}, Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;->a(Ljava/lang/String;JLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v1, v3

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;

    const/4 v3, 0x0

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v1, v3, v0}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 85
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->setCompletePayload(Ljava/lang/String;)V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->setPayloadSize(I)V

    .line 90
    :cond_2
    return-object v1
.end method
