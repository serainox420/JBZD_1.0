.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetPlacementTypeJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetPlacementType"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1470
    const-string v0, "GetPlacementType"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1471
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1472
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1477
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1478
    const-string v1, "placementType"

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    return-object v0
.end method
