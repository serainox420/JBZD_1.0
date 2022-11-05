.class Lcom/adcolony/sdk/bh$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/bk;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Ljava/util/Map;

.field final synthetic i:Lcom/adcolony/sdk/bh;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bh;Ljava/lang/String;Lcom/adcolony/sdk/bk;ZILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$3;->b:Lcom/adcolony/sdk/bk;

    iput-boolean p4, p0, Lcom/adcolony/sdk/bh$3;->c:Z

    iput p5, p0, Lcom/adcolony/sdk/bh$3;->d:I

    iput-object p6, p0, Lcom/adcolony/sdk/bh$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/adcolony/sdk/bh$3;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/adcolony/sdk/bh$3;->g:Ljava/util/Map;

    iput-object p9, p0, Lcom/adcolony/sdk/bh$3;->h:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 19

    .prologue
    .line 258
    const/4 v9, 0x0

    .line 259
    const-string v8, "A fatal error occurred when calling Endpoint"

    .line 260
    sget-object v7, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    .line 261
    const-string v6, ""

    .line 262
    const/4 v5, 0x0

    .line 264
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bm;->z()I

    move-result v10

    .line 266
    const-string v1, ""

    .line 267
    const-string v2, ""

    .line 268
    const/4 v4, 0x0

    .line 269
    const-string v1, ""

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callEndpointWithApiKey: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", timeout: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    invoke-static {v3, v1, v11}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL null network call."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->b:Lcom/adcolony/sdk/bk;

    sget-object v2, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 436
    :goto_1
    return-void

    .line 271
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adcolony/sdk/bh$3;->c:Z

    if-eqz v1, :cond_2

    .line 281
    new-instance v1, Ljava/net/CookieManager;

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    .line 282
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 285
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/adcolony/sdk/bh$3;->d:I

    if-nez v1, :cond_6

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET was called"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    const-string v1, "GET"

    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adcolony/sdk/bh$3;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    invoke-static {v1, v3, v11, v2}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 342
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "urlConnection initialized"

    const/4 v11, 0x1

    invoke-static {v1, v3, v11}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 343
    const/4 v3, 0x0

    .line 345
    :try_start_0
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adcolony/sdk/bh$3;->e:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/adcolony/sdk/bz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "https"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 350
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 354
    :goto_3
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 355
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 356
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 357
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v3, "Content-Encoding"

    const-string v10, "gzip"

    invoke-virtual {v1, v3, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 361
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adcolony/sdk/bh$3;->d:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_e

    .line 363
    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    .line 379
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v3

    .line 382
    const/16 v4, 0x190

    if-lt v2, v4, :cond_f

    .line 383
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 387
    :goto_5
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 389
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    :goto_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 392
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_6

    .line 398
    :catch_0
    move-exception v4

    .line 399
    :goto_7
    sget-object v4, Lcom/adcolony/sdk/bn$a;->d:Lcom/adcolony/sdk/bn$a;

    move-object v5, v8

    move v6, v9

    move/from16 v17, v2

    move-object v2, v3

    move/from16 v3, v17

    .line 415
    :goto_8
    if-eqz v1, :cond_5

    .line 416
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 420
    :cond_5
    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne v4, v1, :cond_11

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adcolony/sdk/bh$3;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adcolony/sdk/bh$3;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adcolony/sdk/bh$3;->h:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adcolony/sdk/bh$3;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adcolony/sdk/bh$3;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual/range {v1 .. v8}, Lcom/adcolony/sdk/bh;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V

    goto/16 :goto_1

    .line 292
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/adcolony/sdk/bh$3;->d:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST was called"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    const-string v11, "POST"

    .line 295
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 297
    const/4 v1, 0x0

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adcolony/sdk/bh$3;->f:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adcolony/sdk/bh$3;->f:Ljava/lang/String;

    const-string v13, "config"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 300
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bm;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adcolony/sdk/bh$3;->f:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adcolony/sdk/bh$3;->f:Ljava/lang/String;

    const-string v13, "config"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v1, :cond_8

    .line 303
    const-string v3, "config_version"

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_8
    const-string v1, "device_id"

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->ar()Lcom/adcolony/sdk/bo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->g:Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->g:Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 311
    :cond_9
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 315
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    const/4 v1, 0x1

    .line 317
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v2, v1

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    if-eqz v2, :cond_b

    .line 319
    const/4 v3, 0x0

    .line 324
    :goto_b
    :try_start_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-static {v2, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v2, "="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_c
    move v2, v3

    .line 330
    goto :goto_a

    .line 321
    :cond_b
    const-string v3, "&"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_b

    .line 327
    :catch_1
    move-exception v1

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Caught Exception->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15, v1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    .line 332
    :cond_c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    :try_start_5
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    .line 339
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adcolony/sdk/bh$3;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adcolony/sdk/bh$3;->a:Ljava/lang/String;

    invoke-static {v11, v2, v3, v12}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    goto/16 :goto_2

    .line 335
    :catch_2
    move-exception v1

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Caught Exception->"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v4

    goto :goto_d

    .line 352
    :cond_d
    :try_start_6
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 364
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adcolony/sdk/bh$3;->d:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_4

    .line 365
    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 366
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 368
    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 372
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 373
    invoke-virtual {v3, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 374
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 375
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 376
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_4

    .line 398
    :catch_3
    move-exception v2

    move v2, v5

    move-object v3, v6

    goto/16 :goto_7

    .line 385
    :cond_f
    :try_start_8
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    goto/16 :goto_5

    .line 400
    :catch_4
    move-exception v4

    move v5, v2

    move-object v6, v3

    move-object v3, v1

    move-object v1, v4

    .line 401
    :goto_e
    sget-object v2, Lcom/adcolony/sdk/bn$a;->s:Lcom/adcolony/sdk/bn$a;

    .line 402
    const/4 v4, 0x1

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A SSLHandshake error occured when calling enpoint->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v3

    move v3, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v2

    move-object v2, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 413
    goto/16 :goto_8

    .line 394
    :cond_10
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 396
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v6

    move v3, v2

    move-object v4, v7

    move-object v5, v8

    move-object v2, v6

    move v6, v9

    .line 413
    goto/16 :goto_8

    .line 404
    :catch_5
    move-exception v1

    .line 405
    :goto_f
    sget-object v2, Lcom/adcolony/sdk/bn$a;->s:Lcom/adcolony/sdk/bn$a;

    .line 406
    const/4 v4, 0x1

    .line 407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A SSLPeerUnverified error occurred while calling endpoint->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 408
    invoke-virtual {v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v3

    move v3, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v2

    move-object v2, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 413
    goto/16 :goto_8

    .line 409
    :catch_6
    move-exception v1

    .line 410
    :goto_10
    sget-object v2, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    .line 411
    const/4 v4, 0x1

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "An exception occurred while calling enpoint ->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v3

    move v3, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v2

    move-object v2, v6

    move v6, v4

    move-object/from16 v4, v18

    goto/16 :goto_8

    .line 423
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred when calling endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    if-eqz v6, :cond_12

    .line 426
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 427
    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 434
    :goto_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adcolony/sdk/bh$3;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v1, v4}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    goto/16 :goto_1

    .line 431
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adcolony/sdk/bh$3;->i:Lcom/adcolony/sdk/bh;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 409
    :catch_7
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_10

    :catch_8
    move-exception v3

    move v5, v2

    move-object/from16 v17, v1

    move-object v1, v3

    move-object/from16 v3, v17

    goto :goto_10

    :catch_9
    move-exception v4

    move v5, v2

    move-object v6, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_10

    .line 404
    :catch_a
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_f

    :catch_b
    move-exception v3

    move v5, v2

    move-object/from16 v17, v1

    move-object v1, v3

    move-object/from16 v3, v17

    goto/16 :goto_f

    :catch_c
    move-exception v4

    move v5, v2

    move-object v6, v3

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_f

    .line 400
    :catch_d
    move-exception v1

    goto/16 :goto_e

    :catch_e
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_e

    :catch_f
    move-exception v3

    move v5, v2

    move-object/from16 v17, v1

    move-object v1, v3

    move-object/from16 v3, v17

    goto/16 :goto_e

    .line 398
    :catch_10
    move-exception v1

    move-object v1, v3

    move v2, v5

    move-object v3, v6

    goto/16 :goto_7

    :catch_11
    move-exception v3

    move-object v3, v6

    goto/16 :goto_7
.end method
