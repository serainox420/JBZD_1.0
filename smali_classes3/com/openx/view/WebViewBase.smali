.class public Lcom/openx/view/WebViewBase;
.super Lcom/openx/view/AdWebView;
.source "WebViewBase.java"

# interfaces
.implements Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/WebViewBase$LoadedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewBase"

.field static script:Ljava/lang/String;


# instance fields
.field private adEventsListener:Lcom/openx/view/AdEventsListener;

.field private adHTML:Ljava/lang/String;

.field private adModel:Lcom/openx/model/AdModel;

.field private adType:Lcom/openx/model/AdType;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/openx/dialogs/AdBaseDialog;

.field private height:I

.field private isClicked:Z

.field private isMRAID:Z

.field private isManuallyRefreshed:Z

.field private isPortrait:Z

.field loadedListener:Lcom/openx/view/WebViewBase$LoadedListener;

.field private mDefaultParentView:Landroid/view/ViewGroup;

.field private mDefaultPosition:Landroid/graphics/Rect;

.field private mOrientationProperties:Ljava/lang/String;

.field private mraid:Lcom/openx/view/mraid/BaseJSInterface;

.field private parentId:Ljava/util/UUID;

.field private preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

.field private trackedImpression:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p4}, Lcom/openx/view/AdWebView;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Z)V

    .line 48
    iput-boolean v0, p0, Lcom/openx/view/WebViewBase;->isClicked:Z

    .line 54
    iput-boolean v0, p0, Lcom/openx/view/WebViewBase;->isManuallyRefreshed:Z

    .line 99
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->context:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/openx/view/WebViewBase;->ad:Lcom/openx/model/Ad;

    .line 102
    iput-object p5, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    .line 103
    iput-object p3, p0, Lcom/openx/view/WebViewBase;->parentId:Ljava/util/UUID;

    .line 104
    iput-boolean p4, p0, Lcom/openx/view/WebViewBase;->isPortrait:Z

    .line 106
    instance-of v0, p0, Lcom/openx/view/WebViewInterstitial;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p2}, Lcom/openx/view/WebViewBase;->setAd(Lcom/openx/model/Ad;)V

    .line 109
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->loadAd()V

    .line 112
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/Ad;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/view/AdWebView;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Z)V

    .line 48
    iput-boolean v0, p0, Lcom/openx/view/WebViewBase;->isClicked:Z

    .line 54
    iput-boolean v0, p0, Lcom/openx/view/WebViewBase;->isManuallyRefreshed:Z

    .line 84
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->context:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/openx/view/WebViewBase;->ad:Lcom/openx/model/Ad;

    .line 86
    iput-object p4, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    .line 87
    iput-boolean p3, p0, Lcom/openx/view/WebViewBase;->isPortrait:Z

    .line 89
    instance-of v0, p0, Lcom/openx/view/WebViewInterstitial;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p2}, Lcom/openx/view/WebViewBase;->setAd(Lcom/openx/model/Ad;)V

    .line 92
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->loadAd()V

    .line 94
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/openx/view/AdWebView;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Z)V

    .line 48
    iput-boolean v1, p0, Lcom/openx/view/WebViewBase;->isClicked:Z

    .line 54
    iput-boolean v1, p0, Lcom/openx/view/WebViewBase;->isManuallyRefreshed:Z

    .line 117
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->context:Landroid/content/Context;

    .line 119
    iput-object p3, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    .line 121
    iput-boolean p2, p0, Lcom/openx/view/WebViewBase;->isPortrait:Z

    .line 123
    return-void
.end method

