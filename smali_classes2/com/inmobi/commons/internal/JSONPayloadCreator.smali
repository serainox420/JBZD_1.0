.class public Lcom/inmobi/commons/internal/JSONPayloadCreator;
.super Ljava/lang/Object;
.source "JSONPayloadCreator.java"

# interfaces
.implements Lcom/inmobi/commons/internal/PayloadCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "ss"

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 133
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    const-string v1, "t"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v1, "ts"

    invoke-virtual {p1}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 136
    const-string v1, "a"

    invoke-virtual {p1}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->getActivity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    :try_start_0
    const-string v1, "id"

    iget-object v2, p1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    iget v1, p1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->signalStrength:I

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "ss"

    iget v2, p1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->signalStrength:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 145
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 146
    const-string v0, "t"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {p2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isConnectedWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "c-ap"

    iget-object v3, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedWifiAp:Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    invoke-direct {p0, v3}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_0
    invoke-virtual {p2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isCellEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "c-sc"

    iget-object v3, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    invoke-direct {p0, v3}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isVisibleCellTowerEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 156
    iget-object v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleCellTowerInfo:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleCellTowerInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 158
    invoke-direct {p0, v0}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Landroid/telephony/NeighboringCellInfo;)Lorg/json/JSONObject;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 191
    :goto_1
    return-object v0

    .line 163
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 164
    const-string v0, "v-sc"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_4
    invoke-virtual {p2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isVisibleWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 172
    iget-object v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleWifiAp:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 173
    iget-object v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleWifiAp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    .line 174
    invoke-direct {p0, v0}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_5

    .line 176
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 180
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 181
    const-string v0, "v-ap"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-le v0, v5, :cond_8

    .line 185
    const-string v0, "ts"

    iget-wide v4, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->utc:J

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 186
    goto :goto_1

    :cond_8
    move-object v0, v2

    .line 188
    goto :goto_1
.end method

.method private a(Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 198
    :try_start_0
    const-string v1, "bssid"

    iget-wide v2, p1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    const-string v1, "essid"

    iget-object v2, p1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toPayloadString(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    .line 30
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getDeviceIdMaskMap()Ljava/util/Map;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getEncodedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 34
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 35
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v4

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, v0, v4}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;

    .line 47
    if-eqz v0, :cond_2

    .line 48
    invoke-direct {p0, v0}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 60
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 61
    const-string v0, "payload"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_4
    invoke-static {p3}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCellNetworkInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;

    move-result-object v0

    .line 66
    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isOperatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 67
    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getCellOpsFlag()I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    if-ne v3, v7, :cond_5

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    if-eq v3, v7, :cond_6

    .line 70
    :cond_5
    const-string v3, "s-ho"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_6
    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getCellOpsFlag()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    if-ne v3, v7, :cond_7

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    if-eq v3, v7, :cond_8

    .line 75
    :cond_7
    const-string v3, "s-co"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    const-string v3, "tz"

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v3, "ts"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pr-SAND-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "4.5.5"

    invoke-static {v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "20150522"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v3, "mk-version"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->currentLocationStr()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_9

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 91
    const-string v3, "u-latlong-accu"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->isValidGeoInfo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->getGeoTS()J

    move-result-wide v4

    .line 94
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_9

    .line 95
    const-string v0, "u-ll-ts"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLtvpSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLtvpSessionId()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 101
    const-string v0, "u-s-id"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLtvpSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_a
    invoke-static {}, Lcom/inmobi/commons/data/DemogInfo;->isLocationInquiryAllowed()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 112
    :goto_2
    const-string v1, "loc-allowed"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v0, "sdk-collected"

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->isSDKSetLocation()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    .line 109
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Unable to create payload for sending ThinICE params"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    goto :goto_3
.end method
