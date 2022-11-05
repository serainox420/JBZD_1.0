.class public Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;
.super Ljava/lang/Object;
.source "VideoAdSDKControllerUsingActivity.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/JavascriptBridgeListener;
.implements Lcom/video/adsdk/interfaces/PrefetcherListener;
.implements Lcom/video/adsdk/interfaces/VideoBridgeListener;


# static fields
.field public static final Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

.field private static final RUN_ON_UI_THREAD:I = 0x1


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private currentFile:Lcom/video/adsdk/internal/ADVideoFile;

.field private currentRequest:Lcom/video/adsdk/internal/ADRequest;

.field private embeddedView:Landroid/view/View;

.field private fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

.field private isMovieClicked:Z

.field private isPlayingAdvertising:Z

.field private isVideoReadyToPlay:Z

.field private javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

.field private listener:Lcom/video/adsdk/VideoAdSDKListener;

.field private m_isShowSkipVisible:Ljava/lang/Boolean;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publisherId:Ljava/lang/String;

.field stateSendToJavascriptWithSecondOneAlready:I

.field uiHandler:Landroid/os/Handler;

.field private videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

.field private videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

.field private videoUrl:Ljava/lang/String;

.field private wiFiOnly:Z

.field private wifiMonitor:Lcom/video/adsdk/internal/ADWifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-direct {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;-><init>()V

    sput-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    .line 48
    iput-object v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->publisherId:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->params:Ljava/util/Map;

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->m_isShowSkipVisible:Ljava/lang/Boolean;

    .line 54
    iput-boolean v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isVideoReadyToPlay:Z

    .line 55
    iput-boolean v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isMovieClicked:Z

    .line 56
    iput-boolean v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 58
    iput-object v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wifiMonitor:Lcom/video/adsdk/internal/ADWifiMonitor;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wiFiOnly:Z

    .line 71
    new-instance v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$1;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->uiHandler:Landroid/os/Handler;

    .line 375
    iput v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->stateSendToJavascriptWithSecondOneAlready:I

    .line 377
    iput-object v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoUrl:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/internal/ADRequest;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentRequest:Lcom/video/adsdk/internal/ADRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Lcom/video/adsdk/internal/ADRequest;)Lcom/video/adsdk/internal/ADRequest;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentRequest:Lcom/video/adsdk/internal/ADRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->params:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/interfaces/JavascriptBridge;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    return-object v0
.end method

