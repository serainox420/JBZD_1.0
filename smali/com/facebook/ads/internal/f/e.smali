.class public Lcom/facebook/ads/internal/f/e;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Lcom/facebook/ads/internal/server/AdPlacementType;


# instance fields
.field public a:I

.field public b:I

.field private e:Lcom/facebook/ads/internal/server/AdPlacementType;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/e;->c:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/server/AdPlacementType;

    sput-object v0, Lcom/facebook/ads/internal/f/e;->d:Lcom/facebook/ads/internal/server/AdPlacementType;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 10
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

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/facebook/ads/internal/f/e;->a:I

    iput v3, p0, Lcom/facebook/ads/internal/f/e;->b:I

    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Lcom/facebook/ads/internal/server/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/internal/f/e;->e:Lcom/facebook/ads/internal/server/AdPlacementType;

    iput v4, p0, Lcom/facebook/ads/internal/f/e;->f:I

    iput v2, p0, Lcom/facebook/ads/internal/f/e;->g:I

    iput v2, p0, Lcom/facebook/ads/internal/f/e;->h:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->i:I

    iput v2, p0, Lcom/facebook/ads/internal/f/e;->j:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->k:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->l:I

    iput-boolean v2, p0, Lcom/facebook/ads/internal/f/e;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/f/e;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/server/AdPlacementType;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/server/AdPlacementType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/f/e;->e:Lcom/facebook/ads/internal/server/AdPlacementType;

    goto :goto_0

    :sswitch_0
    const-string v6, "type"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v6, "min_viewability_percentage"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v6, "viewability_check_ticker"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "refresh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "refresh_threshold"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "cacheable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v6, "placement_width"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v6, "placement_height"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v6, "viewability_check_initial_delay"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v6, "viewability_check_interval"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_a
    const-string v6, "request_timeout"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "conv_tracking_data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->f:I

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->g:I

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->h:I

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->i:I

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/f/e;->m:Z

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->a:I

    goto/16 :goto_0

    :pswitch_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->b:I

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->j:I

    goto/16 :goto_0

    :pswitch_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->k:I

    goto/16 :goto_0

    :pswitch_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/f/e;->l:I

    goto/16 :goto_0

    :pswitch_b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/f/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/f/e;->n:Ljava/util/List;

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v6

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/b;->b()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/facebook/ads/internal/f/b;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Domain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/facebook/ads/internal/f/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Expires="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";path=/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v0, Lcom/facebook/ads/internal/f/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/f/e;->c:Ljava/lang/String;

    const-string v1, "Failed to set cookie."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v0, v7, :cond_3

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    :cond_3
    invoke-virtual {v1, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71370599 -> :sswitch_b
        -0x5d1423f9 -> :sswitch_4
        -0x3311a54a -> :sswitch_9
        -0x2b4a184f -> :sswitch_a
        -0x20f94c24 -> :sswitch_5
        0x368f3a -> :sswitch_0
        0x29c58cc1 -> :sswitch_1
        0x332da93b -> :sswitch_2
        0x40b292db -> :sswitch_3
        0x468b8977 -> :sswitch_8
        0x599f5fc1 -> :sswitch_7
        0x775623ec -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/f/e;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/facebook/ads/internal/f/e;

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/f/e;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/server/AdPlacementType;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/e;->e:Lcom/facebook/ads/internal/server/AdPlacementType;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/f/e;->h:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/f/e;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/f/e;->m:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/f/e;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/f/e;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/f/e;->j:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/f/e;->k:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/f/e;->l:I

    return v0
.end method
