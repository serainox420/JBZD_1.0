.class Lcom/amazon/device/ads/MRAIDAdSDKEventListener;
.super Ljava/lang/Object;
.source "MRAIDAdSDKEventListener.java"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/MRAIDAdSDKEventListener;)Lcom/amazon/device/ads/MRAIDAdSDKBridge;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    return-object v0
.end method

.method private handleBridgeAddedEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2

    .prologue
    .line 87
    const-string v0, "bridgeName"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/SDKEvent;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$AdState:[I

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleShowingEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 95
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleDefaultEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 96
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleDefaultEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 102
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleClosedEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAd(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "mraidBridge.stateChange(\'hidden\');"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 155
    const-string v0, "mraidBridge.viewableChange(\'false\');"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleDefaultEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 1

    .prologue
    .line 142
    const-string v0, "mraidBridge.stateChange(\'default\');"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "mraidBridge.ready();"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private handleShowingEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKEventListener;Lcom/amazon/device/ads/AdControlAccessor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 137
    return-void
.end method

.method private handleViewableEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 3

    .prologue
    .line 81
    const-string v0, "IS_VIEWABLE"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/SDKEvent;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraidBridge.viewableChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleDefaultEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 48
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleShowingEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 52
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleDefaultEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleClosedEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    goto :goto_0

    .line 66
    :pswitch_5
    const-string v0, "mraidBridge.stateChange(\'hidden\');"

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleBridgeAddedEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 72
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleViewableEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
