.class final Lcom/inmobi/commons/cache/CacheController$2;
.super Ljava/lang/Object;
.source "CacheController.java"

# interfaces
.implements Lcom/inmobi/commons/cache/CacheController$Committer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/cache/CacheController;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/inmobi/commons/cache/CacheController$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommit()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/cache/CacheController$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/cache/ProductCacheConfig;

    .line 133
    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/inmobi/commons/cache/CacheController$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/cache/LocalCache;->addToCache(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Unable to add json to persistent memory"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
