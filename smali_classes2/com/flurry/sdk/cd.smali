.class public final Lcom/flurry/sdk/cd;
.super Lcom/flurry/sdk/bm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cd$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lcom/google/android/gms/ads/InterstitialAd;

.field private final h:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/sdk/cd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cd;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/bm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 30
    const-string v0, "com.flurry.gms.ads.MY_AD_UNIT_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    .line 31
    const-string v0, "com.flurry.gms.ads.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cd;->e:Ljava/lang/String;

    .line 32
    const-string v0, "com.flurry.gms.ads.test"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cd;->f:Z

    .line 34
    new-instance v0, Lcom/flurry/sdk/cd$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/cd$a;-><init>(Lcom/flurry/sdk/cd;B)V

    iput-object v0, p0, Lcom/flurry/sdk/cd;->h:Lcom/google/android/gms/ads/AdListener;

    .line 35
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/flurry/sdk/cd;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/cd;->g:Lcom/google/android/gms/ads/InterstitialAd;

    .line 36
    iget-object v0, p0, Lcom/flurry/sdk/cd;->g:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/cd;->g:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/flurry/sdk/cd;->h:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/sdk/cd;->g:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/sdk/cd;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 43
    iget-boolean v1, p0, Lcom/flurry/sdk/cd;->f:Z

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/cd;->c:Ljava/lang/String;

    const-string v3, "GMS AdView set to Test Mode."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 47
    iget-object v1, p0, Lcom/flurry/sdk/cd;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/flurry/sdk/cd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/cd;->g:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 52
    return-void
.end method
