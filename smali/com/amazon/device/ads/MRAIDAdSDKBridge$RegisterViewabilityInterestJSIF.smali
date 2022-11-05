.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$RegisterViewabilityInterestJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegisterViewabilityInterestJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "RegisterViewabilityInterest"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1765
    const-string v0, "RegisterViewabilityInterest"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1766
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$RegisterViewabilityInterestJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1767
    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$RegisterViewabilityInterestJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    .line 1773
    const/4 v0, 0x0

    return-object v0
.end method
