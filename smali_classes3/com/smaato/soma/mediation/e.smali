.class public Lcom/smaato/soma/mediation/e;
.super Lcom/smaato/soma/mediation/j;
.source "GooglePlayMediationInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/mediation/e$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/smaato/soma/mediation/j$a;

.field private c:Lcom/google/android/gms/ads/InterstitialAd;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "GooglePlayMediationInterstitial"

    sput-object v0, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->b:Lcom/smaato/soma/mediation/j$a;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 143
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

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/mediation/e;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->e()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/mediation/e;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->f()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cancelTimeout called in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 114
    return-void
.end method

.method static synthetic d(Lcom/smaato/soma/mediation/e;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->d()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 243
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDefFoundError happened with Google Mediation. Check configurations for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 249
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->b:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 250
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/e;->b()V

    .line 251
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 255
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened with Mediation inputs. Check in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 260
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->b:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 261
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/e;->b()V

    .line 262
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/e;->a:Ljava/lang/String;

    const-string v2, "Tried to show a Google Play Services interstitial ad before it finished loading. Please try again."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->e()V

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->f()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/mediation/j$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    .locals 6
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
    .line 36
    :try_start_0
    iput-object p2, p0, Lcom/smaato/soma/mediation/e;->b:Lcom/smaato/soma/mediation/j$a;

    .line 38
    invoke-direct {p0, p4}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->b:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 81
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    .line 45
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/smaato/soma/mediation/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smaato/soma/mediation/e$a;-><init>(Lcom/smaato/soma/mediation/e;Lcom/smaato/soma/mediation/e$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 46
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v1, "Smaato"

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    .line 54
    new-instance v1, Lcom/smaato/soma/mediation/e$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/mediation/e$1;-><init>(Lcom/smaato/soma/mediation/e;)V

    iput-object v1, p0, Lcom/smaato/soma/mediation/e;->e:Ljava/lang/Runnable;

    .line 69
    iget-object v1, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/smaato/soma/mediation/e;->e:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2328

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    iget-object v1, p0, Lcom/smaato/soma/mediation/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->e()V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/e;->d:Landroid/os/Handler;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/e;->e:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->e()V

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    invoke-direct {p0}, Lcom/smaato/soma/mediation/e;->f()V

    goto :goto_0
.end method
