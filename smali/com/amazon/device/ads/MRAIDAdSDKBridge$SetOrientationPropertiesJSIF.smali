.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetOrientationPropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SetOrientationProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1489
    const-string v0, "SetOrientationProperties"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1490
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1491
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setOrientationProperties(Lorg/json/JSONObject;)V

    .line 1497
    const/4 v0, 0x0

    return-object v0
.end method
