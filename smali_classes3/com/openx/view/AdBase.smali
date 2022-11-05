.class public Lcom/openx/view/AdBase;
.super Landroid/widget/FrameLayout;
.source "AdBase.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/SDKInitListener;
.implements Lcom/openx/model/network/AdModelLoadedListener;
.implements Lcom/openx/view/video/PreloadManager$PreloadedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdBase"

.field public static fade:J


# instance fields
.field private final DEFAULT_INTERVAL:I

.field private final MAX_INTERVAL:I

.field private final MIN_INTERVAL:I

.field ad1:Lcom/openx/view/WebViewBanner;

.field ad2:Lcom/openx/view/WebViewBanner;

.field protected adEventsListener:Lcom/openx/view/AdEventsListener;

.field protected adModel:Lcom/openx/model/AdModel;

.field protected adModelRequests:I

.field protected adModelResponses:I

.field protected adPreloads:I

.field protected adRequest:Lcom/openx/core/network/OXAdRequest;

.field protected adType:Lcom/openx/model/AdType;

.field protected auid:Ljava/lang/String;

.field protected autoStartLoading:Z

.field private availableTpSDK:Ljava/lang/String;

.field protected chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

.field protected context:Landroid/content/Context;

.field private currentTimerTask:Ljava/util/TimerTask;

.field private currentTimerTaskHash:I

.field protected currentUUID:Ljava/util/UUID;

.field protected domain:Ljava/lang/String;

.field protected fadeInAnimation:Landroid/view/animation/Animation;

.field protected fadeOutAnimation:Landroid/view/animation/Animation;

.field protected handler:Landroid/os/Handler;

.field private hasStartedLoading:Z

.field protected interval:I

.field protected isPaused:Z

.field private lastLoaded:J

.field protected layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field public loadCalled:Z

.field protected numRequests:I

.field protected screenOn:Z

.field protected ssmHeight:Ljava/lang/String;

.field protected ssmWidth:Ljava/lang/String;

.field protected timer:Ljava/util/Timer;

