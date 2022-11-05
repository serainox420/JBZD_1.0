.class public Lcom/facebook/ads/internal/f/f;
.super Ljava/lang/Object;


# static fields
.field private static final g:Ljava/util/concurrent/ExecutorService;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/facebook/ads/internal/util/p$a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/facebook/ads/internal/server/AdPlacementType;

.field protected c:Lcom/facebook/ads/internal/f/c;

.field public d:Landroid/content/Context;

.field public e:Lcom/facebook/ads/internal/e;

.field public f:Z

.field private j:Lcom/facebook/ads/internal/c;

.field private k:I

.field private l:Lcom/facebook/ads/AdSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/f;->g:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/internal/f/f;->h:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/util/p;->a()Lcom/facebook/ads/internal/util/p$a;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/f;->i:Lcom/facebook/ads/internal/util/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/e;Lcom/facebook/ads/internal/c;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/f/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/f/f;->l:Lcom/facebook/ads/AdSize;

    iput-object p4, p0, Lcom/facebook/ads/internal/f/f;->e:Lcom/facebook/ads/internal/e;

    invoke-static {p4}, Lcom/facebook/ads/internal/f/c;->a(Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->c:Lcom/facebook/ads/internal/f/c;

    iput-object p5, p0, Lcom/facebook/ads/internal/f/f;->j:Lcom/facebook/ads/internal/c;

    iput p6, p0, Lcom/facebook/ads/internal/f/f;->k:I

    iput-boolean p7, p0, Lcom/facebook/ads/internal/f/f;->f:Z

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/f/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/facebook/ads/internal/f/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/facebook/ads/internal/f/f;->d:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/ads/internal/f/g;->a()V

    invoke-static {p1}, Lcom/facebook/ads/internal/f/i;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/f/f;->g()V

    sget-object v0, Lcom/facebook/ads/internal/f/f;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/ads/internal/f/f$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/f/f$1;-><init>(Lcom/facebook/ads/internal/f/f;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SDK"

    const-string v2, "android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SDK_VERSION"

    const-string v2, "4.20.0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LOCALE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v4, "DENSITY"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "SCREEN_WIDTH"

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SCREEN_HEIGHT"

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "IDFA"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->o:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IDFA_FLAG"

    sget-boolean v0, Lcom/facebook/ads/internal/f/i;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ATTRIBUTION_ID"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->n:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ID_SOURCE"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->q:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OS"

    const-string v2, "Android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OSVERS"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BUNDLE"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "APPNAME"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "APPVERS"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "APPBUILD"

    sget v2, Lcom/facebook/ads/internal/f/i;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CARRIER"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MAKE"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MODEL"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ROOTED"

    sget-object v2, Lcom/facebook/ads/internal/f/f;->i:Lcom/facebook/ads/internal/util/p$a;

    iget v2, v2, Lcom/facebook/ads/internal/util/p$a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "COPPA"

    invoke-static {}, Lcom/facebook/ads/AdSettings;->isChildDirected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "INSTALLER"

    sget-object v2, Lcom/facebook/ads/internal/f/i;->h:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SDK_CAPABILITY"

    invoke-static {}, Lcom/facebook/ads/internal/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NETWORK_TYPE"

    invoke-static {p0}, Lcom/facebook/ads/internal/util/y;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/util/y$a;

    move-result-object v2

    iget v2, v2, Lcom/facebook/ads/internal/util/y$a;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "REQUEST_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/util/h;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SESSION_TIME"

    invoke-static {}, Lcom/facebook/ads/internal/f/g;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/util/h;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SESSION_ID"

    invoke-static {}, Lcom/facebook/ads/internal/f/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const-string v0, "1"

    goto/16 :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/f/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->c:Lcom/facebook/ads/internal/f/c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->c:Lcom/facebook/ads/internal/f/c;

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/f/f$2;->a:[I

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->c:Lcom/facebook/ads/internal/f/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/f/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/server/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/server/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/server/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/server/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/server/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/ads/internal/f/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->c:Lcom/facebook/ads/internal/f/c;

    return-object v0
.end method

.method public c()Lcom/facebook/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->l:Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/f/f;->k:I

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 4
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

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "PLACEMENT_ID"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    sget-object v1, Lcom/facebook/ads/internal/server/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/server/AdPlacementType;

    if-eq v0, v1, :cond_0

    const-string v0, "PLACEMENT_TYPE"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/server/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/f/f;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

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

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->l:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_2

    const-string v0, "WIDTH"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->l:Lcom/facebook/ads/AdSize;

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HEIGHT"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->l:Lcom/facebook/ads/AdSize;

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "ADAPTERS"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->b:Lcom/facebook/ads/internal/server/AdPlacementType;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/d;->a(Lcom/facebook/ads/internal/server/AdPlacementType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->e:Lcom/facebook/ads/internal/e;

    if-eqz v0, :cond_3

    const-string v0, "TEMPLATE_ID"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->e:Lcom/facebook/ads/internal/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/f/f;->j:Lcom/facebook/ads/internal/c;

    if-eqz v0, :cond_4

    const-string v0, "REQUEST_TYPE"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->j:Lcom/facebook/ads/internal/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/internal/f/f;->f:Z

    if-eqz v0, :cond_5

    const-string v0, "TEST_MODE"

    const-string v1, "1"

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/facebook/ads/internal/f/f;->k:I

    if-eqz v0, :cond_6

    const-string v0, "NUM_ADS_REQUESTED"

    iget v1, p0, Lcom/facebook/ads/internal/f/f;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getMediationService()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "MEDIATION_SERVICE"

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "CLIENT_EVENTS"

    invoke-static {}, Lcom/facebook/ads/internal/util/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/f/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "AFP"

    sget-object v1, Lcom/facebook/ads/internal/f/f;->h:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "UNITY"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KG_RESTRICTED"

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/util/h;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/f/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
