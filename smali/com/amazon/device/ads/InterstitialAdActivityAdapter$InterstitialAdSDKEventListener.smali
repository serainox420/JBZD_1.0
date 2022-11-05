.class Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;
.super Ljava/lang/Object;
.source "InterstitialAdActivityAdapter.java"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/InterstitialAdActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterstitialAdSDKEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;->this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;->this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    invoke-static {v0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->access$000(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)V

    .line 179
    :cond_0
    return-void
.end method
