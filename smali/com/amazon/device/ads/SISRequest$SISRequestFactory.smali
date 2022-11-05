.class Lcom/amazon/device/ads/SISRequest$SISRequestFactory;
.super Ljava/lang/Object;
.source "SISRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SISRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SISRequestFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeviceRequest(Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;Lcom/amazon/device/ads/AdvertisingIdentifier;)Lcom/amazon/device/ads/SISDeviceRequest;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/amazon/device/ads/SISRequest$1;->$SwitchMap$com$amazon$device$ads$SISRequest$SISDeviceRequestType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SISRequestType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a SISDeviceRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    new-instance v0, Lcom/amazon/device/ads/SISGenerateDIDRequest;

    invoke-direct {v0, p2}, Lcom/amazon/device/ads/SISGenerateDIDRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;)V

    .line 77
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;

    invoke-direct {v0, p2}, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createRegisterEventRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)Lcom/amazon/device/ads/SISRegisterEventRequest;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/amazon/device/ads/SISRegisterEventRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/SISRegisterEventRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)V

    return-object v0
.end method
