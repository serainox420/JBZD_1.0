.class public Lcom/smartadserver/android/library/b/a;
.super Ljava/lang/Object;
.source "SASAdElementJSONParser.java"


# direct methods
.method public static a(Ljava/lang/String;J)Lcom/smartadserver/android/library/model/SASAdElement;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/smartadserver/android/library/exception/SASAdTimeoutException;,
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 126
    const-string v1, "mediationAds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 128
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "No Smart AdServer Ad or mediation ad in JSON"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 135
    if-eqz v4, :cond_e

    .line 136
    const-string v0, "html"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v0, "scriptUrl"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    const-string v0, "native"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 140
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Ad does not contain one of the mandatory elements: \'html\', \'scriptUrl\' or \'native\'"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    if-eqz v0, :cond_3

    .line 145
    invoke-static {v0, p1, p2}, Lcom/smartadserver/android/library/b/a;->a(Lorg/json/JSONObject;J)Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    .line 151
    :goto_0
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 152
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getBaseUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/smartadserver/android/library/model/SASAdElement;->setBaseUrl(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setHtmlContents(Ljava/lang/String;)V

    .line 156
    :cond_2
    const-string v1, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 158
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v6}, Lcom/smartadserver/android/library/model/SASAdElement;->setScriptUrl(Ljava/lang/String;)V

    .line 162
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 163
    invoke-static {v1, v7}, Lcom/smartadserver/android/library/g/b;->a(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    const/4 v1, 0x0

    aget-object v1, v7, v1

    if-eqz v1, :cond_4

    .line 167
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :goto_1
    if-nez v1, :cond_5

    .line 173
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get base URL for scriptUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL for scriptUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_3
    new-instance v0, Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-direct {v0}, Lcom/smartadserver/android/library/model/SASAdElement;-><init>()V

    goto :goto_0

    .line 169
    :cond_4
    :try_start_1
    invoke-static {v6}, Lcom/smartadserver/android/library/g/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 175
    :cond_5
    if-nez v8, :cond_6

    .line 176
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get HTML contents for scriptUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_6
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setBaseUrl(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v8}, Lcom/smartadserver/android/library/model/SASAdElement;->setHtmlContents(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :cond_7
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getImpressionUrlString()Ljava/lang/String;

    move-result-object v6

    .line 188
    const-string v1, "impUrls"

    const-string v7, ""

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_8
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setImpressionUrlString(Ljava/lang/String;)V

    .line 194
    const-string v1, "countClickUrl"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setClickPixelUrl(Ljava/lang/String;)V

    .line 195
    const-string v1, "openInApp"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setOpenClickInApplication(Z)V

    .line 198
    const-string v1, "closePosition"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setCloseButtonPosition(I)V

    .line 202
    const-string v1, "duration"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 203
    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_9

    .line 204
    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setAdDuration(I)V

    .line 208
    :cond_9
    const-string v1, "insertionId"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setInsertionId(I)V

    .line 211
    const-string v1, "isOffline"

    const-string v6, "0"

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setPrefetchable(Z)V

    .line 214
    const-string v1, "isOffline"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setNeedsDataConnection(Z)V

    .line 217
    const-wide/16 v6, 0x3e8

    const-string v1, "expirationDate"

    invoke-virtual {v4, v1, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    mul-long/2addr v6, v8

    .line 218
    cmp-long v1, v6, v10

    if-lez v1, :cond_a

    .line 219
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 221
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setExpirationDate(Ljava/util/Date;)V

    .line 225
    :cond_a
    const-string v1, "clickUrl"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 227
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setClickUrl(Ljava/lang/String;)V

    .line 232
    :cond_b
    :try_start_2
    const-string v1, "portraitWidth"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setPortraitWidth(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 235
    :goto_3
    :try_start_3
    const-string v1, "portraitHeight"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setPortraitHeight(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 238
    :goto_4
    :try_start_4
    const-string v1, "landscapeWidth"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setLandscapeWidth(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 241
    :goto_5
    :try_start_5
    const-string v1, "landscapeHeight"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setLandscapeHeight(I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 246
    :goto_6
    const-string v1, "transferTouchEvents"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setTransferTouchEvents(Z)V

    .line 249
    const-string v1, "closeOnClick"

    const-string v2, "1"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setCloseOnClick(Z)V

    .line 252
    const-string v1, "closeAppearanceDelay"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 253
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setCloseButtonAppearanceDelay(I)V

    .line 255
    const-string v1, "closeAppearanceCountdown"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setDisplayCloseAppearanceCountDown(Z)V

    .line 259
    const-string v1, "extraParameters"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_c

    .line 263
    invoke-static {v1}, Lcom/smartadserver/android/library/b/a;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setExtraParameters(Ljava/util/HashMap;)V

    .line 266
    :cond_c
    invoke-static {v4}, Lcom/smartadserver/android/library/b/a;->b(Lorg/json/JSONObject;)[Lcom/smartadserver/android/library/model/d;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_d

    .line 268
    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setViewabilityPixels([Lcom/smartadserver/android/library/model/d;)V

    .line 272
    :cond_d
    const-string v1, "swipeToClose"

    const-string v2, "0"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setSwipeToClose(Z)V

    .line 276
    :cond_e
    if-eqz v5, :cond_10

    .line 277
    if-nez v0, :cond_f

    .line 278
    new-instance v0, Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-direct {v0}, Lcom/smartadserver/android/library/model/SASAdElement;-><init>()V

    .line 280
    :cond_f
    invoke-static {v5}, Lcom/smartadserver/android/library/b/a;->a(Lorg/json/JSONArray;)[Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setCandidateMediationAds([Lcom/smartadserver/android/library/model/a;)V

    .line 283
    :cond_10
    return-object v0

    :cond_11
    move v1, v3

    .line 211
    goto/16 :goto_2

    .line 242
    :catch_1
    move-exception v1

    goto :goto_6

    .line 239
    :catch_2
    move-exception v1

    goto/16 :goto_5

    .line 236
    :catch_3
    move-exception v1

    goto/16 :goto_4

    .line 233
    :catch_4
    move-exception v1

    goto/16 :goto_3
.end method

.method public static a(Lorg/json/JSONObject;J)Lcom/smartadserver/android/library/model/SASAdElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/smartadserver/android/library/exception/SASAdTimeoutException;,
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 379
    if-nez v1, :cond_1

    .line 381
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;-><init>(Lorg/json/JSONObject;J)V

    .line 386
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 387
    new-instance v0, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for \'native\' element in Ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 383
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 390
    :cond_2
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 325
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 326
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 331
    if-nez v1, :cond_0

    .line 333
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_0
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    :cond_1
    return-object v2
.end method

.method private static a(Lorg/json/JSONArray;)[Lcom/smartadserver/android/library/model/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 291
    new-array v2, v0, [Lcom/smartadserver/android/library/model/a;

    .line 293
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 294
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 297
    new-instance v3, Lcom/smartadserver/android/library/model/a;

    invoke-direct {v3}, Lcom/smartadserver/android/library/model/a;-><init>()V

    aput-object v3, v2, v1

    .line 298
    aget-object v3, v2, v1

    const-string v4, "sdkId"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartadserver/android/library/model/a;->a(I)V

    .line 299
    aget-object v3, v2, v1

    const-string v4, "impUrl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartadserver/android/library/model/a;->a(Ljava/lang/String;)V

    .line 300
    aget-object v3, v2, v1

    const-string v4, "countClickUrl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartadserver/android/library/model/a;->b(Ljava/lang/String;)V

    .line 302
    invoke-static {v0}, Lcom/smartadserver/android/library/b/a;->b(Lorg/json/JSONObject;)[Lcom/smartadserver/android/library/model/d;

    move-result-object v3

    .line 303
    if-eqz v3, :cond_0

    .line 304
    aget-object v4, v2, v1

    invoke-virtual {v4, v3}, Lcom/smartadserver/android/library/model/a;->a([Lcom/smartadserver/android/library/model/d;)V

    .line 307
    :cond_0
    const-string v3, "placementConfig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 308
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 310
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 311
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 315
    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/model/a;->a(Ljava/util/HashMap;)V

    .line 293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 318
    :cond_2
    return-object v2
.end method

.method private static b(Lorg/json/JSONObject;)[Lcom/smartadserver/android/library/model/d;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 347
    const-string v0, "viewCount"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 348
    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 350
    if-lez v5, :cond_1

    .line 352
    new-array v1, v5, [Lcom/smartadserver/android/library/model/d;

    move v2, v3

    .line 353
    :goto_0
    if-ge v2, v5, :cond_0

    .line 354
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 355
    const-string v6, "trackUrl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    const-string v7, "duration"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 357
    mul-int/lit16 v7, v7, 0x3e8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 358
    const-string v8, "area"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 359
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 360
    new-instance v8, Lcom/smartadserver/android/library/model/d;

    int-to-double v10, v0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-direct {v8, v6, v10, v11, v7}, Lcom/smartadserver/android/library/model/d;-><init>(Ljava/lang/String;DI)V

    aput-object v8, v1, v2

    .line 353
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 366
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
