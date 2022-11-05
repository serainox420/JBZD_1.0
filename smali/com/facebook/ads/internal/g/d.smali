.class public abstract Lcom/facebook/ads/internal/g/d;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:D

.field protected final c:D

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/g/d;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/g/d;->b:D

    iput-wide p3, p0, Lcom/facebook/ads/internal/g/d;->c:D

    iput-object p5, p0, Lcom/facebook/ads/internal/g/d;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/g/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "analog"

    invoke-static {}, Lcom/facebook/ads/internal/util/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "kgr"

    invoke-static {p1}, Lcom/facebook/ads/internal/util/h;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/facebook/ads/internal/g/d;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/g/d;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/internal/g/d;-><init>(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public abstract a()Lcom/facebook/ads/internal/g/h;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/g/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/g/d;->b:D

    return-wide v0
.end method

.method public f()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/g/d;->c:D

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/g/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/facebook/ads/internal/g/d;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/g/d;->a()Lcom/facebook/ads/internal/g/h;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/g/h;->a:Lcom/facebook/ads/internal/g/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