.method static synthetic access$002(Lcom/openx/view/WebViewBase;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/openx/view/WebViewBase;->isClicked:Z

    return p1
.end method

.method private buildViewportMetaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 437
    const-string v0, ""

    .line 465
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->getInitialScaleValue()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string v0, "WebViewBase"

    const-string v2, "WebviewBase : metatag is rightly set: scale is not null"

    invoke-static {v0, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<meta name=\'viewport\' content=\'width=device-width\' />"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "meta scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    :goto_1
    return-object v0

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<meta name=\'viewport\' content=\'width=device-width, initial-scale=%1$s, maximum-scale=%1$s, minimum-scale=%1$s, user-scalable=yes, target-densityDpi=device-dpi\' />"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_1
    const-string v0, "WebViewBase"

    const-string v1, " WebviewBase : Hardcoding metatag: Something is wrong. Check!! scale is  null!!"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<meta name=\'viewport\' content=\'width=device-width\' />"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public adAssetsLoaded()V
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isMRAID:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->mraid:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->onReady()V

    .line 525
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getLoadedListener()Lcom/openx/view/WebViewBase$LoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getLoadedListener()Lcom/openx/view/WebViewBase$LoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/WebViewBase$LoadedListener;->onLoaded()V

    .line 529
    :cond_0
    instance-of v0, p0, Lcom/openx/view/WebViewInterstitial;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/openx/view/WebViewInterstitial;

    iget-boolean v0, v0, Lcom/openx/view/WebViewInterstitial;->isImage:Z

    if-eqz v0, :cond_2

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    invoke-interface {v0, p0}, Lcom/openx/view/video/PreloadManager$PreloadedListener;->preloaded(Lcom/openx/view/WebViewBase;)V

    goto :goto_0
.end method

.method public adTimeOut(Lcom/openx/view/WebViewBase;)V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    invoke-interface {v0, p1}, Lcom/openx/view/video/PreloadManager$PreloadedListener;->timedOut(Lcom/openx/view/WebViewBase;)V

    .line 547
    :cond_0
    return-void
.end method

.method public detachFromParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAd()Lcom/openx/model/Ad;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->ad:Lcom/openx/model/Ad;

    return-object v0
.end method

.method public getAdEventsListener()Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->adEventsListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method public getAdHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/openx/view/WebViewBase;->height:I

    return v0
.end method

.method public getAdModel()Lcom/openx/model/AdModel;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->adModel:Lcom/openx/model/AdModel;

    return-object v0
.end method

.method public getAdType()Lcom/openx/model/AdType;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->adType:Lcom/openx/model/AdType;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/openx/view/WebViewBase;->width:I

    return v0
.end method

.method public getDefaultParentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->mDefaultParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDefaultPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->mDefaultPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDialog()Lcom/openx/dialogs/AdBaseDialog;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->dialog:Lcom/openx/dialogs/AdBaseDialog;

    return-object v0
.end method

.method public getLoadedListener()Lcom/openx/view/WebViewBase$LoadedListener;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->loadedListener:Lcom/openx/view/WebViewBase$LoadedListener;

    return-object v0
.end method

.method public getMRAID()Lcom/openx/view/mraid/BaseJSInterface;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->mraid:Lcom/openx/view/mraid/BaseJSInterface;

    return-object v0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->mOrientationProperties:Ljava/lang/String;

    return-object v0
.end method

.method public getParentContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getParentId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->parentId:Ljava/util/UUID;

    return-object v0
.end method

.method public getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    return-object v0
.end method

.method public getTrackedImpression()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->trackedImpression:Z

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public initLoad()V
    .locals 3

    .prologue
    .line 362
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/openx/view/WebViewBase;->setVisibility(I)V

    .line 364
    sget-object v0, Lcom/openx/view/mraid/BaseJSInterface;->disabledFlags:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/openx/core/sdk/OXSettings;->setDisabledSupportFlags(I)V

    .line 366
    :cond_0
    invoke-virtual {p0, p0}, Lcom/openx/view/WebViewBase;->setAdAssetsLoadListener(Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;)V

    .line 368
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->ad:Lcom/openx/model/Ad;

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getHTML()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    iget-object v1, p0, Lcom/openx/view/WebViewBase;->ad:Lcom/openx/model/Ad;

    invoke-virtual {v1}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/model/AdTracking;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    const-string v0, "<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*"

    .line 386
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    iput-boolean v1, p0, Lcom/openx/view/WebViewBase;->isMRAID:Z

    .line 393
    iget-object v1, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    .line 395
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isMRAID:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/openx/view/WebViewBase;->script:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/openx/android_sdk_openx/R$raw;->mraid:I

    invoke-static {v0, v1}, Lcom/openx/common/utils/helpers/Utils;->loadStringFromFile(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openx/view/WebViewBase;->script:Ljava/lang/String;

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isMRAID:Z

    if-eqz v0, :cond_2

    .line 407
    const-string v0, "WebViewBase"

    const-string v1, "preloaded isMRAID"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    instance-of v0, p0, Lcom/openx/view/WebViewBanner;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 411
    check-cast v0, Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBanner;->setMRAIDInterface()V

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/openx/view/WebViewBase;->buildViewportMetaTag()Ljava/lang/String;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<script type=\'text/javascript\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isMRAID:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/openx/view/WebViewBase;->script:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<body style=\'margin: 0; padding: 0; \'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    .line 426
    return-void

    .line 418
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 380
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public initializeWebSettings()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public initializeWebView()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isClicked:Z

    .line 198
    return v0
.end method

.method public isMRAID()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isMRAID:Z

    return v0
.end method

.method public isManuallyRefreshed()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isManuallyRefreshed:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/openx/view/WebViewBase;->isPortrait:Z

    return v0
.end method

.method public loadAd()V
    .locals 6

    .prologue
    .line 154
    const-string v0, "WebViewBase"

    const-string v1, "loadAd() ln 141"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->initLoad()V

    .line 158
    new-instance v0, Lcom/openx/view/WebViewBase$1;

    invoke-direct {v0, p0}, Lcom/openx/view/WebViewBase$1;-><init>(Lcom/openx/view/WebViewBase;)V

    invoke-virtual {p0, v0}, Lcom/openx/view/WebViewBase;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    const-string v1, ""

    iget-object v2, p0, Lcom/openx/view/WebViewBase;->adHTML:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/openx/view/WebViewBase;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    .line 192
    return-void
.end method

.method public setAd(Lcom/openx/model/Ad;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    .line 147
    invoke-super {p0}, Lcom/openx/view/AdWebView;->initializeWebView()V

    .line 148
    invoke-super {p0}, Lcom/openx/view/AdWebView;->initializeWebSettings()V

    .line 149
    return-void
.end method

.method public setAdEventsListener(Lcom/openx/view/AdEventsListener;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->adEventsListener:Lcom/openx/view/AdEventsListener;

    .line 219
    return-void
.end method

.method public setAdHeight(I)V
    .locals 0

    .prologue
    .line 336
    iput p1, p0, Lcom/openx/view/WebViewBase;->height:I

    .line 337
    return-void
.end method

.method public setAdModel(Lcom/openx/model/AdModel;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->adModel:Lcom/openx/model/AdModel;

    .line 209
    return-void
.end method

.method public setAdType(Lcom/openx/model/AdType;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->adType:Lcom/openx/model/AdType;

    .line 347
    return-void
.end method

.method public setAdWidth(I)V
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lcom/openx/view/WebViewBase;->width:I

    .line 327
    return-void
.end method

.method public setBaseJSInterface(Lcom/openx/view/mraid/BaseJSInterface;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->mraid:Lcom/openx/view/mraid/BaseJSInterface;

    .line 307
    return-void
.end method

.method public setDefaultParentView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->mDefaultParentView:Landroid/view/ViewGroup;

    .line 287
    return-void
.end method

.method public setDefaultPosition(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->mDefaultPosition:Landroid/graphics/Rect;

    .line 254
    return-void
.end method

.method public setDialog(Lcom/openx/dialogs/AdBaseDialog;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->dialog:Lcom/openx/dialogs/AdBaseDialog;

    .line 69
    return-void
.end method

.method public setIsClicked(Z)V
    .locals 0

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/openx/view/WebViewBase;->isClicked:Z

    .line 204
    return-void
.end method

.method public setLoadedListener(Lcom/openx/view/WebViewBase$LoadedListener;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->loadedListener:Lcom/openx/view/WebViewBase$LoadedListener;

    .line 509
    return-void
.end method

.method public setManuallyRefreshed(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/openx/view/WebViewBase;->isManuallyRefreshed:Z

    .line 64
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->mOrientationProperties:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setParentId(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/openx/view/WebViewBase;->parentId:Ljava/util/UUID;

    .line 187
    return-void
.end method

.method public setTrackedImpression(Z)V
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/openx/view/WebViewBase;->trackedImpression:Z

    .line 229
    return-void
.end method

.method public stoppedLoading()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/openx/view/WebViewBase;->preloadedListener:Lcom/openx/view/video/PreloadManager$PreloadedListener;

    invoke-interface {v0}, Lcom/openx/view/video/PreloadManager$PreloadedListener;->stoppedLoading()V

    .line 433
    return-void
.end method
