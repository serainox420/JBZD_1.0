.class public final Lcom/inmobi/commons/cache/CacheController;
.super Ljava/lang/Object;
.source "CacheController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/cache/CacheController$Committer;,
        Lcom/inmobi/commons/cache/CacheController$Validator;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/cache/ProductCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/inmobi/commons/cache/ProductCacheConfig;

.field private static c:Z

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/cache/CacheController$Validator;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/cache/CacheController;->c:Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static a()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 95
    sget-object v4, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    monitor-enter v4

    .line 96
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v2, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 102
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :try_start_3
    sget-object v2, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 104
    const/4 v6, 0x0

    invoke-static {v0, v6, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_3
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    :try_start_4
    const-string v1, "[InMobi]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to reinitialize product "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 102
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :cond_1
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 111
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    if-eqz v0, :cond_2

    .line 112
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    move-object v0, v3

    check-cast v0, Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    .line 114
    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/inmobi/commons/cache/CacheController;->b(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 237
    :try_start_0
    const-string v0, "AND"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    .line 239
    invoke-static {v1}, Lcom/inmobi/commons/cache/CacheController;->c(Ljava/util/Map;)V

    .line 240
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 243
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/cache/CacheController;->c(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 246
    goto :goto_1
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->f()V

    return-void
.end method

.method private static c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/32 v2, 0x7fffffff

    .line 253
    const-string v0, "expiry"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    .line 254
    const-string v0, "maxRetry"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    .line 255
    const-string v0, "retryInterval"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    .line 256
    const-string v0, "url"

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    const-string v0, "protocol"

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    return-void
.end method

.method private static d()V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/cache/CacheController$1;

    invoke-direct {v1}, Lcom/inmobi/commons/cache/CacheController$1;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method private static e()V
    .locals 5

    .prologue
    .line 117
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Bootstrapping cache."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->initRoot()V

    .line 120
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 122
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 128
    new-instance v3, Lcom/inmobi/commons/cache/ProductCacheConfig;

    check-cast v1, Lorg/json/JSONObject;

    new-instance v4, Lcom/inmobi/commons/cache/CacheController$2;

    invoke-direct {v4, v0}, Lcom/inmobi/commons/cache/CacheController$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v4}, Lcom/inmobi/commons/cache/ProductCacheConfig;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/cache/CacheController$Committer;)V

    .line 144
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/cache/ProductCacheConfig;

    .line 145
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getValidator()Lcom/inmobi/commons/cache/CacheController$Validator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setValidator(Lcom/inmobi/commons/cache/CacheController$Validator;)V

    .line 147
    invoke-virtual {v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setMap(Ljava/util/Map;)V

    .line 149
    :cond_1
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "[InMobi]-4.5.5"

    const-string v3, "Unable to dump config from persistent memory to products in memory"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :cond_2
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    if-nez v0, :cond_3

    .line 158
    new-instance v0, Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/cache/CacheController$3;

    invoke-direct {v2}, Lcom/inmobi/commons/cache/CacheController$3;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/cache/ProductCacheConfig;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/cache/CacheController$Committer;)V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    .line 166
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/cache/CacheController$4;

    invoke-direct {v2}, Lcom/inmobi/commons/cache/CacheController$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    .line 178
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V

    .line 179
    return-void

    .line 176
    :cond_3
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->loadFromJSON(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private static f()V
    .locals 10

    .prologue
    .line 184
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-virtual {v3}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v3, "AND"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "common"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 191
    :try_start_1
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 204
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 215
    :try_start_3
    instance-of v3, v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 216
    sget-object v3, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/cache/ProductCacheConfig;

    .line 217
    if-eqz v2, :cond_0

    .line 218
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    const-string v7, "timestamp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    check-cast v4, Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v2

    .line 223
    const-string v3, "[InMobi]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while merging data -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :catch_1
    move-exception v2

    .line 193
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Unable to add timestamp to JSON"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {v5}, Lcom/inmobi/commons/cache/LocalCache;->saveRoot(Lorg/json/JSONObject;)V

    .line 228
    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->e()V

    .line 229
    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->a()V

    .line 231
    :goto_2
    return-void

    .line 211
    :catch_2
    move-exception v2

    goto :goto_1

    .line 187
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inmobi/commons/cache/CacheController$Validator;",
            ")",
            "Lcom/inmobi/commons/cache/ProductConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/commons/internal/CommonsException;
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p3, :cond_0

    .line 51
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    if-eqz p2, :cond_1

    .line 56
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    monitor-enter v1

    .line 57
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :cond_1
    sget-boolean v0, Lcom/inmobi/commons/cache/CacheController;->c:Z

    if-eqz v0, :cond_4

    .line 61
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    .line 62
    if-nez p1, :cond_2

    .line 63
    new-instance v0, Lcom/inmobi/commons/internal/CommonsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/CommonsException;-><init>(I)V

    throw v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 58
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 68
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/cache/CacheController;->c:Z

    .line 69
    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->e()V

    .line 70
    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->d()V

    .line 73
    :cond_4
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    const/4 v0, 0x0

    check-cast v0, Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/cache/ProductCacheConfig;

    .line 76
    if-nez v0, :cond_5

    .line 77
    new-instance v0, Lcom/inmobi/commons/internal/CommonsException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/CommonsException;-><init>(I)V

    throw v0

    .line 79
    :cond_5
    invoke-virtual {v0, p2, p3}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    .line 80
    return-object v0
.end method