.field protected type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/openx/view/AdBase;->fade:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const v1, 0xea60

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    .line 58
    const v0, 0x1d4c0

    iput v0, p0, Lcom/openx/view/AdBase;->MAX_INTERVAL:I

    .line 59
    iput v1, p0, Lcom/openx/view/AdBase;->DEFAULT_INTERVAL:I

    .line 60
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/openx/view/AdBase;->MIN_INTERVAL:I

    .line 61
    iput v1, p0, Lcom/openx/view/AdBase;->interval:I

    .line 65
    iput v2, p0, Lcom/openx/view/AdBase;->numRequests:I

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    .line 71
    iput v2, p0, Lcom/openx/view/AdBase;->adPreloads:I

    .line 75
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 79
    iput v2, p0, Lcom/openx/view/AdBase;->currentTimerTaskHash:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    .line 82
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    .line 538
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->loadCalled:Z

    .line 868
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 870
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 143
    iput-object p1, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Lcom/openx/view/AdBase;->initBase()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v1, 0xea60

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    .line 58
    const v0, 0x1d4c0

    iput v0, p0, Lcom/openx/view/AdBase;->MAX_INTERVAL:I

    .line 59
    iput v1, p0, Lcom/openx/view/AdBase;->DEFAULT_INTERVAL:I

    .line 60
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/openx/view/AdBase;->MIN_INTERVAL:I

    .line 61
    iput v1, p0, Lcom/openx/view/AdBase;->interval:I

    .line 65
    iput v2, p0, Lcom/openx/view/AdBase;->numRequests:I

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    .line 71
    iput v2, p0, Lcom/openx/view/AdBase;->adPreloads:I

    .line 75
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 79
    iput v2, p0, Lcom/openx/view/AdBase;->currentTimerTaskHash:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    .line 82
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    .line 538
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->loadCalled:Z

    .line 868
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 870
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 105
    iput-object p1, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {p0, p2}, Lcom/openx/view/AdBase;->reflectAttrs(Landroid/util/AttributeSet;)V

    .line 107
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const v1, 0xea60

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    .line 58
    const v0, 0x1d4c0

    iput v0, p0, Lcom/openx/view/AdBase;->MAX_INTERVAL:I

    .line 59
    iput v1, p0, Lcom/openx/view/AdBase;->DEFAULT_INTERVAL:I

    .line 60
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/openx/view/AdBase;->MIN_INTERVAL:I

    .line 61
    iput v1, p0, Lcom/openx/view/AdBase;->interval:I

    .line 65
    iput v2, p0, Lcom/openx/view/AdBase;->numRequests:I

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    .line 71
    iput v2, p0, Lcom/openx/view/AdBase;->adPreloads:I

    .line 75
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 79
    iput v2, p0, Lcom/openx/view/AdBase;->currentTimerTaskHash:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    .line 82
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    .line 538
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->loadCalled:Z

    .line 868
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 870
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 96
    iput-object p1, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {p0, p2}, Lcom/openx/view/AdBase;->reflectAttrs(Landroid/util/AttributeSet;)V

    .line 98
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const v1, 0xea60

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    .line 58
    const v0, 0x1d4c0

    iput v0, p0, Lcom/openx/view/AdBase;->MAX_INTERVAL:I

    .line 59
    iput v1, p0, Lcom/openx/view/AdBase;->DEFAULT_INTERVAL:I

    .line 60
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/openx/view/AdBase;->MIN_INTERVAL:I

    .line 61
    iput v1, p0, Lcom/openx/view/AdBase;->interval:I

    .line 65
    iput v2, p0, Lcom/openx/view/AdBase;->numRequests:I

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    .line 71
    iput v2, p0, Lcom/openx/view/AdBase;->adPreloads:I

    .line 75
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 79
    iput v2, p0, Lcom/openx/view/AdBase;->currentTimerTaskHash:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    .line 82
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    .line 538
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->loadCalled:Z

    .line 868
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 870
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 113
    iput-object p1, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/openx/view/AdBase;->domain:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/openx/view/AdBase;->type:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 4

    .prologue
    const v1, 0xea60

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    .line 58
    const v0, 0x1d4c0

    iput v0, p0, Lcom/openx/view/AdBase;->MAX_INTERVAL:I

    .line 59
    iput v1, p0, Lcom/openx/view/AdBase;->DEFAULT_INTERVAL:I

    .line 60
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/openx/view/AdBase;->MIN_INTERVAL:I

    .line 61
    iput v1, p0, Lcom/openx/view/AdBase;->interval:I

    .line 65
    iput v2, p0, Lcom/openx/view/AdBase;->numRequests:I

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    .line 71
    iput v2, p0, Lcom/openx/view/AdBase;->adPreloads:I

    .line 75
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 79
    iput v2, p0, Lcom/openx/view/AdBase;->currentTimerTaskHash:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    .line 82
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    .line 538
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->loadCalled:Z

    .line 868
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 870
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 131
    iput-object p1, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/openx/view/AdBase;->domain:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/openx/view/AdBase;->type:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    .line 136
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->init()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/AdBase;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/openx/view/AdBase;->currentTimerTaskHash:I

    return v0
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    .line 376
    return-void
.end method

.method private createCurrentTimerTask()V
    .locals 1

    .prologue
    .line 623
    new-instance v0, Lcom/openx/view/AdBase$2;

    invoke-direct {v0, p0}, Lcom/openx/view/AdBase$2;-><init>(Lcom/openx/view/AdBase;)V

    iput-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    .line 656
    return-void
.end method

.method private initBase()V
    .locals 2

    .prologue
    .line 337
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V

    .line 339
    :cond_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/AdBase;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->prepare(Landroid/content/Context;)V

    .line 341
    return-void
.end method

.method public static renderAd(Lcom/openx/view/WebViewBase;Z)V
    .locals 4

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 924
    sget-wide v2, Lcom/openx/view/AdBase;->fade:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 926
    invoke-virtual {p0, v0}, Lcom/openx/view/WebViewBase;->startAnimation(Landroid/view/animation/Animation;)V

    .line 927
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/WebViewBase;->setVisibility(I)V

    .line 929
    if-eqz p1, :cond_0

    .line 931
    invoke-static {p0}, Lcom/openx/view/AdBase;->trackImpressionEvent(Lcom/openx/view/WebViewBase;)V

    .line 933
    :cond_0
    return-void
.end method

