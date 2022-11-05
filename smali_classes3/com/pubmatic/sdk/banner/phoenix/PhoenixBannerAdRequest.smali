.class public Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;
.super Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;
.source "PhoenixBannerAdRequest.java"


# instance fields
.field private mAdHeight:I

.field private mAdWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdWidth:I

    .line 17
    iput v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdHeight:I

    .line 22
    return-void
.end method

.method public static createPhoenixBannerAdRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->setAdUnitId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->setImpressionId(Ljava/lang/String;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public checkMandatoryParams()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mImpressionId:Ljava/lang/String;

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

.method public copyRequestParams(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdHeight:I

    return v0
.end method

.method public getAdServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://192.82.243.86:8090/ad"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdWidth:I

    return v0
.end method

.method public getFormatter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.pubmatic.sdk.banner.phoenix.PhoenixBannerRRFormatter"

    return-object v0
.end method

.method protected initializeDefaultParams(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->initializeDefaultParams(Landroid/content/Context;)V

    .line 50
    const-string v0, "o"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "res_format"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setAdHeight(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdHeight:I

    .line 131
    return-void
.end method

.method public setAdWidth(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdWidth:I

    .line 123
    return-void
.end method

.method public setAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "impressionId"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mImpressionId:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    const-string v1, "adWidth"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdWidth:I

    .line 92
    const/4 v0, 0x0

    const-string v1, "adHeight"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdHeight:I

    .line 95
    const/4 v0, 0x0

    const-string v1, "adUnitId"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdUnitId:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    const-string v1, "adWidth"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->setWidth(I)V

    .line 104
    :cond_2
    const/4 v0, 0x0

    const-string v1, "adHeight"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setupPostData()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;->setupPostData()V

    .line 58
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mPostData:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mPostData:Ljava/lang/StringBuffer;

    .line 62
    :cond_0
    iget v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdWidth:I

    if-lez v0, :cond_2

    .line 63
    const-string v0, "asz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->mAdHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    :goto_0
    const-string v0, "req_type"

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->getAdHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 65
    const-string v0, "asz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->getAdHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
