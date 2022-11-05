.class public Lcom/smaato/soma/mediation/b;
.super Lcom/smaato/soma/mediation/j;
.source "FacebookMediationInterstitial.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/facebook/ads/InterstitialAdListener;

.field private c:Lcom/facebook/ads/InterstitialAd;

.field private d:Lcom/smaato/soma/mediation/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "FacebookMediationInterstitial"

    sput-object v0, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/smaato/soma/mediation/j;-><init>()V

    .line 122
    new-instance v0, Lcom/smaato/soma/mediation/b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/mediation/b$1;-><init>(Lcom/smaato/soma/mediation/b;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/b;->a:Lcom/facebook/ads/InterstitialAdListener;

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/mediation/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/smaato/soma/mediation/b;->f()V

    return-void
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->d:Lcom/smaato/soma/mediation/j$a;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/mediation/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/smaato/soma/mediation/b;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 225
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDefFoundError happened with Google Mediation. Check configurations for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 231
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->d:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 232
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/b;->b()V

    .line 233
    return-void
.end method

.method static synthetic d(Lcom/smaato/soma/mediation/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/smaato/soma/mediation/b;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 237
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened with Mediation inputs. Check in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 242
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->d:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 243
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/b;->b()V

    .line 244
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 251
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cancelTimeout called in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 255
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/b;->b:Ljava/lang/String;

    const-string v2, "Tried to show a Facebook interstitial ad before it finished loading. Please try again."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/mediation/j$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smaato/soma/mediation/j$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smaato/soma/mediation/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p2, p0, Lcom/smaato/soma/mediation/b;->d:Lcom/smaato/soma/mediation/j$a;

    .line 39
    invoke-direct {p0, p4}, Lcom/smaato/soma/mediation/b;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->d:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 77
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 66
    :cond_1
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    .line 67
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/smaato/soma/mediation/b;->a:Lcom/facebook/ads/InterstitialAdListener;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 76
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 107
    iget-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/b;->c:Lcom/facebook/ads/InterstitialAd;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-direct {p0}, Lcom/smaato/soma/mediation/b;->d()V

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    invoke-direct {p0}, Lcom/smaato/soma/mediation/b;->e()V

    goto :goto_0
.end method
