.class public Lcom/flurry/sdk/by;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/facebook/ads/AdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/sdk/by;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/by;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;)V

    .line 32
    const-string v0, "com.flurry.fan.MY_APP_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/by;->b:Ljava/lang/String;

    .line 33
    const-string v0, "com.flurry.fan.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/by;->c:Ljava/lang/String;

    .line 34
    const-string v0, "com.flurry.fan.test"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/by;->d:Z

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/by;->setFocusable(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public initLayout()V
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/by;->a:Ljava/lang/String;

    const-string v2, "FAN banner initLayout."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/flurry/sdk/by;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/facebook/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/by;->b:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v1, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/by;->addView(Landroid/view/View;)V

    .line 47
    iget-boolean v0, p0, Lcom/flurry/sdk/by;->d:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/by;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 52
    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/by;->a:Ljava/lang/String;

    const-string v2, "FAN banner onDestroy."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onActivityDestroy()V

    .line 84
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/by;->a:Ljava/lang/String;

    const-string v2, "FAN banner onAdClicked."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/by;->onAdClicked(Ljava/util/Map;)V

    .line 74
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/by;->onAdShown(Ljava/util/Map;)V

    .line 57
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/by;->a:Ljava/lang/String;

    const-string v2, "FAN banner onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/by;->onRenderFailed(Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/by;->e:Lcom/facebook/ads/AdView;

    .line 67
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/by;->a:Ljava/lang/String;

    const-string v2, "FAN banner onError."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
