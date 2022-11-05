.class Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;
.super Ljava/lang/Object;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoAdsEnabledChecker"
.end annotation


# instance fields
.field private final parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .line 667
    return-void
.end method


# virtual methods
.method public isVideoAdsEnabled()Z
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoEnabledSettable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "enableVideoAds"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "enableVideoAds"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableVideoAds"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "enableVideoAds"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "enableVideoAds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoAdsEnabled()Z

    move-result v0

    goto :goto_0
.end method