.method private renderPlacement(Lcom/openx/view/WebViewBase;II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 742
    .line 746
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 747
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 749
    if-ge v1, v0, :cond_2

    move v3, v1

    .line 750
    :goto_0
    if-le v1, v0, :cond_0

    move v0, v1

    .line 754
    :cond_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v1

    .line 756
    invoke-interface {v1}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getDeviceOrientation()I

    move-result v1

    .line 758
    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 760
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ge p2, v0, :cond_3

    .line 762
    int-to-float v0, v3

    mul-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 784
    :goto_1
    float-to-double v2, v0

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->densityScalingFactor()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 786
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->densityScalingFactor()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 788
    const-string v1, "factor > densityScalingFactor"

    invoke-static {p0, v1}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 791
    :cond_1
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/openx/view/WebViewBase;->setAdWidth(I)V

    .line 792
    int-to-float v1, p3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/openx/view/WebViewBase;->setAdHeight(I)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creative Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 795
    return-void

    :cond_2
    move v3, v0

    .line 749
    goto :goto_0

    .line 764
    :cond_3
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_4

    if-le p2, v0, :cond_4

    .line 766
    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1

    .line 768
    :cond_4
    if-ge p2, v0, :cond_5

    .line 769
    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1

    .line 771
    :cond_5
    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1

    .line 775
    :cond_6
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    if-ge p2, v3, :cond_7

    .line 778
    int-to-float v0, v3

    mul-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1

    .line 780
    :cond_7
    int-to-float v0, v3

    mul-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public static trackImpressionEvent(Lcom/openx/view/WebViewBase;)V
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdTracking;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_0
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/openx/view/WebViewBase;->getAdModel()Lcom/openx/model/AdModel;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_0

    .line 328
    const-string v2, "impression"

    invoke-virtual {v1, v2, v0}, Lcom/openx/model/AdModel;->trackAdModelEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adModelLoadAdFail(Lcom/openx/errors/AdError;)V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/openx/view/AdBase;->adEventsListener:Lcom/openx/view/AdEventsListener;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/openx/view/AdBase;->adEventsListener:Lcom/openx/view/AdEventsListener;

    invoke-interface {v0, p1}, Lcom/openx/view/AdEventsListener;->onAdFailedToLoad(Lcom/openx/errors/AdError;)V

    .line 849
    :cond_0
    return-void
.end method

.method public adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V
    .locals 1

    .prologue
    .line 828
    const-string v0, "Loaded AdModel Successfully"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 830
    iget v0, p0, Lcom/openx/view/AdBase;->adModelResponses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/AdBase;->adModelResponses:I

    .line 838
    return-void
.end method

.method public adModelNonCriticalError(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/openx/view/AdBase;->adEventsListener:Lcom/openx/view/AdEventsListener;

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "OX_NonCriticalError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonCriticalError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_0
    return-void
.end method

.method public displayAdViewPlacement(Lcom/openx/view/WebViewBase;)V
    .locals 4

    .prologue
    .line 807
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 810
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    .line 811
    const-string v1, "AdBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdBase: displayAdViewPlacement: (regular creative) width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/openx/view/AdBase;->renderPlacement(Lcom/openx/view/WebViewBase;II)V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_0

    .line 817
    const-string v0, "AdBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdBase: displayAdViewPlacement: chain width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v2, v2, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chain height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v2, v2, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    iget-object v1, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v1, v1, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-direct {p0, p1, v0, v1}, Lcom/openx/view/AdBase;->renderPlacement(Lcom/openx/view/WebViewBase;II)V

    goto :goto_0
.end method

.method public getAdEventsListener()Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/openx/view/AdBase;->adEventsListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method public getAdModel()Lcom/openx/model/AdModel;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    return-object v0
.end method

.method protected getAdUnitID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    return-object v0
.end method

.method protected getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    return-object v0
.end method

.method public incrementNumRequests()V
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/openx/view/AdBase;->numRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/AdBase;->numRequests:I

    .line 222
    return-void
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->setWillNotDraw(Z)V

    .line 347
    invoke-direct {p0}, Lcom/openx/view/AdBase;->initBase()V

    .line 349
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openx/view/AdBase;->handler:Landroid/os/Handler;

    .line 350
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    .line 352
    iget-object v0, p0, Lcom/openx/view/AdBase;->fadeInAnimation:Landroid/view/animation/Animation;

    sget-wide v2, Lcom/openx/view/AdBase;->fade:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 353
    iget-object v0, p0, Lcom/openx/view/AdBase;->fadeOutAnimation:Landroid/view/animation/Animation;

    sget-wide v2, Lcom/openx/view/AdBase;->fade:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 355
    return-void
.end method

.method protected initAvaialbleTPJars(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/openx/view/AdBase;->availableTpSDK:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public initStartLoading(Lcom/openx/view/WebViewBase;)V
    .locals 4

    .prologue
    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/AdBase;->isPaused:Z

    .line 441
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 451
    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->detachFromParent()Landroid/view/ViewGroup;

    .line 454
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->removeAllViews()V

    .line 455
    invoke-virtual {p0, p1}, Lcom/openx/view/AdBase;->addView(Landroid/view/View;)V

    .line 457
    new-instance v0, Lcom/openx/view/AdBase$1;

    invoke-direct {v0, p0}, Lcom/openx/view/AdBase$1;-><init>(Lcom/openx/view/AdBase;)V

    iget v1, p0, Lcom/openx/view/AdBase;->interval:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/view/AdBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/openx/view/AdBase;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->load(Lcom/openx/core/network/OXAdRequest;)V

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 536
    return-void
.end method

.method public load(Lcom/openx/core/network/OXAdRequest;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 552
    iput-object p1, p0, Lcom/openx/view/AdBase;->adRequest:Lcom/openx/core/network/OXAdRequest;

    .line 553
    const-string v0, "AdBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(load&scheduleTimer logs) load(OX:): autostartLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->loadCalled:Z

    .line 559
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    .line 561
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_1

    .line 563
    const-string v0, "AdBase"

    const-string v1, "(load&scheduleTimer logs) returning early from load(OX...)"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const-string v0, "AdBase"

    const-string v1, "(load&scheduleTimer logs)loading from load(OX...)"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 575
    const-string v0, "AdBase"

    const-string v1, "WARNING: Ad may not be refreshed more than once in 15 seconds ."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_2
    iget-boolean v0, p0, Lcom/openx/view/AdBase;->screenOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/openx/view/AdBase;->interval:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/openx/view/AdBase;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/openx/view/AdInterstitial;

    if-eqz v0, :cond_0

    .line 582
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    .line 584
    const-string v0, "AdBase"

    const-string v1, "startLoading scheduleTimer "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "AdBase"

    const-string v1, "(load&scheduleTimer logs) schedule Timer from load(OX...)"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->scheduleTimer(I)V

    goto :goto_0
.end method

.method protected loadAdModel()V
    .locals 2

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/openx/view/AdBase;->screenOn:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/openx/view/AdBase;->interval:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/openx/view/AdBase;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/openx/view/AdInterstitial;

    if-eqz v0, :cond_2

    .line 690
    :cond_0
    iget v0, p0, Lcom/openx/view/AdBase;->adModelRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/AdBase;->adModelRequests:I

    .line 692
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    if-nez v0, :cond_1

    .line 695
    const-string v0, "Building AdModel"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 697
    invoke-static {}, Lcom/openx/model/OXMAdModelFactory;->getInstance()Lcom/openx/model/OXMAdModelFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/OXMAdModelFactory;->createNewModel()Lcom/openx/model/AdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    .line 698
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/AdBase;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdDomain(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdUnitID(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/openx/model/AdModel;->setAdModelCallbackListener(Lcom/openx/model/network/AdModelLoadedListener;)V

    .line 702
    iget-object v0, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setChainItem(Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 705
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v1, v1, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setSSMAdWidth(I)V

    .line 706
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/AdBase;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v1, v1, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setSSMAdHeight(I)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/openx/view/AdBase;->adRequest:Lcom/openx/core/network/OXAdRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openx/view/AdBase;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v0, v0, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    if-eqz v0, :cond_3

    .line 719
    const-string v0, "AdBase"

    const-string v1, "sendng call params"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    iget-object v1, p0, Lcom/openx/view/AdBase;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v1, v1, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 731
    :goto_0
    const-string v0, "Loading AdModel"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    invoke-virtual {v0}, Lcom/openx/model/AdModel;->processData()V

    .line 737
    :cond_2
    return-void

    .line 726
    :cond_3
    const-string v0, "AdBase"

    const-string v1, "No params set by user"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/model/AdModel;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    goto :goto_0
.end method

.method protected loadView()V
    .locals 2

    .prologue
    .line 662
    iget v0, p0, Lcom/openx/view/AdBase;->interval:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/openx/view/AdBase;->isPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/openx/view/AdBase;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/openx/view/AdInterstitial;

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    const-string v0, "AdBase"

    const-string v1, "AdBase loadView loading AdModel ln 720"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->loadAdModel()V

    .line 671
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdBase;->isPaused:Z

    .line 363
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/openx/view/AdBase;->cleanup()V

    .line 371
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 383
    return-void
.end method

.method public onSDKInit()V
    .locals 2

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    if-eqz v0, :cond_0

    .line 975
    const-string v0, "AdBase"

    const-string v1, "(load&scheduleTimer logs) loading from onSDKInit"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/openx/view/AdBase;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    .line 979
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 481
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    .line 488
    :cond_1
    iput-boolean v1, p0, Lcom/openx/view/AdBase;->isPaused:Z

    .line 489
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/openx/view/AdBase;->lastLoaded:J

    .line 498
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 499
    return-void

    .line 493
    :cond_2
    iput-boolean v1, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/AdBase;->isPaused:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 398
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 400
    if-nez p1, :cond_2

    .line 403
    const-string v0, "AdBase"

    const-string v1, "onWindowFocused NOT"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 406
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    .line 411
    :cond_0
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->isPaused:Z

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    instance-of v0, p0, Lcom/openx/view/AdBanner;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/openx/view/MediatedAdView;

    if-eqz v0, :cond_1

    .line 419
    :cond_3
    const-string v0, "AdBase"

    const-string v1, "onWindowFocused YES"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iput-boolean v2, p0, Lcom/openx/view/AdBase;->screenOn:Z

    .line 422
    iput-boolean v3, p0, Lcom/openx/view/AdBase;->isPaused:Z

    .line 423
    const-string v0, "AdBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(load&scheduleTimer logs) scheduleTimer from onWindowFocusedChaged Adbase:hasStartedLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": autoStartLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-boolean v0, p0, Lcom/openx/view/AdBase;->hasStartedLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/openx/view/AdBase;->interval:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 429
    const-string v0, "AdBase"

    const-string v1, "(load&scheduleTimer logs) scheduleTimer from onWindowFocusedChaged Adbase"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, v3}, Lcom/openx/view/AdBase;->scheduleTimer(I)V

    goto :goto_0
.end method

.method public preloaded(Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public queueUIThreadTask(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 680
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/openx/view/AdBase;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/AdBase;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    :cond_0
    return-void
.end method

.method protected reflectAttrs(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    if-eqz p1, :cond_4

    .line 163
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 164
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 166
    iget-object v3, p0, Lcom/openx/view/AdBase;->domain:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 168
    const-string v3, "domain"

    invoke-virtual {p0, p1, v1, v3}, Lcom/openx/view/AdBase;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openx/view/AdBase;->domain:Ljava/lang/String;

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 173
    const-string v3, "adUnitID"

    invoke-virtual {p0, p1, v1, v3}, Lcom/openx/view/AdBase;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    .line 177
    :cond_1
    if-nez v0, :cond_2

    .line 179
    const-string v0, "autoRefreshInterval"

    invoke-virtual {p0, p1, v1, v0}, Lcom/openx/view/AdBase;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_2
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "autoStartLoading"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    const/4 v3, 0x1

    invoke-interface {p1, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/openx/view/AdBase;->autoStartLoading:Z

    .line 164
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_4
    if-eqz v0, :cond_5

    .line 197
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->setAutoRefreshInterval(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_5
    :goto_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    const-string v0, "AdBase"

    const-string v1, "WARNING: Please pass in a right value for \'autoRefreshInterval\', SDK needs it for parsing as Integer"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected renderAdView(Lcom/openx/view/WebViewBase;)V
    .locals 2

    .prologue
    .line 896
    const-string v0, "Rendering Ad Banner"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 898
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->isMRAID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onViewableChange(Z)V

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/openx/view/AdBase;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/openx/view/WebViewBase;->startAnimation(Landroid/view/animation/Animation;)V

    .line 903
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/openx/view/WebViewBase;->setVisibility(I)V

    .line 905
    invoke-virtual {p0, p1}, Lcom/openx/view/AdBase;->displayAdViewPlacement(Lcom/openx/view/WebViewBase;)V

    .line 907
    const-string v0, "Tracking Impression"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    invoke-virtual {p0}, Lcom/openx/view/AdBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/openx/view/AdBase;->trackImpressionEvent(Lcom/openx/view/WebViewBase;)V

    .line 911
    :cond_1
    return-void
.end method

.method protected scheduleTimer(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 595
    const-string v0, "AdBase"

    const-string v1, "scheduleTimer -1 "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 602
    iput-object v2, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 606
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 608
    iput-object v2, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    .line 610
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    .line 612
    const-string v0, "AdBase"

    const-string v1, "TimerTask: currentTimerTask"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/openx/view/AdBase;->createCurrentTimerTask()V

    .line 616
    iget-object v0, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/openx/view/AdBase;->currentTimerTaskHash:I

    .line 617
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/openx/view/AdBase;->currentTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    iget v4, p0, Lcom/openx/view/AdBase;->interval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 619
    return-void
.end method

.method public setAdEventsListener(Lcom/openx/view/AdEventsListener;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/openx/view/AdBase;->adEventsListener:Lcom/openx/view/AdEventsListener;

    .line 951
    return-void
.end method

.method public setAdModelNull()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    .line 262
    return-void
.end method

.method public setAdUnitID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setAuid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    .line 243
    iput-object p1, p0, Lcom/openx/view/AdBase;->auid:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setAutoRefreshInterval(I)V
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/openx/view/AdBase;->interval:I

    if-ne p1, v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 276
    :cond_0
    if-nez p1, :cond_1

    .line 278
    const v0, 0x7fffffff

    iput v0, p0, Lcom/openx/view/AdBase;->interval:I

    .line 289
    :goto_1
    const-string v0, "AdBase"

    const-string v1, "setAdChangeInterval scheduleTimer 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "AdBase"

    const-string v1, "(load&scheduleTimer logs) schedule Timer from setAutoRefreshInterval(int...)"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/openx/view/AdBase;->interval:I

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->scheduleTimer(I)V

    goto :goto_0

    .line 280
    :cond_1
    const v0, 0x1d4c0

    if-gt p1, v0, :cond_2

    const/16 v0, 0x3a98

    if-lt p1, v0, :cond_2

    .line 282
    iput p1, p0, Lcom/openx/view/AdBase;->interval:I

    goto :goto_1

    .line 286
    :cond_2
    const v0, 0xea60

    iput v0, p0, Lcom/openx/view/AdBase;->interval:I

    goto :goto_1
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->adModel:Lcom/openx/model/AdModel;

    .line 255
    iput-object p1, p0, Lcom/openx/view/AdBase;->domain:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setFadeDuration(I)V
    .locals 2

    .prologue
    .line 525
    if-ltz p1, :cond_0

    int-to-long v0, p1

    sput-wide v0, Lcom/openx/view/AdBase;->fade:J

    .line 526
    :cond_0
    return-void
.end method

.method public stoppedLoading()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdBase;->isPaused:Z

    .line 509
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/AdBase;->timer:Ljava/util/Timer;

    .line 514
    :cond_0
    return-void
.end method

.method protected swapWebViews()V
    .locals 3

    .prologue
    .line 875
    const-string v0, "Swapping Web Views"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/openx/view/WebViewBase;

    .line 878
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/openx/view/AdBase;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/openx/view/WebViewBase;

    .line 880
    iget-object v2, p0, Lcom/openx/view/AdBase;->fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Lcom/openx/view/WebViewBase;->startAnimation(Landroid/view/animation/Animation;)V

    .line 881
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/openx/view/WebViewBase;->setVisibility(I)V

    .line 883
    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {p0, v1}, Lcom/openx/view/AdBase;->renderAdView(Lcom/openx/view/WebViewBase;)V

    .line 888
    invoke-virtual {v1}, Lcom/openx/view/WebViewBase;->bringToFront()V

    .line 891
    :cond_0
    return-void
.end method

.method public timedOut(Lcom/openx/view/WebViewBase;)V
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/openx/view/AdBase;->numRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/openx/view/AdBase;->numRequests:I

    .line 939
    return-void
.end method
