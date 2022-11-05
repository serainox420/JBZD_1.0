.class Lcom/inmobi/monetization/internal/carb/CARB$1;
.super Ljava/lang/Object;
.source "CARB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/carb/CARB;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/inmobi/monetization/internal/carb/CARB;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/carb/CARB;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0xc8

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 229
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 391
    :goto_0
    return v0

    .line 235
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/monetization/internal/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/carb/CarbConfigParams;->getCarbEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 237
    const-string v6, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/monetization/internal/carb/CarbConfigParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/monetization/internal/carb/CarbConfigParams;->getTimeoutInterval()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 239
    long-to-int v8, v6

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 240
    long-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 241
    const-string v6, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 243
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 244
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 245
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 246
    const-string v6, "content-type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v6, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 252
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 260
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    if-eqz v3, :cond_1

    .line 266
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 275
    :cond_1
    :goto_1
    :try_start_5
    const-string v3, "[InMobi]-[CARB]-4.5.5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get CARB list status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 278
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CARB;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 279
    iget-object v6, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v6}, Lcom/inmobi/monetization/internal/carb/CARB;->e(Lcom/inmobi/monetization/internal/carb/CARB;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 287
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 382
    :catch_0
    move-exception v0

    .line 384
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v2, "Malformed URL"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 391
    goto/16 :goto_0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    :try_start_6
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :catch_2
    move-exception v0

    goto :goto_3

    .line 267
    :catch_3
    move-exception v6

    .line 268
    const-string v7, "[InMobi]-[Monetization]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 387
    :catch_4
    move-exception v0

    .line 388
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v2, "Invalid JSON response"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 264
    :catchall_0
    move-exception v0

    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_2

    .line 266
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    .line 270
    :cond_2
    :goto_5
    :try_start_8
    throw v0

    .line 267
    :catch_5
    move-exception v3

    .line 268
    const-string v4, "[InMobi]-[Monetization]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception closing resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 289
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    const-string v3, "[InMobi]-[CARB]-4.5.5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    .line 295
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    .line 296
    iget-object v3, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/monetization/internal/carb/CARB;->c(Lcom/inmobi/monetization/internal/carb/CARB;)[B

    move-result-object v3

    iget-object v6, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v6}, Lcom/inmobi/monetization/internal/carb/CARB;->d(Lcom/inmobi/monetization/internal/carb/CARB;)[B

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/inmobi/commons/internal/EncryptionUtils;->DeAe([B[B[B)[B

    move-result-object v3

    .line 298
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    move-object v4, v0

    .line 308
    :goto_6
    if-eqz v4, :cond_4

    .line 318
    :try_start_a
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get list after decryption: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 321
    const-string v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 322
    if-eqz v3, :cond_9

    .line 324
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 325
    const-string v3, "req_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    const-string v3, "p_apps"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 332
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->b(Lcom/inmobi/monetization/internal/carb/CARB;)V

    move v0, v1

    .line 336
    goto/16 :goto_0

    .line 300
    :catch_6
    move-exception v0

    .line 302
    const-string v3, "[InMobi]-[CARB]-4.5.5"

    const-string v6, "Exception in carb "

    invoke-static {v3, v6, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 314
    :cond_4
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v2, "Unable to decrypt response or response not encrypted"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->b(Lcom/inmobi/monetization/internal/carb/CARB;)V

    move v0, v1

    .line 316
    goto/16 :goto_0

    :cond_5
    move v0, v5

    .line 339
    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 341
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 342
    const-string v5, ""

    .line 343
    const-string v5, ""
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    .line 349
    :try_start_b
    const-string v5, "bid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    const-string v7, "inm_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v3

    .line 356
    if-eqz v3, :cond_6

    :try_start_c
    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 339
    :cond_6
    :goto_8
    add-int/lit8 v3, v0, 0x1

    move v5, v0

    move v0, v3

    goto :goto_7

    .line 351
    :catch_7
    move-exception v3

    .line 353
    const-string v3, "[InMobi]-[CARB]-4.5.5"

    const-string v5, "BID or INM missing"

    invoke-static {v3, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 360
    :cond_7
    new-instance v7, Lcom/inmobi/monetization/internal/carb/CarbInfo;

    invoke-direct {v7}, Lcom/inmobi/monetization/internal/carb/CarbInfo;-><init>()V

    .line 361
    invoke-virtual {v7, v5}, Lcom/inmobi/monetization/internal/carb/CarbInfo;->setBid(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v7, v3}, Lcom/inmobi/monetization/internal/carb/CarbInfo;->setInmId(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v3, v5}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Lcom/inmobi/monetization/internal/carb/CARB;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 367
    iget-object v3, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/monetization/internal/carb/CARB;->g(Lcom/inmobi/monetization/internal/carb/CARB;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 371
    :cond_8
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v3, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/monetization/internal/carb/CARB;->g(Lcom/inmobi/monetization/internal/carb/CARB;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Lcom/inmobi/monetization/internal/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 373
    :cond_9
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->b(Lcom/inmobi/monetization/internal/carb/CARB;)V

    move v0, v2

    .line 374
    goto/16 :goto_0

    .line 378
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    move-result v0

    goto/16 :goto_0

    .line 264
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4
.end method

.method private a()V
    .locals 7

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Lcom/inmobi/monetization/internal/carb/CARB;)V

    .line 166
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {}, Lcom/inmobi/commons/internal/EncryptionUtils;->keag()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Lcom/inmobi/monetization/internal/carb/CARB;[B)[B

    .line 167
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/PkInitilaizer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/configs/PkParams;->getExponent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/monetization/internal/carb/CARB;->c:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/PkInitilaizer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/configs/PkParams;->getModulus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/monetization/internal/carb/CARB;->d:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/PkInitilaizer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/configs/PkParams;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/monetization/internal/carb/CARB;->e:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/carb/CARB;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/carb/CARB;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/carb/CARB;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_0
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v1, "Exception retreiving Carb info due to key problem"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->b(Lcom/inmobi/monetization/internal/carb/CARB;)V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB$1;->b()Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unencrypted postbody :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v2}, Lcom/inmobi/monetization/internal/carb/CARB;->c(Lcom/inmobi/monetization/internal/carb/CARB;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/monetization/internal/carb/CARB;->d(Lcom/inmobi/monetization/internal/carb/CARB;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v4, v4, Lcom/inmobi/monetization/internal/carb/CARB;->a:[B

    iget-object v5, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v5, v5, Lcom/inmobi/monetization/internal/carb/CARB;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    iget-object v6, v6, Lcom/inmobi/monetization/internal/carb/CARB;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Lcom/inmobi/monetization/internal/carb/CARB;Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->b(Lcom/inmobi/monetization/internal/carb/CARB;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/carb/CARB$1;->a(Ljava/lang/String;)I

    move-result v0

    .line 190
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 193
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/monetization/internal/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/carb/CarbConfigParams;->getRetryCount()I

    move-result v0

    .line 195
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/monetization/internal/carb/CarbConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/carb/CarbConfigParams;->getRetryInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 198
    iget v1, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->a:I

    if-gt v1, v0, :cond_5

    .line 200
    :try_start_0
    iget v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->a:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get carb info Failed. Retrying count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->a:I

    .line 207
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_4

    .line 209
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 211
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 212
    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 214
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 217
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->a:I

    .line 218
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CARB;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v1}, Lcom/inmobi/monetization/internal/carb/CARB;->e(Lcom/inmobi/monetization/internal/carb/CARB;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB$1;->b:Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->f(Lcom/inmobi/monetization/internal/carb/CARB;)V

    goto/16 :goto_0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 397
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CARB;->fillCarbInfo()V

    .line 401
    const-string v0, "mk-siteid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pr-SAND-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "4.5.5"

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "20150522"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string v2, "&mk-version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/monetization/internal/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/carb/CarbConfigParams;->getDeviceIdMaskMap()Ljava/util/Map;

    move-result-object v0

    .line 412
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/uid/UID;->getJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v2, "&u-id-map="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v0, "&u-appbid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CARB;->getAppBid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const-string v0, "&u-appver="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CARB;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v0, "&h-user-agent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v0, "&d-localization="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getLocalization()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v0, "&d-nettype="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const/4 v0, 0x0

    .line 445
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    :goto_0
    if-eqz v0, :cond_0

    .line 453
    const-string v2, "&c-ap-bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    iget-wide v2, v0, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 446
    :catch_0
    move-exception v2

    .line 447
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "No wifi permissions set, unable to send wifi data"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB$1;->a()V

    .line 161
    return-void
.end method
