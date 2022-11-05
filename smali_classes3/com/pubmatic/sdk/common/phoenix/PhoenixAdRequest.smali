.class public abstract Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;
.super Lcom/pubmatic/sdk/common/AdRequest;
.source "PhoenixAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;,
        Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;,
        Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$REQUEST_TYPE;,
        Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;
    }
.end annotation


# instance fields
.field protected mAWT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

.field protected mAdFloor:Ljava/lang/String;

.field protected mAdOrientation:Ljava/lang/String;

.field private mAdPosition:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

.field protected mAdRefreshRate:I

.field protected mAdTruth:Ljava/lang/String;

.field protected mAdUnitId:Ljava/lang/String;

.field protected mAid:Ljava/lang/String;

.field protected mAppCategory:Ljava/lang/String;

.field protected mAppDomain:Ljava/lang/String;

.field protected mBlockAdDomain:Ljava/lang/String;

.field protected mBlockAdIds:Ljava/lang/String;

.field protected mBlockCreativeAttr:Ljava/lang/String;

.field protected mBlockDomainIds:Ljava/lang/String;

.field protected mBlockIabCategory:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCoppa:Z

.field private mDebugEnable:Z

.field protected mIABCategory:Ljava/lang/String;

.field protected mImpressionId:Ljava/lang/String;

.field protected mPMZoneId:Ljava/lang/String;

.field protected mPaid:Z

.field private mRequestType:I

.field protected mSecureFlag:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

.field protected mSiteCode:Ljava/lang/String;

