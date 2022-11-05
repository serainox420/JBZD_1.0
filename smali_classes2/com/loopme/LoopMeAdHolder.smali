.class public Lcom/loopme/LoopMeAdHolder;
.super Ljava/lang/Object;
.source "LoopMeAdHolder.java"


# static fields
.field private static final mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/loopme/LoopMeBanner;",
            ">;"
        }
    .end annotation
.end field

.field private static final mInterstitialMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/loopme/LoopMeInterstitial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loopme/LoopMeAdHolder;->mInterstitialMap:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loopme/LoopMeAdHolder;->mBannerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getBanner(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeBanner;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/loopme/LoopMeAdHolder;->mBannerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/loopme/LoopMeAdHolder;->mBannerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lcom/loopme/LoopMeBanner;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/loopme/LoopMeBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/loopme/LoopMeAdHolder;->mBannerMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInterstitial(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeInterstitial;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/loopme/LoopMeAdHolder;->mInterstitialMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/loopme/LoopMeAdHolder;->mInterstitialMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeInterstitial;

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Lcom/loopme/LoopMeInterstitial;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/loopme/LoopMeInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/loopme/LoopMeAdHolder;->mInterstitialMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static putAd(Lcom/loopme/BaseAd;)V
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getAdFormat()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    .line 26
    sget-object v1, Lcom/loopme/LoopMeAdHolder;->mInterstitialMap:Ljava/util/Map;

    check-cast p0, Lcom/loopme/LoopMeInterstitial;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/loopme/LoopMeAdHolder;->mBannerMap:Ljava/util/Map;

    check-cast p0, Lcom/loopme/LoopMeBanner;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static removeBanner(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/loopme/LoopMeAdHolder;->mBannerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method static removeInterstitial(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/loopme/LoopMeAdHolder;->mInterstitialMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
