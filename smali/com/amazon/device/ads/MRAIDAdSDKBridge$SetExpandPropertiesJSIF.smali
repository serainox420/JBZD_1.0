.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetExpandPropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SetExpandProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1524
    const-string v0, "SetExpandProperties"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1525
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1526
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setExpandProperties(Lorg/json/JSONObject;)V

    .line 1532
    const/4 v0, 0x0

    return-object v0
.end method
