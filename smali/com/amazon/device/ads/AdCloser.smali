.class Lcom/amazon/device/ads/AdCloser;
.super Ljava/lang/Object;
.source "AdCloser.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private final isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/amazon/device/ads/AdCloser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdCloser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdCloser;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    .line 27
    sget-object v0, Lcom/amazon/device/ads/AdCloser;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdCloser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 28
    return-void
.end method


# virtual methods
.method public closeAd()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 35
    iget-object v2, p0, Lcom/amazon/device/ads/AdCloser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Ad is attempting to close."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    iget-object v2, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/device/ads/AdControlCallback;->adClosing()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v1

    move v3, v1

    .line 57
    :goto_0
    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    new-instance v4, Lcom/amazon/device/ads/SDKEvent;

    sget-object v5, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-direct {v4, v5}, Lcom/amazon/device/ads/SDKEvent;-><init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/AdController;->fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V

    .line 64
    :goto_1
    if-eqz v3, :cond_0

    .line 66
    iget-object v2, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->resetToReady()V

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    :goto_2
    return v0

    :pswitch_0
    move v2, v0

    move v3, v0

    .line 49
    goto :goto_0

    :pswitch_1
    move v2, v0

    move v3, v1

    .line 52
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
