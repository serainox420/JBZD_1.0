.class public Lcom/intentsoftware/addapptr/AATKit;
.super Ljava/lang/Object;
.source "AATKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/AATKit$Delegate;
    }
.end annotation


# static fields
.field public static final BANNER_DEFAULT_RELOAD_INTERVAL_IN_SECONDS:I = 0x1e

.field public static final BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS:I = 0x258

.field public static final BANNER_MIN_RELOAD_INTERVAL_IN_SECONDS:I = 0x1e

.field private static adController:Lcom/intentsoftware/addapptr/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static addAdNetworkForKeywordTargeting(Lcom/intentsoftware/addapptr/AdNetwork;)V
    .locals 2

    .prologue
    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: addAdNetworkForKeywordTargeting("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 763
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->addAdNetworkForKeywordTargeting(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 764
    return-void
.end method

.method public static attachNativeAdToLayout(Lcom/intentsoftware/addapptr/ad/d;Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: attachNativeAdToLayout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->attachNativeAdToLayout(Lcom/intentsoftware/addapptr/ad/d;Landroid/view/ViewGroup;)V

    .line 365
    return-void
.end method

.method public static createPlacement(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;)I
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: createPlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->createPlacement(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;)I

    move-result v0

    return v0
.end method

.method public static currentlyLoadingNativeAdsOnPlacement(I)I
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: currentlyLoadingNativeAdsOnPlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->currentlyLoadingNativeAdsOnPlacement(I)I

    move-result v0

    return v0
.end method

.method static destroy()V
    .locals 1

    .prologue
    .line 831
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->destroy()V

    .line 832
    const/4 v0, 0x0

    sput-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    .line 833
    return-void
.end method

.method public static detachNativeAdFromLayout(Lcom/intentsoftware/addapptr/ad/d;)V
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: detachNativeAdFromLayout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->detachNativeAdFromLayout(Lcom/intentsoftware/addapptr/ad/d;)V

    .line 375
    return-void
.end method

.method public static disableDebugScreen()V
    .locals 1

    .prologue
    .line 218
    const-string v0, "CMD: disableDebugScreen()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->disableDebugScreen()V

    .line 220
    return-void
.end method

.method public static disablePromo()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 639
    const-string v0, "CMD: disablePromo()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 640
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->disablePromo()V

    .line 641
    return-void
.end method

.method public static enableDebugScreen()V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->enableDebugScreen()V

    .line 211
    const-string v0, "CMD: enableDebugScreen()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static enablePromo()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    const-string v0, "CMD: enablePromo()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c;->enablePromo(Z)V

    .line 621
    return-void
.end method

.method public static enablePromo(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: enablePromo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 631
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->enablePromo(Z)V

    .line 632
    return-void
.end method

.method public static enableTestMode(I)V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: enableTestMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->setTestAppId(I)V

    .line 204
    return-void
.end method

.method public static getDebugInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "CMD: getDebugInfo()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "CMD: getFullVersion()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/intentsoftware/addapptr/ae;->FULL_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getNativeAd(I)Lcom/intentsoftware/addapptr/ad/d;
    .locals 2

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAd(I)Lcom/intentsoftware/addapptr/ad/d;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdAdvertiser(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdAdvertiser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 462
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdAdvertiser(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdBrandingLogo(Lcom/intentsoftware/addapptr/ad/d;)Landroid/view/View;
    .locals 2

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdBrandingLogo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdBrandingLogo(Lcom/intentsoftware/addapptr/ad/d;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdCallToAction(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdCallToAction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdCallToAction(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdDescription(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdDescription("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdDescription(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdIconUrl(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdIconUrl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdIconUrl(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdImageUrl(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdImageUrl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdImageUrl(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdNetwork(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/AdNetwork;
    .locals 2

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdNetwork("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 484
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdNetwork(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdRating(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/ad/NativeAd$a;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdRating("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdRating(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdTitle(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdTitle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdTitle(Lcom/intentsoftware/addapptr/ad/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAdType(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getNativeAdType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getNativeAdType(Lcom/intentsoftware/addapptr/ad/d;)Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    move-result-object v0

    return-object v0
.end method

.method public static getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getOption("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 708
    invoke-static {p0}, Lcom/intentsoftware/addapptr/c;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementView(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getPlacementView("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->getPlacementView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacmentIdForName(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: getPlacmentIdForName("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 566
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->findPlacementIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "CMD: getVersion()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/intentsoftware/addapptr/ae;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static hasAdForPlacement(I)Z
    .locals 2

    .prologue
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: hasAdForPlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->hasAdForPlacement(I)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;)V
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/intentsoftware/addapptr/c;-><init>(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;Z)V

    sput-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    .line 127
    const-string v0, "Init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/intentsoftware/addapptr/ae;->FULL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", live mode, shake debug on, rule caching on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 132
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdController is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;I)V
    .locals 3

    .prologue
    .line 166
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/intentsoftware/addapptr/c;-><init>(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;Z)V

    sput-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    .line 168
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/c;->setTestAppId(I)V

    .line 169
    const-string v0, "Init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/intentsoftware/addapptr/ae;->FULL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", test mode with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shake debug on, rule caching on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 174
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdController is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/intentsoftware/addapptr/c;-><init>(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;Z)V

    sput-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    .line 146
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p2}, Lcom/intentsoftware/addapptr/c;->setRuleCachingEnabled(Z)V

    .line 147
    if-eqz p3, :cond_0

    .line 148
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p3}, Lcom/intentsoftware/addapptr/c;->setInitialRules(Ljava/lang/String;)V

    .line 150
    :cond_0
    const-string v0, "Init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/intentsoftware/addapptr/ae;->FULL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", live mode, shake debug on, rule caching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initial rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 155
    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdController is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initWithoutDebugScreen(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;)V
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/intentsoftware/addapptr/c;-><init>(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;Z)V

    sput-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    .line 188
    const-string v0, "Init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/intentsoftware/addapptr/ae;->FULL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", live mode, shake debug off, rule caching on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: initWithoutDebugScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 194
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdController is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFrequencyCapReachedForNativePlacement(I)Z
    .locals 2

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: isFrequencyCapReachedForNativePlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 541
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->isFrequencyCapReachedForNativePlacement(I)Z

    move-result v0

    return v0
.end method

.method static isInitialized()Z
    .locals 1

    .prologue
    .line 836
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNativeAdExpired(Lcom/intentsoftware/addapptr/ad/d;)Z
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: isNativeAdExpired("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 495
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->isNativeAdExpired(Lcom/intentsoftware/addapptr/ad/d;)Z

    move-result v0

    return v0
.end method

.method public static isNativeAdReady(Lcom/intentsoftware/addapptr/ad/d;)Z
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: isNativeAdReady("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->isNativeAdReady(Lcom/intentsoftware/addapptr/ad/d;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z
    .locals 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: isNetworkEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 611
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z

    move-result v0

    return v0
.end method

.method public static isOptionEnabled(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: isOptionEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 719
    invoke-static {p0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: isTablet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 240
    invoke-static {p0}, Lcom/intentsoftware/addapptr/c/m;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static logAATKitCall(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 819
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->shouldLogAATKitCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-static {p0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 822
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    const-string v0, "^CMD:\\s*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    const-class v1, Lcom/intentsoftware/addapptr/AATKit;

    invoke-static {v1, v0}, Lcom/intentsoftware/addapptr/c/c;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    :cond_1
    return-void
.end method

.method public static onActivityPause(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: onActivityPause("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->onActivityPause()V

    .line 261
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: onActivityResume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->onActivityResume(Landroid/app/Activity;)V

    .line 251
    return-void
.end method

.method public static preparePromo()V
    .locals 1

    .prologue
    .line 649
    const-string v0, "CMD: preparePromo()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 650
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->preparePromo()V

    .line 651
    return-void
.end method

.method public static reloadPlacement(I)Z
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: reloadPlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/intentsoftware/addapptr/c;->reloadPlacement(IZ)Z

    move-result v0

    return v0
.end method

.method public static reloadPlacement(IZ)Z
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: reloadPlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->reloadPlacement(IZ)Z

    move-result v0

    return v0
.end method

.method public static removeAdNetworkForKeywordTargeting(Lcom/intentsoftware/addapptr/AdNetwork;)V
    .locals 2

    .prologue
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: removeAdNetworkForKeywordTargeting("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 774
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->removeAdNetworkForKeywordTargeting(Lcom/intentsoftware/addapptr/AdNetwork;)V

    .line 775
    return-void
.end method

.method public static reportAdSpaceForNativePlacement(I)V
    .locals 2

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: reportAdSpaceForNativePlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->reportAdSpaceForNativePlacement(I)V

    .line 518
    return-void
.end method

.method public static setInitialRules(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setInitialRules("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 795
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->setInitialRules(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2

    .prologue
    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setLogLevel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->setLogLevel(I)V

    .line 816
    return-void
.end method

.method public static setNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;Z)V
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setNetworkEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->setNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;Z)V

    .line 601
    return-void
.end method

.method public static setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setOption("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 730
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public static setPlacementAutoreloadInterval(II)V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setPlacementAutoreloadInterval("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->setPlacementAutoreloadInterval(II)V

    .line 315
    return-void
.end method

.method public static setPlacementContentGravity(II)V
    .locals 2

    .prologue
    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setPlacementContentGravity("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 785
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->setPlacementContentGravity(II)V

    .line 786
    return-void
.end method

.method public static setPlacementDefaultImageBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setPlacementDefaultImageBitmap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 686
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->setPlacementDefaultImage(ILandroid/graphics/Bitmap;)V

    .line 687
    return-void
.end method

.method public static setPlacementDefaultImageResource(II)V
    .locals 2

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setPlacementDefaultImageResource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 697
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->setPlacementDefaultImageResource(II)V

    .line 698
    return-void
.end method

.method public static setRuleCachingEnabled(Z)V
    .locals 2

    .prologue
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setRuleCachingEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 805
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->setRuleCachingEnabled(Z)V

    .line 806
    return-void
.end method

.method public static setTargetingInfo(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setTargetingInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 752
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/intentsoftware/addapptr/c;->setTargetingInfo(Ljava/lang/Integer;Ljava/util/Map;)V

    .line 753
    return-void
.end method

.method public static setTargetingInfo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: setTargetingInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 741
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/intentsoftware/addapptr/c;->setTargetingInfo(Ljava/lang/Integer;Ljava/util/Map;)V

    .line 742
    return-void
.end method

.method static showDebugDialog()V
    .locals 1

    .prologue
    .line 843
    const-string v0, "CMD: showDebugDialog()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 844
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->showDebugDialog()V

    .line 845
    return-void
.end method

.method public static showPlacement(I)Z
    .locals 2

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: showPlacement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 589
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->showPlacement(I)Z

    move-result v0

    return v0
.end method

.method public static showPromo()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 663
    const-string v0, "CMD: showPromo()"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c;->showPromo(Z)Z

    move-result v0

    return v0
.end method

.method public static showPromo(Z)Z
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: showPromo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 675
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->showPromo(Z)Z

    move-result v0

    return v0
.end method

.method public static startPlacementAutoReload(I)V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: startPlacementAutoReload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->startPlacementAutoReload(I)V

    .line 283
    return-void
.end method

.method public static startPlacementAutoReload(II)V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: startPlacementAutoReload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0, p1}, Lcom/intentsoftware/addapptr/c;->startPlacementAutoReload(II)V

    .line 294
    return-void
.end method

.method public static stopPlacementAutoReload(I)V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD: stopPlacementAutoReload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->logAATKitCall(Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/intentsoftware/addapptr/AATKit;->adController:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/c;->stopPlacementAutoReload(I)V

    .line 304
    return-void
.end method
