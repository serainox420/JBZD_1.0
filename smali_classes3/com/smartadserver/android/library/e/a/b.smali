.class public Lcom/smartadserver/android/library/e/a/b;
.super Lcom/smartadserver/android/library/e/a/a;
.source "SASAdCallHelper.java"


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/e/a/a;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/e/a/b;->f:Z

    .line 40
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Landroid/content/Context;Z)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartadserver/android/library/e/a/b;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/e/a/b;->f:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p6}, Lcom/smartadserver/android/library/e/a/b;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing Google play services framework : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/client/methods/HttpPost;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 133
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    const-string v1, "appname"

    iget-object v4, p0, Lcom/smartadserver/android/library/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v1, "bundleid"

    iget-object v4, p0, Lcom/smartadserver/android/library/e/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "uid"

    iget-object v4, p0, Lcom/smartadserver/android/library/e/a/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "platform"

    const-string v4, "Android"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "sdkname"

    const-string v4, "SDKAndroid"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "version"

    const-string v4, "6.6.2"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v1, "rev"

    invoke-static {}, Lcom/smartadserver/android/library/g/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 150
    invoke-static {}, Lcom/smartadserver/android/library/c/j;->a()[I

    move-result-object v5

    move v1, v0

    .line 151
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 152
    aget v6, v5, v1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const-string v1, "mediationsdks"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v1, "connexion"

    invoke-virtual {p0}, Lcom/smartadserver/android/library/e/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "tracking"

    iget-boolean v4, p0, Lcom/smartadserver/android/library/e/a/b;->f:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 164
    if-eqz p2, :cond_2

    .line 165
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 187
    :goto_2
    return-object v2

    .line 172
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON message posted to the server : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "jsonMessage"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 179
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 183
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    .line 75
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 87
    :goto_0
    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ac?siteid=%s&pgid=%s&fmtid=%s&visit=%s&tmstp=%s&tgt=%s&uid=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 93
    :goto_1
    if-nez p5, :cond_0

    .line 94
    const-string p5, ""

    .line 97
    :cond_0
    invoke-static {p6}, Lcom/smartadserver/android/library/e/a/b;->a(Z)Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/smartadserver/android/library/e/a/b;->e:J

    .line 102
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p3}, Lcom/smartadserver/android/library/g/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x3

    if-eqz p6, :cond_2

    const-string v0, "M"

    :goto_2
    aput-object v0, v5, v2

    const/4 v0, 0x4

    aput-object v4, v5, v0

    const/4 v0, 0x5

    invoke-static {p5}, Lcom/smartadserver/android/library/g/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/b;->c:Ljava/lang/String;

    aput-object v2, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 80
    if-eqz p3, :cond_3

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    move v0, v3

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ac?siteid=%s&pgname=%s&fmtid=%s&visit=%s&tmstp=%s&tgt=%s&uid=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 102
    :cond_2
    const-string v0, "S"

    goto :goto_2

    :cond_3
    move v0, v3

    goto/16 :goto_0
.end method
