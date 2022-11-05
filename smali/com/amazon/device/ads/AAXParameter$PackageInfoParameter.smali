.class Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInfoParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "pkg"

    const-string v1, "debug.pkg"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getAppInfo()Lcom/amazon/device/ads/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AppInfo;->getPackageInfoJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
