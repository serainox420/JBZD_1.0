.class public Lcom/amazon/device/ads/AdLayout;
.super Landroid/widget/FrameLayout;
.source "AdLayout.java"

# interfaces
.implements Lcom/amazon/device/ads/Ad;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdLayout$4;,
        Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;,
        Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_AD_LAYOUT:Ljava/lang/String; = "adLayoutObject"

.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field static final LAYOUT_NOT_RUN_ERR_MSG:Ljava/lang/String; = "Can\'t load an ad because the view size cannot be determined."

.field static final LAYOUT_PARAMS_NULL_ERR_MSG:Ljava/lang/String; = "Can\'t load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout."

.field static final LOADING_IN_PROGRESS_LOG_MSG:Ljava/lang/String; = "Can\'t load an ad because an ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

.field static final LOADING_OR_LOADED_LOG_MSG:Ljava/lang/String; = "Can\'t load an ad because an ad is currently loading or already loaded. Please wait for the ad to finish loading or showing before loading another ad."

.field private static final LOGTAG:Ljava/lang/String;

.field private static threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private activityRootView:Landroid/view/View;

.field private adController:Lcom/amazon/device/ads/AdController;

.field private final adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

.field private adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

.field private final adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

.field private final adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

.field private final adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

.field private adSize:Lcom/amazon/device/ads/AdSize;

.field private adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private attached:Z

.field private autoShow:Z

.field private final context:Landroid/content/Context;

.field private currentDestroyable:Lcom/amazon/device/ads/Destroyable;

.field private currentView:Landroid/view/View;

.field private hasRegisterBroadcastReciever:Z

.field private isDestroyed:Z

.field private isInForeground:Z

.field private isInitialized:Z

.field private isParentViewMissingAtLoadTime:Z

.field private lastVisibility:I

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private properties:Lcom/amazon/device/ads/AdProperties;

.field private screenStateReceiver:Landroid/content/BroadcastReceiver;

