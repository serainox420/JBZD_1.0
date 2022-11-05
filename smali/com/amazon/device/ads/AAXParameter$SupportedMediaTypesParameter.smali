.class Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SupportedMediaTypesParameter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 580
    const-string v0, "supportedMediaTypes"

    const-string v1, "debug.supportedMediaTypes"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private addDisplay(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 594
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->isDisplayAdsEnabled()Z

    move-result v0

    .line 595
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableDisplayAds"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "enableDisplayAds"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 600
    :cond_0
    if-eqz v0, :cond_1

    .line 602
    const-string v0, "DISPLAY"

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 604
    :cond_1
    return-void
.end method

.method private addVideo(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 607
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;-><init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->isVideoAdsEnabled()Z

    move-result v0

    .line 608
    if-eqz v0, :cond_0

    .line 610
    const-string v0, "VIDEO"

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 612
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 587
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;->addDisplay(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V

    .line 588
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;->addVideo(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V

    .line 589
    return-object v0
.end method
