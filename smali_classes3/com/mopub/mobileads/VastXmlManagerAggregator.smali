.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "VastXmlManagerAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$a;,
        Lcom/mopub/mobileads/VastXmlManagerAggregator$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field public static final SOCIAL_ACTIONS_AD_SLOT_ID:Ljava/lang/String; = "socialActions"

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:D

.field private final d:I

.field private final e:Landroid/content/Context;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video/mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video/3gpp"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$b;DILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 97
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:Ljava/lang/ref/WeakReference;

    .line 101
    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:D

    .line 102
    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:I

    .line 103
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private a(II)D
    .locals 6

    .prologue
    .line 766
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 767
    mul-int v2, p1, p2

    .line 768
    iget-wide v4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:D

    div-double/2addr v0, v4

    .line 769
    int-to-double v2, v2

    iget v4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 770
    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/mopub/mobileads/h;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/h;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 300
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {p1}, Lcom/mopub/mobileads/h;->c()Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/i;

    .line 306
    invoke-virtual {v0}, Lcom/mopub/mobileads/i;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_0

    .line 309
    new-instance v1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v1}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    .line 310
    invoke-virtual {p1}, Lcom/mopub/mobileads/h;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 311
    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/i;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 316
    invoke-virtual {v0}, Lcom/mopub/mobileads/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/mopub/mobileads/h;->d()Ljava/util/List;

    move-result-object v0

    .line 321
    sget-object v2, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, v0, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, v0, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 326
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 328
    invoke-virtual {p1}, Lcom/mopub/mobileads/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-virtual {v1, p2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    .line 330
    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/e;Lcom/mopub/mobileads/VastVideoConfig;)V

    move-object v0, v1

    .line 336
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/mopub/mobileads/n;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/n;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-virtual {p1}, Lcom/mopub/mobileads/n;->f()Ljava/lang/String;

    move-result-object v1

    .line 375
    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-object v0

    .line 381
    :cond_1
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    const-string v2, "Failed to follow VAST redirect"

    invoke-static {v2, v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    sget-object v1, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-static {p2, v1, v0, v0, v2}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Lcom/mopub/mobileads/e;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 4

    .prologue
    .line 342
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 343
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/mobileads/e;->e()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->a()Ljava/util/List;

    move-result-object v0

    .line 354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    .line 355
    const-string v2, "MoPub"

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->a()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    goto :goto_0
.end method

.method private a(Lcom/mopub/mobileads/i;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .prologue
    .line 403
    const-string v0, "linearXmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 407
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 409
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    .line 410
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    .line 411
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 412
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    .line 413
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    .line 414
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 417
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    .line 422
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 423
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c(Ljava/util/List;)Lcom/mopub/mobileads/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/g;)V

    .line 425
    :cond_1
    return-void
.end method

.method private a(Lcom/mopub/mobileads/o;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .prologue
    .line 438
    const-string v0, "xmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcom/mopub/mobileads/o;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 443
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/mopub/mobileads/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 447
    invoke-virtual {p1}, Lcom/mopub/mobileads/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    .line 449
    :cond_1
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 450
    invoke-virtual {p1}, Lcom/mopub/mobileads/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    .line 452
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->isCustomForceOrientationSet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 453
    invoke-virtual {p1}, Lcom/mopub/mobileads/o;->g()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V

    .line 455
    :cond_3
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 785
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 789
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 790
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/mopub/mobileads/o;Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/d;",
            ">;",
            "Lcom/mopub/mobileads/o;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 474
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/mopub/mobileads/o;->b()Lcom/mopub/mobileads/VastTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p2}, Lcom/mopub/mobileads/o;->b()Lcom/mopub/mobileads/VastTracker;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    :goto_0
    invoke-static {v1, v0, v2, v2, p3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 482
    const/4 v0, 0x1

    .line 484
    :goto_1
    return v0

    .line 476
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_0

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 800
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 802
    iget v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 803
    iget v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:I

    .line 808
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 809
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 811
    :try_start_2
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 813
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 814
    if-eqz v2, :cond_0

    .line 815
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 820
    :cond_0
    return-object v0

    .line 813
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_0
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 814
    if-eqz v2, :cond_1

    .line 815
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    .line 813
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a(IILcom/mopub/mobileads/l$b;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Landroid/graphics/Point;
    .locals 9
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 659
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 660
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 663
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 665
    int-to-float v2, p1

    iget-object v4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 666
    int-to-float v2, p2

    iget-object v5, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v5

    .line 669
    sget-object v2, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    if-ne v2, p4, :cond_0

    .line 670
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 671
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v2

    move v2, v0

    .line 678
    :goto_0
    add-int/lit8 v0, v3, -0x10

    if-gt v4, v0, :cond_1

    add-int/lit8 v0, v2, -0x10

    if-gt v5, v0, :cond_1

    move-object v0, v1

    .line 710
    :goto_1
    return-object v0

    .line 673
    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 674
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 683
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 684
    sget-object v6, Lcom/mopub/mobileads/l$b;->HTML_RESOURCE:Lcom/mopub/mobileads/l$b;

    if-ne v6, p3, :cond_3

    .line 685
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 686
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 700
    :goto_2
    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, -0x10

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 701
    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x10

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 703
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_2

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-gez v2, :cond_5

    :cond_2
    move-object v0, v1

    .line 704
    goto :goto_1

    .line 688
    :cond_3
    int-to-float v6, v4

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 689
    int-to-float v7, v5

    int-to-float v8, v2

    div-float/2addr v7, v8

    .line 691
    cmpl-float v8, v6, v7

    if-ltz v8, :cond_4

    .line 692
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 693
    int-to-float v2, v5

    div-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 695
    :cond_4
    int-to-float v3, v4

    div-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 696
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 707
    :cond_5
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 708
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method a(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 22
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/f;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$a;",
            ")",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;"
        }
    .end annotation

    .prologue
    .line 527
    const-string v4, "managers cannot be null"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    const-string v4, "orientation cannot be null"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 532
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 533
    const/4 v9, 0x0

    .line 534
    const/4 v8, 0x0

    .line 535
    const/4 v6, 0x0

    .line 538
    invoke-static {}, Lcom/mopub/mobileads/l$b;->values()[Lcom/mopub/mobileads/l$b;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    move v14, v4

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_5

    aget-object v18, v16, v14

    .line 539
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 541
    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/f;

    .line 544
    invoke-virtual {v4}, Lcom/mopub/mobileads/f;->a()Ljava/lang/Integer;

    move-result-object v10

    .line 545
    invoke-virtual {v4}, Lcom/mopub/mobileads/f;->b()Ljava/lang/Integer;

    move-result-object v11

    .line 546
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x12c

    if-lt v5, v7, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xfa

    if-lt v5, v7, :cond_0

    .line 551
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v5, v7, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(IILcom/mopub/mobileads/l$b;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Landroid/graphics/Point;

    move-result-object v5

    .line 552
    invoke-virtual {v4}, Lcom/mopub/mobileads/f;->d()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v7

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v7, v0, v1, v2}, Lcom/mopub/mobileads/l;->a(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/l$b;II)Lcom/mopub/mobileads/l;

    move-result-object v7

    .line 555
    if-eqz v7, :cond_0

    .line 560
    sget-object v20, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 561
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(II)D

    move-result-wide v10

    .line 565
    :goto_2
    cmpg-double v20, v10, v12

    if-gez v20, :cond_6

    move-object v6, v4

    move-wide v8, v10

    move-object v4, v5

    move-object v5, v7

    :goto_3
    move-wide v12, v8

    move-object v8, v5

    move-object v9, v6

    move-object v6, v4

    .line 571
    goto :goto_1

    .line 563
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(II)D

    move-result-wide v10

    goto :goto_2

    .line 572
    :cond_2
    if-eqz v9, :cond_3

    move-object v7, v8

    move-object v10, v9

    .line 577
    :goto_4
    if-eqz v10, :cond_4

    .line 578
    new-instance v4, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v5, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Lcom/mopub/mobileads/f;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/mopub/mobileads/f;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v10}, Lcom/mopub/mobileads/f;->g()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/l;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 587
    :goto_5
    return-object v4

    .line 538
    :cond_3
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto/16 :goto_0

    .line 587
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    move-object v7, v8

    move-object v10, v9

    goto :goto_4

    :cond_6
    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-wide v8, v12

    goto :goto_3
.end method

.method a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 8
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 166
    const-string v0, "vastXml cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const-string v0, "errorTrackers cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v3, Lcom/mopub/mobileads/o;

    invoke-direct {v3}, Lcom/mopub/mobileads/o;-><init>()V

    .line 171
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/mopub/mobileads/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-virtual {v3}, Lcom/mopub/mobileads/o;->a()Ljava/util/List;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-direct {p0, v0, v3, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/util/List;Lcom/mopub/mobileads/o;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 281
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v2, "Failed to parse VAST XML"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-static {p2, v0, v1, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    move-object v0, v1

    .line 176
    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/d;

    .line 187
    invoke-virtual {v0}, Lcom/mopub/mobileads/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/mopub/mobileads/d;->a()Lcom/mopub/mobileads/h;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_2

    .line 195
    invoke-direct {p0, v2, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/h;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_2

    .line 199
    invoke-direct {p0, v3, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/o;Lcom/mopub/mobileads/VastVideoConfig;)V

    move-object v0, v2

    .line 200
    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/mobileads/d;->b()Lcom/mopub/mobileads/n;

    move-result-object v5

    .line 207
    if-eqz v5, :cond_1

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    invoke-virtual {v5}, Lcom/mopub/mobileads/n;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-direct {p0, v5, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/n;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0, v2, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v5}, Lcom/mopub/mobileads/n;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 231
    invoke-virtual {v5}, Lcom/mopub/mobileads/n;->c()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/i;

    .line 234
    invoke-direct {p0, v0, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/i;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_1

    .line 236
    :cond_3
    invoke-direct {p0, v5, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/e;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 238
    invoke-virtual {v5}, Lcom/mopub/mobileads/n;->d()Ljava/util/List;

    move-result-object v1

    .line 242
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 243
    sget-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    sget-object v4, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, v1, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 270
    :cond_4
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getSocialActionsCompanionAds()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 275
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/o;Lcom/mopub/mobileads/VastVideoConfig;)V

    move-object v0, v2

    .line 277
    goto/16 :goto_0

    .line 250
    :cond_6
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v4

    .line 252
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v5

    .line 254
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 255
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/f;

    .line 256
    invoke-virtual {v0}, Lcom/mopub/mobileads/f;->h()Z

    move-result v7

    if-nez v7, :cond_7

    .line 257
    invoke-virtual {v0}, Lcom/mopub/mobileads/f;->f()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 259
    invoke-virtual {v0}, Lcom/mopub/mobileads/f;->g()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 261
    invoke-virtual {v0}, Lcom/mopub/mobileads/f;->f()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 263
    invoke-virtual {v0}, Lcom/mopub/mobileads/f;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 281
    goto/16 :goto_0
.end method

.method protected varargs a([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 115
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    aget-object v1, p1, v2

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    const-string v2, "Unable to generate VastVideoConfig."

    invoke-static {v2, v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 490
    const-string v0, "managers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 493
    const/4 v2, 0x0

    .line 495
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 496
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/k;

    .line 499
    invoke-virtual {v0}, Lcom/mopub/mobileads/k;->c()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-virtual {v0}, Lcom/mopub/mobileads/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 501
    sget-object v4, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 502
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/mobileads/k;->a()Ljava/lang/Integer;

    move-result-object v3

    .line 507
    invoke-virtual {v0}, Lcom/mopub/mobileads/k;->b()Ljava/lang/Integer;

    move-result-object v0

    .line 508
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 512
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(II)D

    move-result-wide v4

    .line 513
    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    move-object v0, v1

    move-wide v2, v4

    :goto_1
    move-wide v6, v2

    move-object v2, v0

    .line 517
    goto :goto_0

    .line 519
    :cond_3
    return-object v2

    :cond_4
    move-object v0, v2

    move-wide v2, v6

    goto :goto_1
.end method

.method protected a(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 134
    :cond_0
    return-void
.end method

.method b(Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/f;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0x32

    .line 594
    const-string v0, "managers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 599
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/mopub/mobileads/f;

    .line 600
    invoke-virtual {v6}, Lcom/mopub/mobileads/f;->a()Ljava/lang/Integer;

    move-result-object v1

    .line 601
    invoke-virtual {v6}, Lcom/mopub/mobileads/f;->b()Ljava/lang/Integer;

    move-result-object v2

    .line 602
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v6}, Lcom/mopub/mobileads/f;->c()Ljava/lang/String;

    move-result-object v9

    .line 607
    const-string v0, "adsBy"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x19

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x4b

    if-gt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v11, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v10, :cond_0

    .line 622
    :cond_1
    invoke-virtual {v6}, Lcom/mopub/mobileads/f;->d()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v0

    sget-object v3, Lcom/mopub/mobileads/l$b;->HTML_RESOURCE:Lcom/mopub/mobileads/l$b;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/mopub/mobileads/l;->a(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/l$b;II)Lcom/mopub/mobileads/l;

    move-result-object v3

    .line 625
    if-eqz v3, :cond_0

    .line 629
    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6}, Lcom/mopub/mobileads/f;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/mopub/mobileads/f;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6}, Lcom/mopub/mobileads/f;->g()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/l;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 612
    :cond_2
    const-string v0, "socialActions"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v10, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x96

    if-gt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v11, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v10, :cond_1

    goto/16 :goto_0

    .line 639
    :cond_3
    return-object v7
.end method

.method c(Ljava/util/List;)Lcom/mopub/mobileads/g;
    .locals 11
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/g;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x12c

    .line 716
    const-string v0, "managers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 720
    invoke-static {}, Lcom/mopub/mobileads/l$b;->values()[Lcom/mopub/mobileads/l$b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v6, v3, v1

    .line 721
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 722
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/mopub/mobileads/VastIconXmlManager;

    .line 725
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 726
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->b()Ljava/lang/Integer;

    move-result-object v5

    .line 729
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v10, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v10, :cond_0

    .line 734
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->e()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v9, v6, v0, v5}, Lcom/mopub/mobileads/l;->a(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/l$b;II)Lcom/mopub/mobileads/l;

    move-result-object v5

    .line 737
    if-eqz v5, :cond_0

    .line 741
    new-instance v0, Lcom/mopub/mobileads/g;

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->f()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastIconXmlManager;->h()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/mopub/mobileads/g;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/l;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 753
    :goto_1
    return-object v0

    .line 720
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 753
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    return-void
.end method
