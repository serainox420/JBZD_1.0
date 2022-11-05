.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetScreenSizeJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetScreenSize"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1453
    const-string v0, "GetScreenSize"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1454
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1455
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getScreenSize()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
