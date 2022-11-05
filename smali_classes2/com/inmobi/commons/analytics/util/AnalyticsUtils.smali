.class public Lcom/inmobi/commons/analytics/util/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# static fields
.field public static final ANALYTICS_LOGGING_TAG:Ljava/lang/String; = "[InMobi]-[Analytics]-4.5.5"

.field public static final INITIALIZE_NOT_CALLED:Ljava/lang/String; = "Please call InMobi.initialize or startSession before calling any events API"

.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncPingInternal(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 218
    :try_start_0
    const-string v0, "%25"

    const-string v2, "%"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v2, "[InMobi]-[Analytics]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pinging URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/16 v1, 0x4e20

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 223
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 224
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async Ping Connection Response Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    :goto_1
    :try_start_2
    const-string v2, "[InMobi]-[Analytics]-4.5.5"

    const-string v3, "Error doing async Ping. "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    .line 231
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 228
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public static compressPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 245
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    new-instance v2, Landroid/util/Base64OutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 247
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 248
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 249
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 250
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    const-string v2, "[InMobi]-[Analytics]-4.5.5"

    const-string v3, "Exception compress sdk payload."

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static convertItemType(Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;->CONSUMABLE:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;

    if-ne p0, v1, :cond_1

    .line 186
    const-string v0, "1"

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;->DURABLE:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;

    if-ne p0, v1, :cond_2

    .line 188
    const-string v0, "2"

    goto :goto_0

    .line 189
    :cond_2
    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;->PERSONALIZATION:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;

    if-ne p0, v1, :cond_0

    .line 190
    const-string v0, "3"

    goto :goto_0
.end method

.method public static convertLevelStatus(Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->COMPLETED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    if-ne p0, v1, :cond_1

    .line 173
    const-string v0, "1"

    .line 180
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->FAILED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    if-ne p0, v1, :cond_2

    .line 175
    const-string v0, "2"

    goto :goto_0

    .line 176
    :cond_2
    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->CANCELED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    if-ne p0, v1, :cond_0

    .line 177
    const-string v0, "3"

    goto :goto_0
.end method

.method public static convertToJSON(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    .line 130
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getExtraParamsLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 131
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics events - number of key-value pairs in attribute map exceeds "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getExtraParamsLimit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-object v2

    .line 138
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 139
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxparamskey()I

    move-result v5

    if-gt v1, v5, :cond_3

    .line 142
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxstring()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 144
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "Unable to convert map to JSON"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v2

    :goto_2
    move-object v2, v0

    .line 167
    goto :goto_0

    .line 147
    :cond_2
    :try_start_1
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Analytics events - value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,exceeds inmobi\'s limitation of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxstring()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " characters."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Analytics events - key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ,exceeds inmobi\'s limitation of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxparamskey()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " characters."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 98
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Error retrieving application version"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Error retrieving application name"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getCountryISO(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 107
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 124
    :cond_1
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 117
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 119
    goto :goto_0
.end method

.method public static getDeviceDensity(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 211
    return v0
.end method

.method public static getEventUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getEventsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getExtraParamsLimit()I
    .locals 2

    .prologue
    .line 69
    const-class v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getExtraParamsLimit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMaxRetryBeforeDiscard()I
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getMaxRetryBeforeCacheDiscard()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMaxdbcount()J
    .locals 4

    .prologue
    .line 52
    const-class v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getMaxDbEvents()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMaxevents()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    const-class v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getGetParamsLimit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMaxparamskey()I
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getMaxKeyLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMaxstring()I
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getMaxValLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getStartHandle()Z
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTimeinterval()J
    .locals 4

    .prologue
    .line 73
    const-class v1, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getPingInterval()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWebviewUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized setStartHandle(Z)V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setWebviewUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->a:Ljava/lang/String;

    .line 41
    return-void
.end method
