.class public Lcom/facebook/ads/internal/adapters/q;
.super Lcom/facebook/ads/internal/adapters/v;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/t;


# instance fields
.field private a:Lcom/facebook/ads/internal/adapters/w;

.field private b:Lcom/inmobi/ads/InMobiNative;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/facebook/ads/NativeAd$Rating;

.field private i:Lcom/facebook/ads/NativeAd$Image;

.field private j:Lcom/facebook/ads/NativeAd$Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/v;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/NativeAd$Image;)Lcom/facebook/ads/NativeAd$Image;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->i:Lcom/facebook/ads/NativeAd$Image;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/NativeAd$Rating;)Lcom/facebook/ads/NativeAd$Rating;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->h:Lcom/facebook/ads/NativeAd$Rating;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/q;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/NativeAd$Image;)Lcom/facebook/ads/NativeAd$Image;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->j:Lcom/facebook/ads/NativeAd$Image;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/q;)Lcom/inmobi/ads/InMobiNative;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/w;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->a:Lcom/facebook/ads/internal/adapters/w;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->g:Ljava/lang/String;

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

    sget-object v0, Lcom/facebook/ads/AdNetwork;->INMOBI:Lcom/facebook/ads/AdNetwork;

    return-object v0
.end method

.method public D()Lcom/facebook/ads/internal/adapters/e;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/e;

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->unbind(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->d:Landroid/view/View;

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/w;Lcom/facebook/ads/internal/g/f;Ljava/util/Map;)V
    .locals 6
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->D()Lcom/facebook/ads/internal/adapters/e;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/util/x;->a(Lcom/facebook/ads/internal/adapters/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Loading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/facebook/ads/AdError;->MEDIATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/internal/adapters/w;->a(Lcom/facebook/ads/internal/adapters/v;Lcom/facebook/ads/AdError;)V

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/q;->a:Lcom/facebook/ads/internal/adapters/w;

    invoke-static {p1, v1}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/adapters/q$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/adapters/q$1;-><init>(Lcom/facebook/ads/internal/adapters/q;Landroid/content/Context;)V

    new-instance v2, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v1}, Lcom/inmobi/ads/InMobiNative;-><init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->load()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 2
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

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiNative;->bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/w;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->a:Lcom/facebook/ads/internal/adapters/w;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->a:Lcom/facebook/ads/internal/adapters/w;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/w;->b(Lcom/facebook/ads/internal/adapters/v;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->a:Lcom/facebook/ads/internal/adapters/w;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/w;->c(Lcom/facebook/ads/internal/adapters/v;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative;->reportAdClickAndOpenLandingPage(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->i:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public l()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->j:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public m()Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->a()V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/inmobi/ads/InMobiNative;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->a:Lcom/facebook/ads/internal/adapters/w;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lcom/facebook/ads/NativeAd$Rating;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    const/4 v0, 0x0

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
