.class public abstract Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.super Lcom/pubmatic/sdk/common/AdRequest;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$FORMAT_KEY;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;,
        Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;
    }
.end annotation


# instance fields
.field private mAWT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;

.field protected mAdHeight:I

.field protected mAdId:Ljava/lang/String;

.field protected mAdNetwork:Ljava/lang/String;

.field protected mAdOrientation:Ljava/lang/String;

.field protected mAdRefreshRate:I

.field protected mAdType:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field protected mAdVisibility:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

.field protected mAdWidth:I

.field protected mAid:Ljava/lang/String;

.field protected mAppCategory:Ljava/lang/String;

.field protected mAppDomain:Ljava/lang/String;

.field protected mAppName:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCoppa:Z

.field private mCountry:Ljava/lang/String;

.field private mDMA:Ljava/lang/String;

.field private mDoNotTrack:Z

.field private mEthnicity:Ljava/lang/String;

.field private mGender:Ljava/lang/String;

.field protected mIABCategory:Ljava/lang/String;

.field protected mInIFrame:Z

.field private mIncome:Ljava/lang/String;

.field private mKeywordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLanguage:Ljava/lang/String;

.field protected mNetworkType:Ljava/lang/String;

.field protected mOrmmaComplianceLevel:I

.field protected mPMZoneId:Ljava/lang/String;

.field protected mPaid:Z

.field protected mPubId:Ljava/lang/String;

.field protected mRs:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

.field protected mSiteId:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field protected mStoreURL:Ljava/lang/String;

.field private mYearOfBirth:Ljava/lang/String;

