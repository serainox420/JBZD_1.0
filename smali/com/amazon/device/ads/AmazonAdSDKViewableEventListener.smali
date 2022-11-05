.class Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;
.super Ljava/lang/Object;
.source "AmazonAdSDKViewableEventListener.java"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener$1;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 26
    return-void
.end method


# virtual methods
.method public handleViewableEvent(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/SDKEvent;)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "VIEWABLE_PARAMS"

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/SDKEvent;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewableBridge.viewabilityChange(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener$1;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 39
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;->handleViewableEvent(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/SDKEvent;)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