.field protected mStoreURL:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PHOENIX:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/common/AdRequest;-><init>(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;Landroid/content/Context;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mRequestType:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mDebugEnable:Z

    .line 29
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->UNKNOWN:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdPosition:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mIABCategory:Ljava/lang/String;

    .line 370
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;->DEFAULT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAWT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    .line 371
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->DEFAULT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSecureFlag:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    .line 95
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method


# virtual methods
.method public checkMandatoryParams()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public copyRequestParams(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 1

    .prologue
    .line 115
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 117
    check-cast v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdUnitId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdUnitId:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mImpressionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mImpressionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mImpressionId:Ljava/lang/String;

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->getWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 121
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->setWidth(I)V

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->getHeight()I

    move-result v0

    if-gtz v0, :cond_3

    .line 123
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->setHeight(I)V

    .line 125
    :cond_3
    return-void
.end method

.method public createRequest(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mPostData:Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->initializeDefaultParams(Landroid/content/Context;)V

    .line 348
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->setupPostData()V

    .line 349
    return-void
.end method

.method public getAWT()Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAWT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    return-object v0
.end method

.method public getAdFloor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdFloor:Ljava/lang/String;

    return-object v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPosition()Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdPosition:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    return-object v0
.end method

.method public getAdRefreshRate()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdRefreshRate:I

    return v0
.end method

.method public getAdServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://192.82.243.86:8090/ad"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdTruth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdTruth:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockAdDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockAdIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdIds:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockCreativeAttr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockCreativeAttr:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDomainIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockDomainIds:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockIabCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockIabCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOrientation(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 353
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 354
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIABCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mIABCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mImpressionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPMZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mPMZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mRequestType:I

    return v0
.end method

.method public getSecureFlag()Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSecureFlag:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    return-object v0
.end method

.method public getSiteCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSiteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mStoreURL:Ljava/lang/String;

    return-object v0
.end method

.method protected initializeDefaultParams(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public isApplicationPaid(Z)V
    .locals 0

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mPaid:Z

    .line 528
    return-void
.end method

.method public isCoppa()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mCoppa:Z

    return v0
.end method

.method public isDebugEnable()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mDebugEnable:Z

    return v0
.end method

.method public setAWT(Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAWT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    .line 484
    return-void
.end method

.method public setAdFloor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdFloor:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setAdOrientation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdOrientation:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public setAdPosition(Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdPosition:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    .line 37
    return-void
.end method

.method public setAdRefreshRate(I)V
    .locals 0

    .prologue
    .line 535
    iput p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdRefreshRate:I

    .line 536
    return-void
.end method

.method public setAdTruth(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdTruth:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdUnitId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAid:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppCategory:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setAppDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppDomain:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public abstract setAttributes(Landroid/util/AttributeSet;)V
.end method

.method public setBlockAdDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdDomain:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setBlockAdIds(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdIds:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setBlockCreativeAttr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockCreativeAttr:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setBlockDomainIds(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockDomainIds:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setBlockIabCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockIabCategory:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setCoppa(Z)V
    .locals 0

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mCoppa:Z

    .line 476
    return-void
.end method

.method public setDebugEnable(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mDebugEnable:Z

    .line 45
    return-void
.end method

.method public setIABCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mIABCategory:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setImpressionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mImpressionId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPMZoneId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mPMZoneId:Ljava/lang/String;

    .line 492
    return-void
.end method

.method protected setRequestType(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mRequestType:I

    .line 79
    return-void
.end method

.method public setSecureFlag(Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSecureFlag:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    .line 395
    return-void
.end method

.method public setSiteCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSiteCode:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setStoreURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mStoreURL:Ljava/lang/String;

    .line 500
    return-void
.end method

.method protected setupPostData()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    invoke-super {p0}, Lcom/pubmatic/sdk/common/AdRequest;->setupPostData()V

    .line 132
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mCustomParams:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 135
    const/4 v2, 0x0

    .line 136
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 139
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 140
    if-nez v2, :cond_1

    .line 141
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 145
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 143
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 149
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 154
    :cond_3
    const-string v0, "gkv"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_4
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$PM_AD_POSITION:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdPosition:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    const-string v0, "d"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_5
    const-string v0, "src"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->getInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    move-result-object v0

    .line 177
    :try_start_0
    const-string v1, "au"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "iid"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mImpressionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "rndn"

    invoke-static {}, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->getRandomNumber()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "kltstamp"

    invoke-static {}, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPageURL:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 184
    const-string v1, "purl"

    iget-object v2, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPageURL:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "scrn"

    iget-object v2, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mDeviceScreenResolution:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "tz"

    invoke-static {}, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->getTimeZoneOffset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_6
    const-string v1, "iifr"

    sget v2, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mInIframe:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_7

    .line 197
    const-string v1, "lat"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mLocation:Landroid/location/Location;

    .line 198
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "lon"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mLocation:Landroid/location/Location;

    .line 200
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "lsrc"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mLocation:Landroid/location/Location;

    .line 202
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_7
    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mIABCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 207
    const-string v1, "iabcat"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mIABCategory:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_8
    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 210
    const-string v1, "aid"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAid:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_9
    iget-object v1, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mCarrierName:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 214
    const-string v1, "carrier"

    iget-object v2, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mCarrierName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_a
    iget-object v1, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 220
    const-string v1, "aname"

    iget-object v2, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_b
    iget-object v1, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 226
    const-string v1, "bundle"

    iget-object v2, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPackageName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_c
    iget-object v1, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 232
    const-string v1, "aver"

    iget-object v0, v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_d
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->refreshAdvertisingInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_20

    .line 242
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->isAndoridAidEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 243
    const-string v1, "udid"

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "udidtype"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "udidhash"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_e
    const-string v1, "dnt"

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1f

    move v0, v3

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_f
    :goto_4
    const-string v0, "js"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "api"

    const-string v1, "3::4::5"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "nettype"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mStoreURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 265
    const-string v0, "storeurl"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mStoreURL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_10
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAWT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    if-eqz v0, :cond_11

    .line 270
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$AWT_OPTION:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAWT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 280
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSecureFlag:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    if-eqz v0, :cond_12

    .line 281
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$SECURE_FLAG:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSecureFlag:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 292
    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdOrientation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 293
    const-string v0, "adOrientation"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdOrientation:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_13
    const-string v0, "deviceOrientation"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mPMZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 299
    const-string v0, "pmZoneId"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mPMZoneId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_14
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 302
    const-string v0, "acat"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppCategory:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_15
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 305
    const-string v0, "appdomain"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAppDomain:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_16
    const-string v1, "apaid"

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mPaid:Z

    if-eqz v0, :cond_21

    move v0, v3

    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSiteCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 310
    const-string v0, "sitecode"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mSiteCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_17
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdTruth:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 313
    const-string v0, "at_payload"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdTruth:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_18
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdFloor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 316
    const-string v0, "kadfloor"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mAdFloor:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_19
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockCreativeAttr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 319
    const-string v0, "battr"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockCreativeAttr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_1a
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 322
    const-string v0, "blkadvtdmns"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdDomain:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_1b
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockIabCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 326
    const-string v0, "blkiabcats"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockIabCategory:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1c
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 330
    const-string v0, "blkadvtids"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockAdIds:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1d
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockDomainIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 334
    const-string v0, "blkdmns"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mBlockDomainIds:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_1e
    const-string v1, "coppa"

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mCoppa:Z

    if-ne v0, v3, :cond_22

    move v0, v3

    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_9
    return-void

    .line 159
    :pswitch_0
    const-string v0, "visi"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 162
    :pswitch_1
    const-string v0, "visi"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 165
    :pswitch_2
    const-string v0, "visi"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1f
    move v0, v4

    .line 251
    goto/16 :goto_3

    .line 252
    :cond_20
    :try_start_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 254
    const-string v0, "udid"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixUtils;->getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "udidtype"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "udidhash"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 338
    :catch_0
    move-exception v0

    goto :goto_9

    .line 272
    :pswitch_3
    const-string v0, "awt"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 275
    :pswitch_4
    const-string v0, "awt"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 283
    :pswitch_5
    const-string v0, "sec"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 286
    :pswitch_6
    const-string v0, "sec"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_21
    move v0, v4

    .line 307
    goto/16 :goto_7

    :cond_22
    move v0, v4

    .line 336
    goto/16 :goto_8

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 281
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
