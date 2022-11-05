.class Lcom/amazon/device/ads/AAXParameter$DeviceInfoParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceInfoParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "dinfo"

    const-string v1, "debug.dinfo"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$DeviceInfoParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$300(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest;->getOrientation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DeviceInfo;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