.method static synthetic access$300(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/interfaces/VideoBridge;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    return-object v0
.end method

.method static synthetic access$400(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getLocalDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/internal/ADVideoFile;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingFailedToLoad(Ljava/lang/Exception;)V

    return-void
.end method

.method private advertisingFailedToLoad(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 570
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0, p1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingFailedToLoad(Ljava/lang/Exception;)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADVideoFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 574
    :goto_0
    const/16 v1, 0xd

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentRequest:Lcom/video/adsdk/internal/ADRequest;

    invoke-virtual {v4}, Lcom/video/adsdk/internal/ADRequest;->getUrlForPlay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/video/adsdk/internal/Tracker;->sendMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 573
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private advertisingNotAvailable(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 579
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingNotAvailable()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADVideoFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_0
    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adveresting is not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentRequest:Lcom/video/adsdk/internal/ADRequest;

    invoke-virtual {v4}, Lcom/video/adsdk/internal/ADRequest;->getUrlForPlay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/video/adsdk/internal/Tracker;->sendMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void

    .line 582
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private advertisingTimedOut(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 588
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingTimedOut()V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADVideoFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_0
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentRequest:Lcom/video/adsdk/internal/ADRequest;

    invoke-virtual {v3}, Lcom/video/adsdk/internal/ADRequest;->getUrlForPlay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v0, v3}, Lcom/video/adsdk/internal/Tracker;->sendMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void

    .line 591
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createADRequest(Z)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->publisherId:Ljava/lang/String;

    new-instance v2, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Z)V

    invoke-static {v0, v1, v2}, Lcom/video/adsdk/internal/ADRequest;->createRequest(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/interfaces/ADRequestPreparedAction;)V

    .line 183
    return-void
.end method

.method private getLocalDirectory()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/FileDownloader;->getTargetDirectoryPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registeredWithPublisherId()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->publisherId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupJavascriptBridge()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->cancel()V

    .line 240
    :cond_0
    new-instance v0, Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/video/adsdk/internal/ADJavascriptBridge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    .line 241
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->addListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V

    .line 242
    return-void
.end method

.method private setupPrefetcher(Z)V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/video/adsdk/internal/ADFileDownloader;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/video/adsdk/internal/ADFileDownloader;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    .line 247
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/Prefetcher;->stopPrefetching()V

    .line 250
    :cond_0
    new-instance v0, Lcom/video/adsdk/internal/Prefetcher;

    invoke-direct {v0}, Lcom/video/adsdk/internal/Prefetcher;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    .line 251
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    iget-boolean v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wiFiOnly:Z

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/Prefetcher;->setWiFiOnly(Z)V

    .line 252
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wifiMonitor:Lcom/video/adsdk/internal/ADWifiMonitor;

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/Prefetcher;->setWifiMonitor(Lcom/video/adsdk/interfaces/WifiMonitor;)V

    .line 253
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/Prefetcher;->setFileDownloader(Lcom/video/adsdk/interfaces/FileDownloader;)V

    .line 254
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    invoke-virtual {v0, p0}, Lcom/video/adsdk/internal/Prefetcher;->addPrefetcherListener(Lcom/video/adsdk/interfaces/PrefetcherListener;)V

    .line 255
    return-void
.end method

.method private setupWifiMonitor()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wifiMonitor:Lcom/video/adsdk/internal/ADWifiMonitor;

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    new-instance v0, Lcom/video/adsdk/internal/ADWifiMonitor;

    new-instance v1, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;

    iget-object v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/video/adsdk/internal/ADWifiMonitor;-><init>(Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wifiMonitor:Lcom/video/adsdk/internal/ADWifiMonitor;

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wifiMonitor:Lcom/video/adsdk/internal/ADWifiMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public advertisingDidHide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 561
    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isMovieClicked:Z

    .line 562
    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 563
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingDidHide()V

    .line 566
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/FileDownloader;->deleteAllFiles()V

    .line 651
    :cond_0
    return-void
.end method

.method public disableEmbedView()V
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->embeddedView:Landroid/view/View;

    .line 705
    return-void
.end method

.method public displayAdvertising()V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    .line 517
    iput-boolean v3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isMovieClicked:Z

    .line 518
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->registeredWithPublisherId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingWillShow()V

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isFakeNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/video/adsdk/internal/ADActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 529
    sget-object v1, Lcom/video/adsdk/internal/ADActivity;->PARAM_USE_FAKE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 530
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isViewEmbed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    new-instance v0, Lcom/video/adsdk/internal/EmbedViewController;

    invoke-direct {v0}, Lcom/video/adsdk/internal/EmbedViewController;-><init>()V

    .line 545
    invoke-virtual {v0}, Lcom/video/adsdk/internal/EmbedViewController;->displayAdvertising()V

    goto :goto_0

    .line 549
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/video/adsdk/internal/ADActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 551
    sget-object v1, Lcom/video/adsdk/internal/ADActivity;->PARAM_USE_FAKE:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public enableEmbedView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->embeddedView:Landroid/view/View;

    .line 701
    return-void
.end method

.method public getCurrentFile()Lcom/video/adsdk/internal/ADVideoFile;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    return-object v0
.end method

.method public getEmbeddedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->embeddedView:Landroid/view/View;

    return-object v0
.end method

.method public getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    return-object v0
.end method

.method public getPrefetcher()Lcom/video/adsdk/internal/Prefetcher;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    return-object v0
.end method

.method public getVideoBridge()Lcom/video/adsdk/interfaces/VideoBridge;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    return-object v0
.end method

.method public isClosableByUI()Z
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 475
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->isClosableByUI()Z

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

.method public isCorrectVersion()Z
    .locals 2

    .prologue
    .line 687
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeNeeded()Z
    .locals 2

    .prologue
    .line 662
    :try_start_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 664
    const/4 v0, 0x1

    .line 670
    :goto_0
    return v0

    .line 667
    :catch_0
    move-exception v0

    .line 670
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShowSkipVisible()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->m_isShowSkipVisible:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVideoPlaying()Z
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 464
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 465
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PAUSED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 466
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_RESUMED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 467
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_BUFFERING:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 468
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_STARTED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewEmbed()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->embeddedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWiFiOnly()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wiFiOnly:Z

    return v0
.end method

.method public movieClick()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->movieClick()V

    .line 259
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingClicked()V

    .line 262
    :cond_0
    return-void
.end method

.method public onDisplay()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingIsReadyToPlay()V

    .line 322
    :cond_0
    return-void
.end method

.method public onFinish(I)V
    .locals 1

    .prologue
    .line 451
    if-gez p1, :cond_0

    .line 452
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingNotAvailable(Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method public onOpenURLInBrowser(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isMovieClicked:Z

    .line 338
    if-eqz p2, :cond_1

    .line 339
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/video/adsdk/internal/BrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :goto_0
    if-eqz v0, :cond_0

    .line 347
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 348
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 353
    :cond_0
    :goto_1
    return-void

    .line 342
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 392
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingFailedToLoad(Ljava/lang/Exception;)V

    .line 395
    return-void
.end method

.method public onPageLoaded(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v3

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->params:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Lcom/video/adsdk/interfaces/JavascriptBridge;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentRequest:Lcom/video/adsdk/internal/ADRequest;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADRequest;->getDeviceIdBundle()Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getMAC()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v1

    const-string v2, "did1"

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getMAC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/video/adsdk/interfaces/JavascriptBridge;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getMacSHA1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v1

    const-string v2, "did2"

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getMacSHA1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/video/adsdk/interfaces/JavascriptBridge;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_2
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getAdvertisingId()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 431
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v1

    const-string v2, "did3"

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getAdvertisingId()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/video/adsdk/interfaces/JavascriptBridge;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_3
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getOpenUDID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 434
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v1

    const-string v2, "did5"

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getOpenUDID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/video/adsdk/interfaces/JavascriptBridge;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_4
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 437
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v1

    const-string v2, "did6"

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_5
    return-void
.end method

.method public onPageStartingLoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onPageTimeOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingTimedOut(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public onPlayMovie(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid url: null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingFailedToLoad(Ljava/lang/Exception;)V

    .line 314
    :goto_0
    return-void

    .line 276
    :cond_1
    iput v4, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->stateSendToJavascriptWithSecondOneAlready:I

    .line 279
    :try_start_0
    new-instance v0, Lcom/video/adsdk/internal/ADVideoFile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/video/adsdk/internal/ADVideoFile;-><init>(Ljava/lang/String;JZ)V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    .line 280
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getLocalDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/ADVideoFile;->isPrefetchedIn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const-string v0, "VIDEO_AD_SDK"

    const-string v1, "File already prefetched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :goto_1
    if-eqz p1, :cond_2

    const-string v0, ""

    if-ne p1, v0, :cond_4

    .line 307
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid url: null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingFailedToLoad(Ljava/lang/Exception;)V

    goto :goto_0

    .line 297
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/Prefetcher;->prefetchFile(Lcom/video/adsdk/internal/ADVideoFile;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingNotAvailable(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 302
    :catch_1
    move-exception v0

    .line 303
    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingFailedToLoad(Ljava/lang/Exception;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 312
    :cond_4
    iput v4, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->stateSendToJavascriptWithSecondOneAlready:I

    goto :goto_0
.end method

.method public onPrefetchURL(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 326
    :try_start_0
    new-instance v0, Lcom/video/adsdk/internal/ADVideoFile;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/video/adsdk/internal/ADVideoFile;-><init>(Ljava/lang/String;JZ)V

    .line 327
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    invoke-virtual {v1, v0}, Lcom/video/adsdk/internal/Prefetcher;->prefetchFile(Lcom/video/adsdk/internal/ADVideoFile;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingNotAvailable(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrefetchedFile(Lcom/video/adsdk/internal/ADVideoFile;)V
    .locals 3

    .prologue
    .line 601
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->currentFile:Lcom/video/adsdk/internal/ADVideoFile;

    .line 603
    invoke-virtual {p1}, Lcom/video/adsdk/internal/ADVideoFile;->shouldPlayAfterPrefetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    if-nez v0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-direct {v2}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getLocalDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/video/adsdk/internal/ADVideoFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/VideoBridge;->setUrl(Ljava/lang/String;)V

    .line 607
    new-instance v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$6;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$6;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    sget-object v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-direct {v1, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingFailedToLoad(Ljava/lang/Exception;)V

    .line 616
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrefetchingDidComplete()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->prefetchingComplete()V

    .line 411
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingPrefetchingDidComplete()V

    .line 414
    :cond_0
    return-void
.end method

.method public onPrefetchingFailed()V
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$7;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$7;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 636
    const-string v0, "prefetching failed"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingNotAvailable(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public onPrefetchingStarted()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0, p1, p2}, Lcom/video/adsdk/VideoAdSDKListener;->onPrefetcherProgress(D)V

    .line 626
    :cond_0
    return-void
.end method

.method public onSetBackgroundColor(I)V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0, p1}, Lcom/video/adsdk/interfaces/VideoBridge;->setBackgroundColor(I)V

    .line 658
    :cond_0
    return-void
.end method

.method public onShowDialog(Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public onShowSkip()V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->m_isShowSkipVisible:Ljava/lang/Boolean;

    .line 363
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$4;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$4;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSkipButtonClicked()V
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/Prefetcher;->deleteExpiredFiles()V

    .line 503
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_STOPPED_BY_USER:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 504
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getVideoBridge()Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/video/adsdk/interfaces/VideoBridge;->getCurrentSecond()I

    move-result v2

    int-to-long v2, v2

    .line 503
    invoke-interface {v0, v1, v2, v3}, Lcom/video/adsdk/interfaces/JavascriptBridge;->moviePulse(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V

    .line 505
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/JavascriptBridge;->finalReturn(I)V

    .line 506
    return-void
.end method

.method public onTrack(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0, p1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method

.method public onVideoIsComplete()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/JavascriptBridge;->finalReturn(I)V

    .line 460
    return-void
.end method

.method public onVideoIsReadyToPlay(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;I)V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isVideoReadyToPlay:Z

    .line 444
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingIsReadyToPlay()V

    .line 447
    :cond_0
    return-void
.end method

.method public onVideoPlaybackError(II)V
    .locals 4

    .prologue
    .line 510
    const-string v0, "Error: (%d, %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v1}, Lcom/video/adsdk/interfaces/VideoBridge;->shutdown()V

    .line 512
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingFailedToLoad(Ljava/lang/Exception;)V

    .line 513
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/video/adsdk/interfaces/JavascriptBridge;->troubleshoot(Ljava/lang/String;I)V

    .line 514
    return-void
.end method

.method public onVideoReportsCurrentState(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;JLcom/video/adsdk/interfaces/VideoBridge$MovieState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method raiseFakeVideoPlayEvents(Z)V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 675
    if-nez p1, :cond_1

    .line 676
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    const-string v1, "impression"

    invoke-interface {v0, v1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    const-string v1, "firstQuartile"

    invoke-interface {v0, v1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    const-string v1, "midpoint"

    invoke-interface {v0, v1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    const-string v1, "thirdQuartile"

    invoke-interface {v0, v1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    const-string v1, "complete"

    invoke-interface {v0, v1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z
    .locals 1

    .prologue
    .line 197
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->publisherId:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 203
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setupWifiMonitor()V

    .line 205
    invoke-direct {p0, p4}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setupPrefetcher(Z)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z
    .locals 1

    .prologue
    .line 728
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    .line 729
    iput-object p2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->publisherId:Ljava/lang/String;

    .line 730
    iput-object p4, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    .line 731
    iput-object p3, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoUrl:Ljava/lang/String;

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 734
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setupWifiMonitor()V

    .line 736
    invoke-direct {p0, p5}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setupPrefetcher(Z)V

    .line 738
    const/4 v0, 0x1

    return v0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 641
    return-void
.end method

.method public setIsPlayingAdvertising(Z)V
    .locals 0

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 266
    return-void
.end method

.method public setUserAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/video/adsdk/interfaces/JavascriptBridge;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setWiFiOnly(Z)V
    .locals 1

    .prologue
    .line 716
    iput-boolean p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wiFiOnly:Z

    .line 717
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoPrefetcher:Lcom/video/adsdk/internal/Prefetcher;

    invoke-virtual {v0, p1}, Lcom/video/adsdk/internal/Prefetcher;->setWiFiOnly(Z)V

    .line 719
    :cond_0
    return-void
.end method

.method public startLoadingAdvertisingURL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setupJavascriptBridge()V

    .line 99
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->registeredWithPublisherId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isFakeNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingIsReadyToPlay()V

    goto :goto_0

    .line 111
    :cond_2
    iget-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingNotAvailable()V

    goto :goto_0

    .line 118
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isPlayingAdvertising:Z

    .line 119
    iput-boolean v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isVideoReadyToPlay:Z

    .line 121
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->removeWebView()V

    .line 125
    :cond_4
    new-instance v0, Lcom/video/adsdk/internal/ADVideoView;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/video/adsdk/internal/ADVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 126
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/VideoBridge;->setFileDownloader(Lcom/video/adsdk/interfaces/FileDownloader;)V

    .line 127
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/VideoBridge;->addListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V

    .line 128
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 130
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->javascriptBridge:Lcom/video/adsdk/interfaces/JavascriptBridge;

    invoke-interface {v1}, Lcom/video/adsdk/interfaces/JavascriptBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/VideoBridge;->setWebview(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->m_isShowSkipVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->onShowSkip()V

    .line 140
    :cond_6
    invoke-direct {p0, v2}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->createADRequest(Z)V

    goto :goto_0
.end method

.method public startLoadingPrefetchingURL()V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setupJavascriptBridge()V

    .line 146
    invoke-direct {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->registeredWithPublisherId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isFakeNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    const-string v1, "prefetch"

    invoke-interface {v0, v1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    invoke-interface {v0}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingPrefetchingDidComplete()V

    .line 154
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->listener:Lcom/video/adsdk/VideoAdSDKListener;

    const-string v1, "prefetched"

    invoke-interface {v0, v1}, Lcom/video/adsdk/VideoAdSDKListener;->onAdvertisingEventTracked(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->createADRequest(Z)V

    goto :goto_0
.end method

.method public wasMovieClicked()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isMovieClicked:Z

    return v0
.end method
