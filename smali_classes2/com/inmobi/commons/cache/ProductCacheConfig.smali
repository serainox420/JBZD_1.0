.class public Lcom/inmobi/commons/cache/ProductCacheConfig;
.super Lcom/inmobi/commons/cache/ProductConfig;
.source "ProductCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/cache/ProductCacheConfig$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_EXPIRY:I = 0x69780

.field public static final DEFAULT_INTERVAL:I = 0x3c

.field public static final DEFAULT_MAX_RETRY:I = 0x3

.field private static a:Ljava/util/Timer;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/inmobi/commons/cache/CacheController$Validator;

.field private e:Lcom/inmobi/commons/cache/RetryMechanism;

.field private f:Lcom/inmobi/commons/cache/CacheController$Committer;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/ProductCacheConfig;->a:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductConfig;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 68
    new-instance v0, Lcom/inmobi/commons/cache/RetryMechanism;

    const/4 v1, 0x3

    const v2, 0xea60

    sget-object v3, Lcom/inmobi/commons/cache/ProductCacheConfig;->a:Ljava/util/Timer;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/cache/RetryMechanism;-><init>(IILjava/util/Timer;)V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->e:Lcom/inmobi/commons/cache/RetryMechanism;

    .line 86
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->loadFromJSON(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "JSON retrieved is invalid."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/inmobi/commons/cache/CacheController$Committer;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/inmobi/commons/cache/ProductCacheConfig;-><init>(Lorg/json/JSONObject;)V

    .line 75
    iput-object p2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->f:Lcom/inmobi/commons/cache/CacheController$Committer;

    .line 76
    return-void
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->c()Lcom/inmobi/commons/cache/ProductCacheConfig$a;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$a;)Ljava/lang/String;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_2

    .line 180
    iget-object v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/inmobi/commons/cache/CacheController$Validator;->validate(Ljava/util/Map;)Z

    move-result v2

    .line 182
    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    .line 192
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 193
    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->b(Lcom/inmobi/commons/cache/ProductCacheConfig$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    .line 194
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Product with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accepted data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->f:Lcom/inmobi/commons/cache/CacheController$Committer;

    invoke-interface {v0}, Lcom/inmobi/commons/cache/CacheController$Committer;->onCommit()V

    .line 209
    :goto_1
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid config."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "[InMobi]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error connecting to url, or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not return 200. Purge cache update."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    throw v0

    .line 190
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 200
    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->b(Lcom/inmobi/commons/cache/ProductCacheConfig$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    .line 201
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->f:Lcom/inmobi/commons/cache/CacheController$Committer;

    invoke-interface {v0}, Lcom/inmobi/commons/cache/CacheController$Committer;->onCommit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/commons/cache/ProductCacheConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->a()V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/commons/cache/ProductCacheConfig;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->e:Lcom/inmobi/commons/cache/RetryMechanism;

    new-instance v1, Lcom/inmobi/commons/cache/ProductCacheConfig$1;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/cache/ProductCacheConfig$1;-><init>(Lcom/inmobi/commons/cache/ProductCacheConfig;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/cache/RetryMechanism;->rescheduleTimer(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V

    goto :goto_0
.end method

.method private c()Lcom/inmobi/commons/cache/ProductCacheConfig$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 264
    .line 268
    const-string v1, ""

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    const/4 v2, 0x1

    invoke-static {v0, v6, v2}, Lcom/inmobi/commons/network/RequestBuilderUtils;->fillIdentityMap(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 271
    invoke-static {v0}, Lcom/inmobi/commons/network/RequestBuilderUtils;->fillAppInfoMap(Ljava/util/Map;)V

    .line 273
    const-string v2, "&"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->encodeMapAndconvertToDelimitedString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v3, "[InMobi]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to retreive cache.."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 289
    const-string v2, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-wide v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 292
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 295
    const/16 v3, 0x130

    if-ne v2, v3, :cond_3

    .line 296
    new-instance v1, Lcom/inmobi/commons/cache/ProductCacheConfig$a;

    invoke-direct {v1, p0, v6}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;-><init>(Lcom/inmobi/commons/cache/ProductCacheConfig;Lcom/inmobi/commons/cache/ProductCacheConfig$1;)V

    .line 297
    invoke-static {v1, v6}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$a;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$a;J)J

    move-object v0, v1

    .line 314
    :goto_1
    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 301
    :cond_3
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4

    .line 302
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server did not return 200. "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 306
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 309
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 310
    new-instance v2, Lcom/inmobi/commons/cache/ProductCacheConfig$a;

    invoke-direct {v2, p0, v6}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;-><init>(Lcom/inmobi/commons/cache/ProductCacheConfig;Lcom/inmobi/commons/cache/ProductCacheConfig$1;)V

    .line 311
    invoke-static {v2, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$a;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$a;J)J

    move-object v0, v2

    .line 314
    goto/16 :goto_1
.end method


# virtual methods
.method public getConfig()Lcom/inmobi/commons/cache/ProductConfig;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setRetryNumber(I)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 130
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getTimestamp()I

    move-result v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getExpiry()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    .line 132
    if-gtz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->b()V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData(Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inmobi/commons/cache/CacheController$Validator;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    .line 321
    :cond_0
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getValidator()Lcom/inmobi/commons/cache/CacheController$Validator;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-object v0
.end method

.method public final loadFromJSON(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 103
    const-string v0, "expiry"

    const v1, 0x69780

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setExpiry(I)V

    .line 104
    const-string v0, "maxRetry"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setMaxRetry(I)V

    .line 105
    const-string v0, "retryInterval"

    const/16 v1, 0x3c

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setRetryInterval(I)V

    .line 106
    const-string v0, "lastModified"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    .line 107
    const-string v0, "url"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setUrl(Ljava/lang/String;)V

    .line 108
    const-string v0, "protocol"

    const-string v1, "json"

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setProtocol(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getMaxRetry()I

    move-result v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRetryInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    sget-object v3, Lcom/inmobi/commons/cache/ProductCacheConfig;->a:Ljava/util/Timer;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/cache/RetryMechanism;-><init>(IILjava/util/Timer;)V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->e:Lcom/inmobi/commons/cache/RetryMechanism;

    .line 112
    const-string v0, "timestamp"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 113
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setExpiry(I)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setRetryInterval(I)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setMaxRetry(I)V

    .line 250
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setUrl(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setProtocol(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
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
    .line 55
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public setValidator(Lcom/inmobi/commons/cache/CacheController$Validator;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 64
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{expiry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getExpiry()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxRetry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getMaxRetry()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "retryInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRetryInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v1, "lastModified"

    iget-wide v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 154
    :goto_1
    const-string v2, "[InMobi]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ill formed JSON product("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") toString"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