.field private shouldDisableWebViewHardwareAcceleration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    const-class v0, Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 131
    sget-object v0, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 196
    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 236
    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v7}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 237
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 9

    .prologue
    .line 246
    new-instance v5, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v5, p4}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 247
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 80
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 81
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 85
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 87
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 89
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 91
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 259
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 260
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 261
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 262
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    sget-object v1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 263
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 264
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 265
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 266
    iput-object p8, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    .line 267
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 8

    .prologue
    .line 205
    new-instance v4, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v4, p3}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 206
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 80
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 81
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 85
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 87
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 89
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 91
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 218
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 219
    iput-object p3, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 220
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    sget-object v1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 221
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 222
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 223
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 224
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V
    .locals 7

    .prologue
    .line 151
    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 152
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 8

    .prologue
    .line 160
    new-instance v4, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v4, p3}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 80
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 81
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 85
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 87
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 89
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 91
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 173
    iput-object p3, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 174
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    sget-object v1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 175
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 176
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 177
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 178
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLayout;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdProperties;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->properties:Lcom/amazon/device/ads/AdProperties;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdProperties;)Lcom/amazon/device/ads/AdProperties;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->properties:Lcom/amazon/device/ads/AdProperties;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/AdLayout;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method static synthetic access$702(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/device/ads/AdLayout;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private collapseAd()V
    .locals 2

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Lcom/amazon/device/ads/AdLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$2;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 598
    :cond_0
    return-void
.end method

.method private createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/device/ads/AdControllerFactory;->buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method private determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 307
    const-string v0, "adSize"

    .line 308
    const-string v0, "http://schemas.android.com/apk/lib/com.amazon.device.ads"

    .line 310
    const-string v0, "http://schemas.android.com/apk/lib/com.amazon.device.ads"

    const-string v1, "adSize"

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v1, "adSize"

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v2, Lcom/amazon/device/ads/MobileAdsLogger$Level;->WARN:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    const-string v3, "DEPRECATED - Please use the XML namespace \"http://schemas.android.com/apk/lib/com.amazon.device.ads\" for specifying AdLayout properties."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v0, "Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size."

    .line 322
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v2, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_0
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    .line 329
    return-object v0
.end method

.method private fireViewableEvent()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->fireViewableEvent()V

    .line 303
    :cond_0
    return-void
.end method

.method private getAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->initializeIfNecessary()V

    .line 438
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method private static getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    invoke-interface {p0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeAdController()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    if-nez v0, :cond_1

    .line 418
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AdLayout;->createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setAdController(Lcom/amazon/device/ads/AdController;)V

    .line 425
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->requestDisableHardwareAcceleration(Z)V

    .line 427
    :cond_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    goto :goto_0
.end method

.method private isReadyToLoad()Z
    .locals 2

    .prologue
    .line 779
    sget-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToShow()Z
    .locals 2

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadAdWhenParentViewMissing()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 858
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    .line 860
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_NULL_LAYOUT_PARAMS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 861
    const-string v1, "Can\'t load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout."

    invoke-direct {p0, v1}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 898
    :goto_0
    return v0

    .line 868
    :cond_0
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 870
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setActivityRootView()V

    .line 871
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    const-string v1, "Ad load failed because root view could not be obtained from the activity."

    .line 875
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    goto :goto_0

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 883
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Activity root view layout is requested."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    .line 885
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setOnLayoutChangeListenerForRoot()V

    goto :goto_0

    .line 890
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    move v0, v1

    .line 891
    goto :goto_0

    .line 897
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    move v0, v1

    .line 898
    goto :goto_0
.end method

.method private onRequestError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method private static parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 452
    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 453
    if-eqz p0, :cond_2

    .line 455
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 456
    const-string v3, "autonoscale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

    .line 475
    :goto_0
    return-object v0

    .line 460
    :cond_0
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 463
    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 466
    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 468
    aget-object v1, v2, v0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 469
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 472
    :goto_1
    new-instance v2, Lcom/amazon/device/ads/AdSize;

    invoke-direct {v2, v1, v0}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 511
    new-instance v0, Lcom/amazon/device/ads/AdLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$1;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 524
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 2

    .prologue
    .line 431
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    .line 432
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setCallback(Lcom/amazon/device/ads/AdControlCallback;)V

    .line 433
    return-void
.end method

.method private setWindowDimensions()V
    .locals 3

    .prologue
    .line 985
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParam(Z)I

    move-result v0

    .line 986
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParam(Z)I

    move-result v1

    .line 988
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    .line 992
    :cond_1
    return-void
.end method

.method private startAdLoadUponLayout()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 626
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 627
    new-instance v1, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/AdSlot;->setDeferredLoad(Z)Lcom/amazon/device/ads/AdSlot;

    move-result-object v1

    .line 628
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v3

    new-array v4, v4, [Lcom/amazon/device/ads/AdSlot;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Lcom/amazon/device/ads/AdLoadStarter;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 629
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAndResetIsPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const-string v0, "Could not load ad on layout."

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 633
    :cond_0
    return-void
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 532
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method adFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 905
    return-void
.end method

.method adShown()V
    .locals 1

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->adShown()V

    .line 918
    return-void
.end method

.method bypassAdRenderingProcess()V
    .locals 2

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 912
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    const-string v1, "custom-render"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->adRendered(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    return-object v0
.end method

.method deferAdLoadToLayoutEvent()V
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setNeedsToLoadAdOnLayout(Z)V

    .line 1056
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->scheduleTaskForCheckingIfLayoutHasRun()V

    .line 1057
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Destroying the AdLayout"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 1240
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 1241
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->destroy()V

    goto :goto_0
.end method

.method public disableAutoShow()V
    .locals 1

    .prologue
    .line 1329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 1330
    return-void
.end method

.method public enableAutoShow()V
    .locals 1

    .prologue
    .line 1321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 1322
    return-void
.end method

.method failLoadIfLayoutHasNotRun()V
    .locals 2

    .prologue
    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_LAYOUT_NOT_RUN:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1077
    const-string v0, "Can\'t load an ad because the view size cannot be determined."

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 1079
    :cond_0
    return-void
.end method

.method getActivityRootViewDimension(Z)I
    .locals 1

    .prologue
    .line 1178
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method getAdData()Lcom/amazon/device/ads/AdData;
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    return-object v0
.end method

.method getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    return-object v0
.end method

.method public getAdSize()Lcom/amazon/device/ads/AdSize;
    .locals 1

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 676
    if-nez v0, :cond_0

    .line 678
    const/4 v0, 0x0

    .line 680
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    goto :goto_0
.end method

.method getAndResetIsPrepared()Z
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAndResetIsPrepared()Z

    move-result v0

    return v0
.end method

.method getAndSetNeedsToLoadAdOnLayout(Z)Z
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method getNeedsToLoadAdOnLayout()Z
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method getRawScreenDimension(Z)I
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1043
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1044
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1045
    if-eqz p1, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 643
    if-nez v0, :cond_0

    .line 645
    const/4 v0, -0x1

    .line 647
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v0

    goto :goto_0
.end method

.method initializeIfNecessary()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 361
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Initializing AdLayout."

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/AdRegistrationExecutor;->initializeAds(Landroid/content/Context;)V

    .line 364
    const-string v0, "adLayoutObject"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 373
    const-string v2, "AdLayout"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 376
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->addView(Landroid/view/View;)V

    .line 377
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 383
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 384
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->setVerticalScrollBarEnabled(Z)V

    .line 387
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    if-nez v0, :cond_2

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 394
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 401
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isWebViewDatabaseNull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v1, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    const-string v3, "Disabling ads. Local cache file is inaccessible so ads will fail if we try to create a WebView. Details of this Android bug found at: http://code.google.com/p/android/issues/detail?id=10789"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iput-boolean v2, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 381
    goto :goto_1

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1, v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 408
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto/16 :goto_0
.end method

.method isActivityRootViewLayoutRequested()Z
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    return v0
.end method

.method isActivityRootViewNull()Z
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdLoading()Z
    .locals 1

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLoading()Z

    move-result v0

    return v0
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 1206
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 1207
    if-nez v0, :cond_0

    .line 1209
    const/4 v0, 0x0

    .line 1211
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isParentViewMissingAtLoadTime()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isWebViewDatabaseNull()Z
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canShowViews()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 1

    .prologue
    .line 705
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 716
    if-nez p1, :cond_0

    .line 718
    new-instance p1, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {p1}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 720
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 722
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Can\'t load an ad because an ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 770
    :goto_0
    return v0

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->initializeIfNecessary()V

    .line 728
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 730
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The ad could not be initialized properly."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v2

    if-nez v2, :cond_4

    .line 735
    sget-object v1, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 754
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Can\'t load an ad because an ad is currently loading or already loaded. Please wait for the ad to finish loading or showing before loading another ad."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 741
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 742
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->resetToReady()V

    .line 743
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    move-result v0

    goto :goto_0

    .line 745
    :cond_3
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "An ad could not be loaded because of an unknown issue with the web views."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "An ad could not be loaded because the AdLayout has been destroyed."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :pswitch_2
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "An ad could not be loaded because another ad is currently expanded."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_4
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 761
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 763
    :cond_5
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 764
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v3

    new-array v4, v1, [Lcom/amazon/device/ads/AdSlot;

    new-instance v5, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, p1, v4}, Lcom/amazon/device/ads/AdLoadStarter;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 766
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 768
    goto/16 :goto_0

    .line 770
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAndResetIsPrepared()Z

    move-result v0

    goto/16 :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 539
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 541
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 544
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->registerScreenStateBroadcastReceiver()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 552
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 553
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    sub-int v0, p4, p2

    .line 608
    sub-int v1, p5, p3

    .line 609
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 611
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    if-eq v0, p1, :cond_0

    .line 559
    if-eqz p1, :cond_1

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 562
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->collapseAd()V

    .line 563
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    if-nez p1, :cond_0

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    goto :goto_0
.end method

.method prepareAd(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 801
    if-eqz p1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Skipping ad layout preparation steps because the layout is already prepared."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 808
    goto :goto_0

    .line 811
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 813
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Can\'t load an ad because an ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move v0, v1

    .line 814
    goto :goto_0

    .line 817
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 819
    const-string v2, "Ad size to be determined automatically."

    .line 820
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v3, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 823
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setIsParentViewMissingAtLoadTime()V

    .line 825
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->areWindowDimensionsSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 830
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result v2

    if-nez v2, :cond_6

    .line 835
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    move v0, v1

    .line 836
    goto :goto_0

    .line 838
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 840
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The ad\'s parent view is missing at load time."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 844
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->loadAdWhenParentViewMissing()Z

    move-result v0

    goto :goto_0

    .line 848
    :cond_7
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->setWindowDimensions()V

    goto :goto_0
.end method

.method resolveLayoutParam(Z)I
    .locals 2

    .prologue
    .line 1010
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1012
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1014
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getRawScreenDimension(Z)I

    move-result v0

    .line 1032
    :cond_0
    :goto_1
    return v0

    .line 1010
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1023
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getActivityRootViewDimension(Z)I

    move-result v0

    goto :goto_1

    .line 1027
    :cond_3
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1029
    const/4 v0, 0x0

    goto :goto_1
.end method

.method scheduleTaskForCheckingIfLayoutHasRun()V
    .locals 5

    .prologue
    .line 1061
    new-instance v0, Lcom/amazon/device/ads/AdLayout$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$3;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    .line 1069
    sget-object v1, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1070
    return-void
.end method

.method setActivityRootView()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/ads/ContextUtils;->getContextAsActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1144
    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "unable to set activity root view because the context did not contain an activity"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 1151
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    goto :goto_0
.end method

.method setFloatingWindowDimensions()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 971
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_1

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The requested ad will scale based on the screen\'s dimensions because at least one AdLayout dimension is set to MATCH_PARENT but the AdLayout is currently missing a fixed-size parent view."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 977
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->setWindowDimensions()V

    .line 978
    return-void
.end method

.method setIsParentViewMissingAtLoadTime()V
    .locals 1

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 1129
    return-void

    .line 1128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setIsParentViewMissingAtLoadTime(Z)V
    .locals 0

    .prologue
    .line 1135
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 1136
    return-void
.end method

.method public setListener(Lcom/amazon/device/ads/AdListener;)V
    .locals 1

    .prologue
    .line 1187
    if-nez p1, :cond_0

    .line 1189
    new-instance p1, Lcom/amazon/device/ads/DefaultAdListener;

    sget-object v0, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    .line 1192
    return-void
.end method

.method setMaxWidth(I)V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The maximum width cannot be changed because this ad has already been initialized. Max width should be set immediately after construction of the Ad object."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdSize;->newMaxWidth(I)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    goto :goto_0
.end method

.method setNeedsToLoadAdOnLayout(Z)V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1097
    return-void
.end method

.method setOnLayoutChangeListenerForRoot()V
    .locals 0

    .prologue
    .line 926
    invoke-static {p0}, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;->setOnLayoutChangeListenerForRoot(Lcom/amazon/device/ads/AdLayout;)V

    .line 927
    return-void
.end method

.method setShouldDisableWebViewHardwareAcceleration(Z)V
    .locals 2

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    .line 345
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->requestDisableHardwareAcceleration(Z)V

    .line 349
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setTimeout(I)V

    .line 664
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 287
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    .line 288
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 294
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    .line 295
    return-void
.end method

.method public setX(F)V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 273
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    .line 274
    return-void
.end method

.method public setY(F)V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 280
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    .line 281
    return-void
.end method

.method shouldDisableWebViewHardwareAcceleration()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    return v0
.end method

.method public showAd()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1249
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "This banner ad has expired. Please load another ad."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 1312
    :goto_0
    return v0

    .line 1254
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToShow()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1256
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "This banner ad has expired. Please load another ad."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->startAdDrawing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1264
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    if-nez v0, :cond_2

    .line 1266
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOADED_TO_AD_SHOW_TIME:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1268
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1269
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->removeView(Landroid/view/View;)V

    .line 1273
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentDestroyable:Lcom/amazon/device/ads/Destroyable;

    if-eqz v0, :cond_4

    .line 1275
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentDestroyable:Lcom/amazon/device/ads/Destroyable;

    invoke-interface {v0}, Lcom/amazon/device/ads/Destroyable;->destroy()V

    .line 1277
    :cond_4
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    .line 1278
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getDestroyable()Lcom/amazon/device/ads/Destroyable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentDestroyable:Lcom/amazon/device/ads/Destroyable;

    .line 1279
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1283
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/AdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1284
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1285
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->adShown()V

    .line 1286
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1290
    :cond_5
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Banner ad could not be shown."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1296
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1298
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The banner ad cannot be shown because it is still loading."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1300
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1302
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The banner ad cannot be shown because it is already showing."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1304
    :cond_8
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1306
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The banner ad cannot be shown because it has not loaded successfully."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1310
    :cond_9
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "A banner ad is not ready to show."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
