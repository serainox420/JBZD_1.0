.class public Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;
.super Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.source "PubMaticBannerAdRequest.java"


# instance fields
.field private mDefaultedAdNetworkId:I

.field private mDefaultedCampaignId:I

.field private mPubAdSize:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field private mTimeoutInterval:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubAdSize:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 16
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mTimeoutInterval:I

    .line 24
    return-void
.end method

.method public static createPubMaticBannerAdRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->setPubId(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->setSiteId(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p3}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->setAdId(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public checkMandatoryParams()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mAdId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mSiteId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://showads.pubmatic.com/AdServer/AdServerServlet"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultedAdNetworkId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mDefaultedAdNetworkId:I

    return v0
.end method

.method public getDefaultedCampaignId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mDefaultedCampaignId:I

    return v0
.end method

.method public getFormatter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "com.pubmatic.sdk.banner.pubmatic.PubMaticBannerRRFormatter"

    return-object v0
.end method

.method public getPubAdSize()Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubAdSize:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    return-object v0
.end method

.method public getTimeoutInterval()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mTimeoutInterval:I

    return v0
.end method

.method protected initializeDefaultParams(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->initializeDefaultParams(Landroid/content/Context;)V

    .line 50
    const-string v0, "operId"

    const-string v1, "201"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setAdRefreshRate(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mAdRefreshRate:I

    .line 83
    return-void
.end method

.method public setAdSize(Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->setPubAdSize(Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;)V

    .line 90
    return-void
.end method

.method public setAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 120
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pubId"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubId:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    const-string v1, "siteId"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mSiteId:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    const-string v1, "adId"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mAdId:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    const-string v1, "adWidth"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->setWidth(I)V

    .line 138
    :cond_2
    const/4 v0, 0x0

    const-string v1, "adHeight"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDefaultedAdNetworkId(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mDefaultedAdNetworkId:I

    .line 98
    return-void
.end method

.method public setDefaultedCampaignId(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mDefaultedCampaignId:I

    .line 106
    return-void
.end method

.method public setPubAdSize(Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubAdSize:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 162
    return-void
.end method

.method public setTimeoutInterval(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mTimeoutInterval:I

    .line 176
    return-void
.end method

.method protected setupPostData()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;->setupPostData()V

    .line 56
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPostData:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPostData:Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubAdSize:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "kadheight"

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubAdSize:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->getAdHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "kadwidth"

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->mPubAdSize:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->getAdWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "kadwidth"

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "kadheight"

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
