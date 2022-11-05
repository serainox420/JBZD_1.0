.class public Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;
.super Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;
.source "MoceanBannerAdRequest.java"


# instance fields
.field private mCreativeCode:Ljava/lang/String;

.field private test:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->test:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mCreativeCode:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static createMoceanBannerAdRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->setZoneId(Ljava/lang/String;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public checkMandatoryParams()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mZoneId:Ljava/lang/String;

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
    .line 34
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://ads.moceanads.com/ad"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreativeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mCreativeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "com.pubmatic.sdk.banner.mocean.MoceanBannerRRFormatter"

    return-object v0
.end method

.method protected initializeDefaultParams(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 42
    const-string v0, "count"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "key"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "version"

    const-string v1, "5.1.0"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->test:Z

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "test"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mCreativeCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "creativecode"

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mCreativeCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    :try_start_0
    const-string v0, "phone"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 58
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 59
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v2, "mcc"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "mnc"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_2
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain mcc and mnc. Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->test:Z

    return v0
.end method

.method public setAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "zone"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mZoneId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCreativeCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->mCreativeCode:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->setHeight(I)V

    .line 74
    return-void
.end method

.method public setTest(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->test:Z

    .line 92
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->setWidth(I)V

    .line 70
    return-void
.end method

.method protected setupPostData()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;->setupPostData()V

    .line 125
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    const-string v0, "size_x"

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    const-string v0, "size_y"

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->putPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    return-void
.end method