.field private mZip:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/common/AdRequest;-><init>(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;Landroid/content/Context;)V

    .line 372
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCity:Ljava/lang/String;

    .line 373
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mZip:Ljava/lang/String;

    .line 374
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mDMA:Ljava/lang/String;

    .line 375
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mEthnicity:Ljava/lang/String;

    .line 376
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mGender:Ljava/lang/String;

    .line 378
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCountry:Ljava/lang/String;

    .line 379
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mState:Ljava/lang/String;

    .line 380
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mYearOfBirth:Ljava/lang/String;

    .line 381
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mIncome:Ljava/lang/String;

    .line 382
    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public checkMandatoryParams()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public copyRequestParams(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;

    if-eqz v0, :cond_4

    .line 48
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdId:Ljava/lang/String;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPubId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPubId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPubId:Ljava/lang/String;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mSiteId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mSiteId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mSiteId:Ljava/lang/String;

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->getWidth()I

    move-result v0

    if-gtz v0, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->setWidth(I)V

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->getHeight()I

    move-result v0

    if-gtz v0, :cond_4

    .line 57
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->setHeight(I)V

    .line 59
    :cond_4
    return-void
.end method

.method public createRequest(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPostData:Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->initializeDefaultParams(Landroid/content/Context;)V

    .line 319
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->setupPostData()V

    .line 320
    return-void
.end method

.method public getAWT()Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAWT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdHeight:I

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdRefreshRate()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdRefreshRate:I

    return v0
.end method

.method public getAdServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://showads.pubmatic.com/AdServer/AdServerServlet"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdType()Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdType:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    return-object v0
.end method

.method public getAdVisibility()Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdVisibility:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdWidth:I

    return v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDMA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mDMA:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOrientation(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 751
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 752
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 753
    :cond_0
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIABCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mIABCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getIncome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mIncome:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 517
    if-nez v1, :cond_0

    .line 518
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 522
    goto :goto_0

    .line 520
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v1

    goto :goto_1

    .line 523
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    :cond_2
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getOrmmaComplianceLevel()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mOrmmaComplianceLevel:I

    return v0
.end method

.method public getPMZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPMZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getPubId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPubId:Ljava/lang/String;

    return-object v0
.end method

.method public getRs()Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mRs:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    return-object v0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mSiteId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mStoreURL:Ljava/lang/String;

    return-object v0
.end method

.method public getYearOfBirth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mYearOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method protected initializeDefaultParams(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public isApplicationPaid(Z)V
    .locals 0

    .prologue
    .line 723
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPaid:Z

    .line 724
    return-void
.end method

.method public isCoppa()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCoppa:Z

    return v0
.end method

.method public isDoNotTrack()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mDoNotTrack:Z

    return v0
.end method

.method public isInIFrame()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mInIFrame:Z

    return v0
.end method

.method public setAWT(Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAWT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;

    .line 672
    return-void
.end method

.method public setAdHeight(I)V
    .locals 0

    .prologue
    .line 607
    iput p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdHeight:I

    .line 608
    return-void
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdId:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setAdNetwork(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdNetwork:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public setAdOrientation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdOrientation:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public setAdRefreshRate(I)V
    .locals 0

    .prologue
    .line 731
    iput p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdRefreshRate:I

    .line 732
    return-void
.end method

.method public setAdType(Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdType:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    .line 600
    return-void
.end method

.method public setAdVisibility(Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdVisibility:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    .line 640
    return-void
.end method

.method public setAdWidth(I)V
    .locals 0

    .prologue
    .line 615
    iput p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdWidth:I

    .line 616
    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAid:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppCategory:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public setAppDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppDomain:Ljava/lang/String;

    .line 712
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppName:Ljava/lang/String;

    .line 688
    return-void
.end method

.method public abstract setAttributes(Landroid/util/AttributeSet;)V
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCity:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setCoppa(Z)V
    .locals 0

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCoppa:Z

    .line 664
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCountry:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setDMA(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mDMA:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setDoNotTrack(Z)V
    .locals 0

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mDoNotTrack:Z

    .line 656
    return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mEthnicity:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setIABCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mIABCategory:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setInIFrame(Z)V
    .locals 0

    .prologue
    .line 623
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mInIFrame:Z

    .line 624
    return-void
.end method

.method public setIncome(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mIncome:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLanguage:Ljava/lang/String;

    .line 772
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLocation:Landroid/location/Location;

    .line 763
    return-void
.end method

.method public setOrmmaComplianceLevel(I)V
    .locals 0

    .prologue
    .line 739
    iput p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mOrmmaComplianceLevel:I

    .line 740
    return-void
.end method

.method public setPMZoneId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPMZoneId:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public setPubId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPubId:Ljava/lang/String;

    .line 584
    return-void
.end method

.method public setRs(Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mRs:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    .line 592
    return-void
.end method

.method public setSiteId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mSiteId:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mState:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setStoreURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mStoreURL:Ljava/lang/String;

    .line 696
    return-void
.end method

.method public setYearOfBirth(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mYearOfBirth:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mZip:Ljava/lang/String;

    .line 392
    return-void
.end method

.method protected setupPostData()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-super {p0}, Lcom/pubmatic/sdk/common/AdRequest;->setupPostData()V

    .line 67
    const-string v0, "pubId"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPubId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "siteId"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mSiteId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "adId"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCustomParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 75
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {v0}, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->getInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    move-result-object v1

    .line 90
    :try_start_0
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceAcceptLanguage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "lang"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceAcceptLanguage:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_2
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "country"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceCountryCode:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_3
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mCarrierName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 105
    const-string v0, "carrier"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mCarrierName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_4
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceMake:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 112
    const-string v0, "make"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceMake:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_5
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceModel:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 119
    const-string v0, "model"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceModel:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_6
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 126
    const-string v0, "os"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_7
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSVersion:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 133
    const-string v0, "osv"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSVersion:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_8
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 139
    const-string v0, "name"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_9
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 145
    const-string v0, "bundle"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPackageName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_a
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 151
    const-string v0, "ver"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_b
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPageURL:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 157
    const-string v0, "pageURL"

    iget-object v4, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPageURL:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_c
    const-string v0, "js"

    sget v4, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mJavaScriptSupport:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "inIframe"

    sget v4, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mInIframe:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "adVisibility"

    sget v4, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mAdVisibility:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "adPosition"

    const-string v4, "-1x-1"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "aid"

    iget-object v4, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAid:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "cat"

    iget-object v4, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppCategory:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "nettype"

    iget-object v4, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->refreshAdvertisingInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1d

    .line 175
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->isAndoridAidEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 176
    const-string v4, "udid"

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v4, "udidtype"

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v4, "udidhash"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_d
    const-string v4, "dnt"

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1c

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_e
    :goto_2
    iget-object v0, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 194
    const-string v0, "ver"

    iget-object v1, v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_f
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mYearOfBirth:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 203
    const-string v0, "yob"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mYearOfBirth:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_10
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mGender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 210
    const-string v0, "gender"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mGender:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_11
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mZip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 216
    const-string v0, "zip"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mZip:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_12
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mIncome:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 222
    const-string v0, "userIncome"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mIncome:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_13
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mEthnicity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 229
    const-string v0, "userEnthnicity"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mEthnicity:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_14
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mKeywordsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 235
    const-string v0, "keywords"

    .line 236
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->getKeywordString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    .line 235
    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_15
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 243
    const-string v0, "state"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCity:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_16
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 250
    const-string v0, "city"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mState:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_17
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdOrientation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 258
    const-string v0, "adOrientation"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdOrientation:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_18
    const-string v0, "deviceOrientation"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "adRefreshRate"

    iget v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAdRefreshRate:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "msdkId"

    const-string v1, "2"

    const-string v4, "UTF-8"

    .line 268
    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "msdkVersion"

    const-string v1, "5.1.0"

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mNetworkType:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 277
    const-string v0, "nettype"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mNetworkType:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_19
    const-string v0, "adtype"

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "dnt"

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mDoNotTrack:Z

    if-eqz v0, :cond_1e

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "coppa"

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mCoppa:Z

    if-eqz v0, :cond_1f

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "storeurl"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mStoreURL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "paid"

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mPaid:Z

    if-eqz v0, :cond_20

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "appdomain"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAppDomain:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAWT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;

    if-eqz v0, :cond_1a

    .line 290
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$pubmatic$PubMaticAdRequest$AWT_OPTION:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mAWT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AWT_OPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    :cond_1a
    :goto_6
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1b

    .line 302
    const-string v0, "loc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLocation:Landroid/location/Location;

    .line 303
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "loc_source"

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mLocation:Landroid/location/Location;

    .line 306
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1b
    :goto_7
    return-void

    :cond_1c
    move v0, v3

    .line 184
    goto/16 :goto_1

    .line 185
    :cond_1d
    iget-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 187
    const-string v0, "udid"

    iget-object v4, p0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticUtils;->getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "udidtype"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "udidhash"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 310
    :catch_0
    move-exception v0

    goto :goto_7

    :cond_1e
    move v0, v3

    .line 282
    goto/16 :goto_3

    :cond_1f
    move v0, v3

    .line 283
    goto/16 :goto_4

    :cond_20
    move v0, v3

    .line 285
    goto/16 :goto_5

    .line 292
    :pswitch_0
    const-string v0, "awt"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 295
    :pswitch_1
    const-string v0, "awt"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
