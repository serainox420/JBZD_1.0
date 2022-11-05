.class public Lcom/facebook/ads/internal/adapters/n;
.super Lcom/facebook/ads/internal/adapters/v;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/t;


# static fields
.field private static volatile a:Z


# instance fields
.field private b:Lcom/facebook/ads/internal/adapters/w;

.field private c:Lcom/flurry/android/ads/FlurryAdNative;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/ads/NativeAd$Image;

.field private k:Lcom/facebook/ads/NativeAd$Image;

.field private l:Lcom/facebook/ads/NativeAd$Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/v;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/n;Lcom/facebook/ads/NativeAd$Image;)Lcom/facebook/ads/NativeAd$Image;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->j:Lcom/facebook/ads/NativeAd$Image;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/n;)Lcom/facebook/ads/internal/adapters/w;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->b:Lcom/facebook/ads/internal/adapters/w;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/n;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/n;Lcom/facebook/ads/NativeAd$Image;)Lcom/facebook/ads/NativeAd$Image;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->k:Lcom/facebook/ads/NativeAd$Image;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/n;Lcom/facebook/ads/NativeAd$Image;)Lcom/facebook/ads/NativeAd$Image;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->l:Lcom/facebook/ads/NativeAd$Image;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/facebook/ads/internal/adapters/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()Lcom/facebook/ads/AdNetwork;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AdNetwork;->FLURRY:Lcom/facebook/ads/AdNetwork;

    return-object v0
.end method

.method public D()Lcom/facebook/ads/internal/adapters/e;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/facebook/ads/internal/adapters/e;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->removeTrackingView()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/w;Lcom/facebook/ads/internal/g/f;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/w;",
            "Lcom/facebook/ads/internal/g/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "api_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/facebook/ads/internal/adapters/n;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/facebook/ads/internal/adapters/n;->a:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/n;->D()Lcom/facebook/ads/internal/adapters/e;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/util/x;->a(Lcom/facebook/ads/internal/adapters/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Initializing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    invoke-static {p1, v1}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/ads/internal/adapters/n;->a:Z

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/n;->D()Lcom/facebook/ads/internal/adapters/e;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/x;->a(Lcom/facebook/ads/internal/adapters/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Loading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/n;->b:Lcom/facebook/ads/internal/adapters/w;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNative;

    invoke-direct {v1, p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    new-instance v1, Lcom/facebook/ads/internal/adapters/n$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/adapters/n$1;-><init>(Lcom/facebook/ads/internal/adapters/n;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->setListener(Lcom/flurry/android/ads/FlurryAdNativeListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->fetchAd()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0, p1}, Lcom/flurry/android/ads/FlurryAdNative;->setTrackingView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/w;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->b:Lcom/facebook/ads/internal/adapters/w;

    return-void
.end method

.method public a(Ljava/util/Map;)V
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

    return-void
.end method

.method public b(Ljava/util/Map;)V
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

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/n;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->j:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public l()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->k:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public m()Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/n;->a()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/n;->b:Lcom/facebook/ads/internal/adapters/w;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->destroy()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/n;->c:Lcom/flurry/android/ads/FlurryAdNative;

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/facebook/ads/NativeAd$Rating;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->l:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const-string v0, "Ad"

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Lcom/facebook/ads/internal/util/ak;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/util/ak;->c:Lcom/facebook/ads/internal/util/ak;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
