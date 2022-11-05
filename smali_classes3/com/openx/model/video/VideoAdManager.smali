.class public Lcom/openx/model/video/VideoAdManager;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/SDKInitListener;
.implements Lcom/openx/core/network/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/model/video/VideoAdManager$15;,
        Lcom/openx/model/video/VideoAdManager$InterstitialThread;,
        Lcom/openx/model/video/VideoAdManager$GenerateURLCallback;,
        Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;,
        Lcom/openx/model/video/VideoAdManager$AutoPlayConfigs;
    }
.end annotation


# static fields
.field private static final CLOSED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoAdManager"

.field private static context:Landroid/content/Context;

.field public static tempVideoContainer:Landroid/view/View;


# instance fields
.field private adPlayhead:I

.field private adRequest:Lcom/openx/core/network/OXAdRequest;

.field private adURI:Landroid/net/Uri;

.field private allowFullscreen:Z

.field private allowFullscreenOnOrientationChange:Z

.field private allowFullscreenTemp:Z

.field private autoPlayConfig:Lcom/openx/model/video/VideoAdManager$AutoPlayConfigs;

.field private canFillParentParams:Z

.field private canTrackTimeOffsets:Z

.field private checkedCanFillParentParams:Z

.field private container:Landroid/view/ViewGroup;

.field private contentCompletionListener:Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;

.field private contentPlayhead:I

.field private contentPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentVideoContainer:Landroid/widget/RelativeLayout;

.field private contentVideoPath:Ljava/lang/String;

.field private contentVideoView:Landroid/widget/VideoView;

.field private dialog:Lcom/openx/model/video/AdVideoDialog;

.field private errorView:Landroid/widget/TextView;

.field private globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private hasStarted:Z

.field private initialLayoutHeight:I

.field private initialLayoutWidth:I

.field private initialVideoContainerParams:Ljava/lang/Object;

.field private isAdSkipped:Z

.field private isContentVideoPlaying:Z

.field private isCustomVideoView:Z

.field isEndOfPlaylist:Z

.field private isEndOfVideo:Z

.field private isError:Z

.field private isFullScreen:Z

.field private isInFeedVideo:Z

.field private isInterstitial:Z

.field private isMuteOnAutoPlay:Z

.field private isPaused:Z

.field private isPreloadedVideo:Z

.field private isThumbnailClicked:Z

.field private justPlayedAdId:I

.field makeError:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private nestingLimit:I

.field private nonLinearAd:Landroid/widget/RelativeLayout;

.field private percentPlayed:D

.field private playFullscreen:Z

.field private playLarge:Landroid/widget/ImageView;

.field private preloadedAdVideoPath:Ljava/lang/String;

.field private q1:Z

.field private q2:Z

.field private q3:Z

.field private q4:Z

.field private responseNum:I

.field private scrubThreshhold:D

.field private sendMuteEvents:Z

.field private spinner:Landroid/widget/ProgressBar;

.field private stateMachine:Lcom/openx/video/statemachine/StateMachine;

.field private status:I

.field private swapVideoView:Landroid/widget/VideoView;

.field private thumbNailImageView:Landroid/widget/ImageView;

.field private thumbnailTask:Lcom/openx/view/video/network/VideoThumbnailTask;

.field private timeOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

.field private vastTag:Ljava/lang/String;

.field private vastTagBase:Ljava/lang/String;

.field private vastXml:Lcom/openx/model/vast/VASTParser;

.field private videoAdEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/video/VideoAdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoAdRequestListener:Lcom/openx/model/vast/VideoAdRequestListener;

.field private videoContainer:Landroid/widget/RelativeLayout;

.field private videoInfoListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/video/VideoInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoPlayer:Lcom/openx/model/video/VideoPlayer;

.field private videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

.field private videoProperties:Lcom/openx/model/video/CustomVideoAdProperties;

.field private videoView:Landroid/widget/VideoView;

.field private visitAdvertiserLink:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/openx/model/video/VideoAdManager;->scrubThreshhold:D

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->status:I

    .line 110
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    .line 111
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenTemp:Z

    .line 113
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenOnOrientationChange:Z

    .line 134
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->hasStarted:Z

    .line 145
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isMuteOnAutoPlay:Z

    .line 147
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->sendMuteEvents:Z

    .line 1547
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->makeError:Z

    .line 1921
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q1:Z

    .line 1922
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q2:Z

    .line 1923
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q3:Z

    .line 1924
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q4:Z

    .line 2799
    const/4 v0, 0x5

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->nestingLimit:I

    .line 2800
    iput v2, p0, Lcom/openx/model/video/VideoAdManager;->responseNum:I

    .line 3212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoAdEventListeners:Ljava/util/ArrayList;

    .line 3213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoInfoListeners:Ljava/util/ArrayList;

    .line 200
    sput-object p1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    .line 202
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V

    .line 204
    :cond_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openx/core/sdk/OXMManagersResolver;->prepare(Landroid/content/Context;)V

    .line 206
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->initTimeOffsets()V

    .line 208
    new-instance v0, Lcom/openx/video/statemachine/StateMachine;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/StateMachine;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/openx/model/video/VideoAdManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/openx/model/video/VideoAdManager;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->status:I

    return v0
.end method

.method static synthetic access$1000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->playLarge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/openx/model/video/VideoAdManager;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/openx/model/video/VideoAdManager;->status:I

    return p1
.end method

.method static synthetic access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdEvent$Event;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/openx/model/video/VideoAdManager;)D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/openx/model/video/VideoAdManager;D)D
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->q1:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->q1:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->q2:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->q2:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->q3:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->q3:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->q4:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/openx/model/video/VideoAdManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/model/video/VideoAdManager;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->visitAdvertiser()V

    return-void
.end method

.method static synthetic access$2102(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->isError:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInterstitial:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->initializeAdVariables()V

    return-void
.end method

.method static synthetic access$2800(Lcom/openx/model/video/VideoAdManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/openx/model/video/VideoAdManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/openx/model/video/VideoAdManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/openx/model/video/VideoAdManager;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/openx/model/video/VideoAdManager;->contentPlayhead:I

    return p1
.end method

.method static synthetic access$3102(Lcom/openx/model/video/VideoAdManager;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    return p1
.end method

.method static synthetic access$3200(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->startContentVideo()V

    return-void
.end method

.method static synthetic access$3300(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->loadVastTag()V

    return-void
.end method

.method static synthetic access$3500(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isAdSkipped:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->isAdSkipped:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/video/VideoAdManager$InterstitialThread;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdManager$InterstitialThread;)Lcom/openx/model/video/VideoAdManager$InterstitialThread;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/openx/model/video/VideoAdManager;)D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/openx/model/video/VideoAdManager;->scrubThreshhold:D

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/vast/VASTParser;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isFullScreen:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->canTrackTimeOffsets:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->isContentPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->trackTimeOffsets()V

    return-void
.end method

.method static synthetic access$4300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/openx/model/video/VideoAdManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->swapVideoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/openx/model/video/VideoAdManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->prepareVideo()V

    return-void
.end method

.method static synthetic access$4802(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->sendMuteEvents:Z

    return p1
.end method

.method static synthetic access$500(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenTemp:Z

    return v0
.end method

.method static synthetic access$702(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    return p1
.end method

.method static synthetic access$800(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    return v0
.end method

.method static synthetic access$802(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    return p1
.end method

.method static synthetic access$900(Lcom/openx/model/video/VideoAdManager;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isThumbnailClicked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/openx/model/video/VideoAdManager;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->isThumbnailClicked:Z

    return p1
.end method

.method private adBreak()V
    .locals 2

    .prologue
    .line 2201
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlayhead:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :goto_0
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$7;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$7;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2219
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 2221
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->initializeAdVariables()V

    .line 2223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->canTrackTimeOffsets:Z

    .line 2225
    const-string v0, "STATE_MACHINE"

    const-string v1, " loadVASTTag at an adbreak "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->loadVastTag()V

    .line 2227
    return-void

    .line 2203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private adCloseHandler()V
    .locals 1

    .prologue
    .line 3777
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3778
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->close()V

    .line 3780
    return-void
.end method

.method private adCloseLinearHandler()V
    .locals 1

    .prologue
    .line 3769
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSELINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3770
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->close()V

    .line 3772
    return-void
.end method

.method private adCompleteHandler()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3549
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 3551
    const-string v2, "DIF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    const-wide v2, 0x4052c00000000000L    # 75.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->scrubThreshhold:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isAdSkipped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->q4:Z

    if-nez v0, :cond_0

    .line 3557
    const-string v0, "DIF"

    const-string v1, " COMPLETE"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    iput-boolean v7, p0, Lcom/openx/model/video/VideoAdManager;->q4:Z

    .line 3559
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3562
    :cond_0
    iput v6, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    .line 3564
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    if-nez v0, :cond_a

    .line 3567
    iput v6, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    .line 3569
    iput-boolean v6, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    .line 3572
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInterstitial:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    if-eqz v0, :cond_8

    :cond_1
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isThumbnailClicked:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->isAdCompletedPlayBack()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3575
    new-instance v0, Lcom/openx/model/video/VideoAdManager$13;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoAdManager$13;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    .line 3612
    new-instance v1, Lcom/openx/view/video/network/VideoThumbnailTask;

    sget-object v2, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3, v0}, Lcom/openx/view/video/network/VideoThumbnailTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;)V

    iput-object v1, p0, Lcom/openx/model/video/VideoAdManager;->thumbnailTask:Lcom/openx/view/video/network/VideoThumbnailTask;

    .line 3615
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 3617
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->adURI:Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 3619
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->adURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 3626
    :cond_2
    :goto_0
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 3627
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbnailTask:Lcom/openx/view/video/network/VideoThumbnailTask;

    new-array v2, v7, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Lcom/openx/view/video/network/VideoThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3642
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3645
    :cond_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    instance-of v0, v0, Lcom/openx/view/video/PublisherVideoView;

    if-eqz v0, :cond_5

    .line 3647
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    check-cast v0, Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v7}, Lcom/openx/view/video/PublisherVideoView;->setCanOverrideDraw(Z)V

    .line 3650
    :cond_5
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->startContentVideo()V

    .line 3660
    :cond_6
    :goto_2
    return-void

    .line 3621
    :cond_7
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    instance-of v0, v0, Lcom/openx/model/video/VideoPlayer;

    if-eqz v0, :cond_2

    .line 3623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    check-cast v0, Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getPreloadedVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    goto :goto_0

    .line 3630
    :cond_8
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInterstitial:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    if-eqz v0, :cond_3

    :cond_9
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isThumbnailClicked:Z

    if-eqz v0, :cond_3

    .line 3633
    iput-boolean v6, p0, Lcom/openx/model/video/VideoAdManager;->isThumbnailClicked:Z

    .line 3635
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3637
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->playLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3639
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 3657
    :cond_a
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->onComplete()V

    goto :goto_2
.end method

.method private adExitFullscreenHandler()V
    .locals 1

    .prologue
    .line 3483
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->makeCollapsedScreen()V

    .line 3487
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->isAdCompletedPlayBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3489
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_EXITFULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3490
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_COLLAPSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3492
    :cond_0
    return-void
.end method

.method private adFullscreenHandler()V
    .locals 1

    .prologue
    .line 3466
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->makeFullScreen()V

    .line 3469
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->isAdCompletedPlayBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3471
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_FULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3472
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_EXPAND:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3474
    :cond_0
    return-void
.end method

.method private adMuteHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3743
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->sendMuteEvents:Z

    if-eqz v0, :cond_0

    .line 3748
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3749
    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager;->sendMuteEvents:Z

    .line 3758
    :goto_0
    return-void

    .line 3754
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/StateMachine;->setIsOrientationChanged(Z)V

    .line 3755
    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager;->sendMuteEvents:Z

    goto :goto_0
.end method

.method private adPauseHandler()V
    .locals 1

    .prologue
    .line 3720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    .line 3722
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3723
    return-void
.end method

.method private adPreparedHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2564
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2570
    :cond_0
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->canAutoPlay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2573
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 2575
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setPaused()V

    .line 2641
    :goto_0
    return-void

    .line 2580
    :cond_1
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    if-nez v0, :cond_2

    .line 2582
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 2585
    :cond_2
    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    if-lez v0, :cond_4

    .line 2588
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 2590
    iput v2, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    .line 2637
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setStarted()V

    goto :goto_0

    .line 2604
    :cond_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getIsOrientationChanged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2606
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_START:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 2609
    :cond_5
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->canAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2620
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getIsOrientationChanged()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2623
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setTrackingImpression()V

    .line 2625
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    .line 2626
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q1:Z

    .line 2627
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q2:Z

    .line 2628
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q3:Z

    .line 2629
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q4:Z

    goto :goto_1
.end method

.method private adResumeHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3697
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  making visitAdvertiserLink VISIBLE"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3700
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3703
    :cond_0
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    .line 3710
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3715
    return-void
.end method

.method private adSkippedHandler()V
    .locals 0

    .prologue
    .line 3665
    return-void
.end method

.method private adStartHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3684
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  making visitAdvertiserLink VISIBLE"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3687
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3690
    :cond_0
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    .line 3692
    return-void
.end method

.method private adUnmuteHandler()V
    .locals 1

    .prologue
    .line 3763
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_UNMUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->track(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3764
    return-void
.end method

.method private adWindowFocusHandler()V
    .locals 1

    .prologue
    .line 3402
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->bubbleUpWindowFocusedEventDirectlyToView(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    .line 3406
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadResume()V

    .line 3407
    return-void
.end method

.method private adWindowNoFocusHandler()V
    .locals 1

    .prologue
    .line 3412
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->bubbleUpWindowFocusedEventDirectlyToView(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3414
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 3415
    return-void
.end method

.method private bubbleUpWindowFocusedEventDirectlyToView(Lcom/openx/model/video/VideoAdEvent$Event;)V
    .locals 3

    .prologue
    .line 3442
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoAdEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/video/VideoAdEventListener;

    .line 3449
    instance-of v2, v0, Lcom/openx/model/video/VideoAdManager;

    if-nez v2, :cond_0

    .line 3451
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    instance-of v2, v2, Lcom/openx/view/video/PublisherVideoView;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/openx/model/video/VideoPlayer;

    if-eqz v2, :cond_1

    .line 3453
    invoke-interface {v0, p1}, Lcom/openx/model/video/VideoAdEventListener;->onVideoAdEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0

    .line 3455
    :cond_1
    instance-of v2, v0, Lcom/openx/model/video/VideoPlayer;

    if-nez v2, :cond_0

    .line 3457
    invoke-interface {v0, p1}, Lcom/openx/model/video/VideoAdEventListener;->onVideoAdEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0

    .line 3462
    :cond_2
    return-void
.end method

.method private close()V
    .locals 0

    .prologue
    .line 3789
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 3790
    return-void
.end method

.method private completeHandler()V
    .locals 2

    .prologue
    .line 3503
    :try_start_0
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3510
    :goto_0
    return-void

    .line 3505
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private contentCloseHandler()V
    .locals 0

    .prologue
    .line 3784
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->close()V

    .line 3785
    return-void
.end method

.method private contentCompleteHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3514
    const-string v0, "VideoAdManager"

    const-string v1, "video ad manager: contentPlayhead to 0, on contentcompletion"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    iput v2, p0, Lcom/openx/model/video/VideoAdManager;->contentPlayhead:I

    .line 3517
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    if-nez v0, :cond_1

    .line 3520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    .line 3522
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->initializeAdVariables()V

    .line 3524
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->end()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3526
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3528
    const-string v0, "STATE_MACHINE"

    const-string v1, " loadVASTTag to get the Post roll ad on content completion"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->loadVastTag()V

    .line 3543
    :goto_0
    return-void

    .line 3534
    :cond_0
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->onComplete()V

    goto :goto_0

    .line 3541
    :cond_1
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->onComplete()V

    goto :goto_0
.end method

.method private contentExitFullscreenHandler()V
    .locals 0

    .prologue
    .line 3496
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->makeCollapsedScreen()V

    .line 3497
    return-void
.end method

.method private contentFullscreenHandler()V
    .locals 0

    .prologue
    .line 3478
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->makeFullScreen()V

    .line 3479
    return-void
.end method

.method private contentPauseHandler()V
    .locals 1

    .prologue
    .line 3728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    .line 3730
    return-void
.end method

.method private contentPreparedHandler()V
    .locals 4

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2468
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->getTimeOffsets(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2470
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/video/VideoInfoListener;

    .line 2476
    iget-object v3, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    instance-of v3, v3, Lcom/openx/view/video/PublisherVideoView;

    if-eqz v3, :cond_3

    instance-of v3, v0, Lcom/openx/model/video/VideoPlayer;

    if-eqz v3, :cond_3

    .line 2478
    new-instance v3, Lcom/openx/model/video/AdBreaks;

    invoke-direct {v3, v1}, Lcom/openx/model/video/AdBreaks;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v3}, Lcom/openx/model/video/VideoInfoListener;->onVideoInfoReceived(Lcom/openx/model/video/VideoInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2488
    :catch_0
    move-exception v0

    .line 2493
    :cond_2
    const-string v0, "STATE_MACHINE"

    const-string v1, " onPrepared 2650"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/openx/model/video/VideoAdManager;->contentPlayhead:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 2497
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->canAutoPlay()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2500
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 2516
    :goto_1
    return-void

    .line 2480
    :cond_3
    :try_start_1
    instance-of v3, v0, Lcom/openx/model/video/VideoPlayer;

    if-nez v3, :cond_1

    .line 2482
    new-instance v3, Lcom/openx/model/video/AdBreaks;

    invoke-direct {v3, v1}, Lcom/openx/model/video/AdBreaks;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v3}, Lcom/openx/model/video/VideoInfoListener;->onVideoInfoReceived(Lcom/openx/model/video/VideoInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2505
    :cond_4
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    if-nez v0, :cond_5

    .line 2507
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 2512
    :cond_5
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setStarted()V

    goto :goto_1
.end method

.method private contentResumeHandler()V
    .locals 1

    .prologue
    .line 3677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    .line 3679
    return-void
.end method

.method private contentStartHandler()V
    .locals 1

    .prologue
    .line 3670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    .line 3672
    return-void
.end method

.method private contentWindowFocusHandler()V
    .locals 1

    .prologue
    .line 3420
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->bubbleUpWindowFocusedEventDirectlyToView(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3422
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadResume()V

    .line 3423
    return-void
.end method

.method private contentWindowNoFocusHandler()V
    .locals 1

    .prologue
    .line 3428
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->bubbleUpWindowFocusedEventDirectlyToView(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3430
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 3431
    return-void
.end method

.method private createErrorView()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/16 v4, 0xff

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v2, 0x14

    .line 1638
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    .line 1640
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    const/16 v1, 0x32

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1641
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1643
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    const-string v1, "Video Loading Error. Retry."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1645
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1647
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1648
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1650
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1652
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setErrorViewLink(Landroid/widget/TextView;)V

    .line 1653
    return-void
.end method

.method private createNonLinearAd()V
    .locals 3

    .prologue
    .line 1499
    new-instance v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->nonLinearAd:Landroid/widget/RelativeLayout;

    .line 1501
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1502
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1503
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1504
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->nonLinearAd:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->nonLinearAd:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1506
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->nonLinearAd:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1508
    return-void
.end method

.method private createOnGLobalLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 3

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->getStatusBarHeight()I

    move-result v0

    .line 813
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->getScreenHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->getNavBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 815
    new-instance v2, Lcom/openx/model/video/VideoAdManager$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/openx/model/video/VideoAdManager$2;-><init>(Lcom/openx/model/video/VideoAdManager;II)V

    iput-object v2, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 934
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private createSpinner()V
    .locals 3

    .prologue
    .line 1487
    new-instance v0, Landroid/widget/ProgressBar;

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    .line 1488
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1489
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1491
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1492
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1493
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1495
    return-void
.end method

.method private createVideoThumbnail()V
    .locals 5

    .prologue
    const/16 v4, 0x96

    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 1112
    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    .line 1113
    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->playLarge:Landroid/widget/ImageView;

    .line 1115
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1118
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1119
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->playLarge:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->playLarge:Landroid/widget/ImageView;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_play_large:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1122
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->playLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$3;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$3;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1163
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->playLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1164
    return-void
.end method

.method private createVisitAdvertiserLink()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1599
    new-instance v1, Landroid/widget/TextView;

    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1601
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->getVisitAdvertiserLink()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/openx/model/video/VideoAdManager;->setVisitAdvertiserLinkText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1610
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1611
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1613
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1614
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1615
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1616
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    invoke-virtual {p0, v1}, Lcom/openx/model/video/VideoAdManager;->setVisitAdvertiserLink(Landroid/view/View;)V

    .line 1620
    return-void

    .line 1603
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoProperties:Lcom/openx/model/video/CustomVideoAdProperties;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoProperties:Lcom/openx/model/video/CustomVideoAdProperties;

    iget-object v0, v0, Lcom/openx/model/video/CustomVideoAdProperties;->visitAdvertiserText:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/openx/model/video/VideoAdManager;->setVisitAdvertiserLinkText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private endContentPreparedEndOfPlayListHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2521
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 2522
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 2527
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setPaused()V

    .line 2529
    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfPlaylist:Z

    .line 2531
    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    .line 2533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->canTrackTimeOffsets:Z

    .line 2535
    return-void
.end method

.method private generateVideoTagURL()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1446
    .line 1449
    new-instance v1, Lcom/openx/model/adParams/URLGenerator;

    new-instance v2, Lcom/openx/model/video/VideoAdManager$GenerateURLCallback;

    invoke-direct {v2, p0, v0}, Lcom/openx/model/video/VideoAdManager$GenerateURLCallback;-><init>(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdManager$1;)V

    invoke-direct {v1, v2, v0}, Lcom/openx/model/adParams/URLGenerator;-><init>(Lcom/openx/core/network/GenerateURLListener;Lcom/openx/core/network/BaseResponseHandler;)V

    .line 1452
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v0, v0, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/openx/model/adParams/URLGenerator;->setURLParams(Lcom/openx/model/adParams/AdCallParameters;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-virtual {v1}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/adParams/AdCallParameters;->getParameters()Ljava/util/Hashtable;

    move-result-object v2

    .line 1456
    const-string v3, "mimetype"

    const-string v4, "video/mp4"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const-string v3, "dr"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-virtual {v1, v0, v2}, Lcom/openx/model/adParams/URLGenerator;->getURL(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    .line 1462
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    return-object v0
.end method

.method private getNavBarHeight()I
    .locals 4

    .prologue
    .line 654
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 655
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 656
    if-lez v1, :cond_0

    .line 658
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScreenHeight()I
    .locals 2

    .prologue
    .line 666
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 667
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 669
    if-le v0, v1, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->getNavBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 675
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->getNavBarHeight()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 5

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 799
    if-lez v1, :cond_0

    .line 801
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 803
    :cond_0
    return v0
.end method

.method private getTrackRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V
    .locals 4

    .prologue
    .line 1738
    new-instance v0, Lcom/openx/core/network/GetNetworkTask;

    invoke-direct {v0, p2}, Lcom/openx/core/network/GetNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 1739
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 1741
    iput-object p1, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 1742
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 1744
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/openx/core/network/GetNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1746
    return-void
.end method

.method private initTimeOffsets()V
    .locals 1

    .prologue
    .line 1752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    .line 1753
    return-void
.end method

.method private initializeAdVariables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2232
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isAdSkipped:Z

    .line 2233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    .line 2234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    .line 2235
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q1:Z

    .line 2236
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q2:Z

    .line 2237
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q3:Z

    .line 2238
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->q4:Z

    .line 2240
    return-void
.end method

.method private isContentPaused()Z
    .locals 1

    .prologue
    .line 3949
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z

    if-eqz v0, :cond_0

    .line 3951
    const/4 v0, 0x1

    .line 3954
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadVastTag()V
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoAdRequestListener:Lcom/openx/model/vast/VideoAdRequestListener;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoAdRequestListener:Lcom/openx/model/vast/VideoAdRequestListener;

    invoke-interface {v0}, Lcom/openx/model/vast/VideoAdRequestListener;->onAdRequested()V

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    invoke-direct {p0, v0, p0}, Lcom/openx/model/video/VideoAdManager;->postVideoRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V

    .line 1919
    return-void
.end method

.method private onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2683
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    if-eqz v0, :cond_2

    .line 2686
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    .line 2693
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2696
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2699
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInterstitial:Z

    if-nez v0, :cond_0

    .line 2704
    :cond_0
    iput v2, p0, Lcom/openx/model/video/VideoAdManager;->contentPlayhead:I

    .line 2705
    iput v2, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    .line 2707
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->initializeAdVariables()V

    .line 2708
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    .line 2710
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentCompletionListener:Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;

    if-eqz v0, :cond_1

    .line 2712
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentCompletionListener:Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;->onContentCompletion(Ljava/lang/String;Z)V

    .line 2714
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    .line 2715
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->start(Lcom/openx/core/network/OXAdRequest;)V

    .line 2754
    :goto_1
    return-void

    .line 2690
    :cond_2
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    goto :goto_0

    .line 2726
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentCompletionListener:Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;

    if-eqz v0, :cond_4

    .line 2728
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentCompletionListener:Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;->onContentCompletion(Ljava/lang/String;Z)V

    .line 2740
    :cond_4
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    .line 2742
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->startContentVideo()V

    .line 2743
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    .line 2745
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setEndOfPlaylist()V

    .line 2747
    iput-boolean v3, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfPlaylist:Z

    .line 2749
    const-string v0, "STATE_MACHINE"

    const-string v1, " justPlayedAdId = 0 "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    iput v2, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    .line 2752
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PLAYLIST_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_1
.end method

.method private postVideoRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1703
    new-instance v0, Lcom/openx/core/network/PostNetworkTask;

    invoke-direct {v0, p2}, Lcom/openx/core/network/PostNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 1704
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 1707
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 1709
    if-eqz p1, :cond_0

    .line 1711
    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1712
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 1714
    aget-object v3, v2, v5

    iput-object v3, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 1715
    aget-object v2, v2, v6

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->queryParams:Ljava/lang/String;

    .line 1720
    :cond_0
    new-array v2, v6, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/openx/core/network/PostNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1722
    return-void
.end method

.method private prepareVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3024
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->swapVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 3027
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3028
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->swapVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 3030
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 3032
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->swapVideoView:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    .line 3035
    :cond_0
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    .line 3037
    const-string v0, "STATE_MACHINE"

    const-string v1, "prepareVideo() setAdState(true)"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setAdPlaying()V

    .line 3044
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 3046
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setPreparing()V

    .line 3048
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->adURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3054
    :goto_0
    return-void

    .line 3050
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private preparedHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2540
    const/4 v0, 0x0

    sput-object v0, Lcom/openx/model/video/VideoAdManager;->tempVideoContainer:Landroid/view/View;

    .line 2542
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isError:Z

    .line 2544
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2546
    iput v2, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    .line 2548
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    instance-of v0, v0, Lcom/openx/view/video/PublisherVideoView;

    if-eqz v0, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    check-cast v0, Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v2}, Lcom/openx/view/video/PublisherVideoView;->setCanOverrideDraw(Z)V

    .line 2554
    :cond_0
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->canAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2556
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setMuted()V

    .line 2559
    :cond_1
    return-void
.end method

.method private sendGetVideoRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V
    .locals 4

    .prologue
    .line 1726
    new-instance v0, Lcom/openx/core/network/GetNetworkTask;

    invoke-direct {v0, p2}, Lcom/openx/core/network/GetNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 1727
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 1729
    iput-object p1, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 1730
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 1732
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/openx/core/network/GetNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1734
    return-void
.end method

.method private sendSkipOffsetSettings(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1273
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/video/VideoInfoListener;

    .line 1279
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    instance-of v2, v2, Lcom/openx/view/video/PublisherVideoView;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/openx/model/video/VideoPlayer;

    if-eqz v2, :cond_1

    .line 1281
    new-instance v2, Lcom/openx/model/video/SkipOffset;

    invoke-direct {v2, p1}, Lcom/openx/model/video/SkipOffset;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/openx/model/video/VideoInfoListener;->onVideoInfoReceived(Lcom/openx/model/video/VideoInfo;)V

    goto :goto_0

    .line 1283
    :cond_1
    instance-of v2, v0, Lcom/openx/model/video/VideoPlayer;

    if-nez v2, :cond_0

    .line 1285
    new-instance v2, Lcom/openx/model/video/SkipOffset;

    invoke-direct {v2, p1}, Lcom/openx/model/video/SkipOffset;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/openx/model/video/VideoInfoListener;->onVideoInfoReceived(Lcom/openx/model/video/VideoInfo;)V

    goto :goto_0

    .line 1290
    :cond_2
    return-void
.end method

.method private setErrorViewLink(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    .line 1554
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$5;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$5;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1594
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1595
    return-void
.end method

.method private setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;
    .locals 1

    .prologue
    .line 2666
    new-instance v0, Lcom/openx/model/video/VideoAdManager$11;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoAdManager$11;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    return-object v0
.end method

.method private setOnErrorListener()Lcom/openx/model/vast/VideoErrorListener;
    .locals 1

    .prologue
    .line 2645
    new-instance v0, Lcom/openx/model/video/VideoAdManager$10;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoAdManager$10;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    return-object v0
.end method

.method private setOnPreparedListener()Lcom/openx/model/vast/VideoPreparedListener;
    .locals 1

    .prologue
    .line 2442
    new-instance v0, Lcom/openx/model/video/VideoAdManager$9;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoAdManager$9;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    return-object v0
.end method

.method private setOnScreenListener()V
    .locals 3

    .prologue
    .line 941
    const-string v0, "VAST"

    const-string v1, "setting OnScreenListener 0"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 946
    const-string v0, "VAST"

    const-string v1, "setting OnScreenListener 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    const-string v1, "VAST"

    const-string v2, "setting OnScreenListener 2"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->createOnGLobalLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 956
    :cond_0
    return-void
.end method

.method private setTrackingImpression()V
    .locals 3

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0}, Lcom/openx/model/vast/VASTParser;->getImpressions()Ljava/util/ArrayList;

    move-result-object v0

    .line 2765
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Impression;

    .line 2767
    iget-object v0, v0, Lcom/openx/model/vast/Impression;->value:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/openx/model/video/VideoAdManager;->getTrackRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V

    goto :goto_0

    .line 2772
    :cond_0
    return-void
.end method

.method private setVASTInterface(Lcom/openx/model/vast/VASTPlayer;)V
    .locals 1

    .prologue
    .line 3795
    new-instance v0, Lcom/openx/model/video/VideoAdManager$14;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoAdManager$14;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    invoke-interface {p1, v0}, Lcom/openx/model/vast/VASTPlayer;->setVASTInterface(Lcom/openx/model/vast/VASTInterface;)V

    .line 3930
    return-void
.end method

.method private setVisitAdvertiserLinkText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1625
    if-eqz p2, :cond_0

    .line 1627
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1634
    :goto_0
    return-void

    .line 1631
    :cond_0
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    sget v1, Lcom/openx/android_sdk_openx/R$string;->visit_advertiser_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startContentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2256
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2261
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    .line 2263
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->canTrackTimeOffsets:Z

    .line 2265
    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager;->isEndOfVideo:Z

    .line 2267
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2269
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/openx/model/video/VideoAdManager$8;

    invoke-direct {v2, p0, v1}, Lcom/openx/model/video/VideoAdManager$8;-><init>(Lcom/openx/model/video/VideoAdManager;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2308
    :cond_0
    return-void
.end method

.method private startUp()V
    .locals 4

    .prologue
    .line 1929
    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->status:I

    if-gez v0, :cond_0

    .line 1932
    new-instance v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$6;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$6;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoAdManager -[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    .line 2122
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->beforeStart()V

    .line 2123
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->start()V

    .line 2126
    :cond_0
    return-void
.end method

.method private track(Lcom/openx/model/video/VideoAdEvent$Event;)V
    .locals 5

    .prologue
    .line 2777
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isAdSkipped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0, p1}, Lcom/openx/model/vast/VASTParser;->getTrackingByType(Lcom/openx/model/video/VideoAdEvent$Event;)Ljava/util/List;

    move-result-object v2

    .line 2782
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2784
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 2786
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 2788
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/openx/model/video/VideoAdManager;->getTrackRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V

    .line 2786
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2795
    :cond_0
    return-void
.end method

.method private trackTimeOffsets()V
    .locals 8

    .prologue
    .line 2133
    const/4 v0, 0x0

    .line 2134
    const-string v1, "VideoAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percentPlayed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :try_start_0
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 2144
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->firstQuartile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-static {}, Lcom/openx/model/Offset;->firstQuartile()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2147
    invoke-static {}, Lcom/openx/model/Offset;->firstQuartile()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    .line 2148
    const-string v0, "VideoAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adBreak: of first quartile is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adBreak()V

    .line 2194
    :cond_0
    :goto_1
    return-void

    .line 2139
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->midpoint()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    const-wide v4, 0x4049800000000000L    # 51.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-static {}, Lcom/openx/model/Offset;->midpoint()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 2155
    invoke-static {}, Lcom/openx/model/Offset;->midpoint()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    .line 2156
    const-string v0, "VideoAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adBreak: of midpoint is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adBreak()V

    goto :goto_1

    .line 2160
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->thirdQuartile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    const-wide v4, 0x4052c00000000000L    # 75.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v2, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    const-wide/high16 v4, 0x4053000000000000L    # 76.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-static {}, Lcom/openx/model/Offset;->thirdQuartile()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 2163
    invoke-static {}, Lcom/openx/model/Offset;->thirdQuartile()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    .line 2164
    const-string v0, "VideoAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adBreak: of 3rd quartile is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adBreak()V

    goto/16 :goto_1

    .line 2169
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2172
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, -0x64

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_5

    .line 2174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/openx/model/video/VideoAdManager;->percentPlayed:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 2177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    .line 2178
    const-string v0, "VideoAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adBreak: of 5% is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adBreak()V

    goto/16 :goto_1

    .line 2183
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 2186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    .line 2187
    const-string v0, "VideoAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adBreak: final one is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoAdManager;->justPlayedAdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adBreak()V

    goto/16 :goto_1
.end method

.method private visitAdvertiser()V
    .locals 4

    .prologue
    .line 1663
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0}, Lcom/openx/model/vast/VASTParser;->getClickTrackings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/ClickTracking;

    .line 1680
    iget-object v0, v0, Lcom/openx/model/vast/ClickTracking;->value:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/openx/model/video/VideoAdManager;->getTrackRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V

    goto :goto_1

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/openx/model/vast/VASTParser;->getClickThroughUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v0

    .line 1687
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1689
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    const-class v3, Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1691
    const-string v2, "EXTRA_URL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1692
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1693
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1699
    :cond_1
    return-void

    .line 1673
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addTimeOffset(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public addVideoAdEventListener(Lcom/openx/model/video/VideoAdEventListener;)V
    .locals 1

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoAdEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3229
    return-void
.end method

.method public addVideoInfoListener(Lcom/openx/model/video/VideoInfoListener;)V
    .locals 1

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3242
    return-void
.end method

.method public callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V
    .locals 3

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoAdEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/video/VideoAdEventListener;

    .line 3250
    instance-of v2, v0, Lcom/openx/model/video/VideoAdManager;

    if-nez v2, :cond_0

    .line 3252
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    instance-of v2, v2, Lcom/openx/view/video/PublisherVideoView;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/openx/model/video/VideoPlayer;

    if-eqz v2, :cond_1

    .line 3254
    invoke-interface {v0, p1}, Lcom/openx/model/video/VideoAdEventListener;->onVideoAdEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0

    .line 3256
    :cond_1
    instance-of v2, v0, Lcom/openx/model/video/VideoPlayer;

    if-nez v2, :cond_0

    .line 3258
    invoke-interface {v0, p1}, Lcom/openx/model/video/VideoAdEventListener;->onVideoAdEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0

    .line 3264
    :cond_2
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    sget-object v0, Lcom/openx/model/video/VideoAdManager$15;->$SwitchMap$com$openx$model$video$VideoAdEvent$Event:[I

    invoke-virtual {p1}, Lcom/openx/model/video/VideoAdEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3397
    :goto_1
    :pswitch_0
    return-void

    .line 3270
    :pswitch_1
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adPauseHandler()V

    goto :goto_1

    .line 3273
    :pswitch_2
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentPauseHandler()V

    goto :goto_1

    .line 3276
    :pswitch_3
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adStartHandler()V

    goto :goto_1

    .line 3279
    :pswitch_4
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adResumeHandler()V

    goto :goto_1

    .line 3282
    :pswitch_5
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentStartHandler()V

    goto :goto_1

    .line 3285
    :pswitch_6
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentResumeHandler()V

    goto :goto_1

    .line 3295
    :pswitch_7
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentPreparedHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentPreparedHandler()V

    .line 3297
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->preparedHandler()V

    goto :goto_1

    .line 3302
    :pswitch_8
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adPreparedHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adPreparedHandler()V

    .line 3304
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->preparedHandler()V

    goto :goto_1

    .line 3310
    :pswitch_9
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adCompleteHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adCompleteHandler()V

    .line 3313
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completeHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->completeHandler()V

    goto/16 :goto_1

    .line 3319
    :pswitch_a
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentCompleteHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentCompleteHandler()V

    .line 3321
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completeHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3322
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->completeHandler()V

    goto/16 :goto_1

    .line 3327
    :pswitch_b
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adSkippedHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adSkippedHandler()V

    .line 3330
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adCompleteHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3332
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adCompleteHandler()V

    .line 3334
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completeHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->completeHandler()V

    goto/16 :goto_1

    .line 3339
    :pswitch_c
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endContentPreparedEndOfPlayListHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->endContentPreparedEndOfPlayListHandler()V

    goto/16 :goto_1

    .line 3344
    :pswitch_d
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adFullscreenHandler()V

    goto/16 :goto_1

    .line 3347
    :pswitch_e
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentFullscreenHandler()V

    goto/16 :goto_1

    .line 3351
    :pswitch_f
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adExitFullscreenHandler()V

    goto/16 :goto_1

    .line 3354
    :pswitch_10
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentExitFullscreenHandler()V

    goto/16 :goto_1

    .line 3359
    :pswitch_11
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adMuteHandler()V

    goto/16 :goto_1

    .line 3367
    :pswitch_12
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adUnmuteHandler()V

    goto/16 :goto_1

    .line 3375
    :pswitch_13
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adCloseLinearHandler()V

    goto/16 :goto_1

    .line 3378
    :pswitch_14
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adCloseHandler()V

    goto/16 :goto_1

    .line 3381
    :pswitch_15
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentCloseHandler()V

    goto/16 :goto_1

    .line 3384
    :pswitch_16
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adWindowFocusHandler()V

    goto/16 :goto_1

    .line 3387
    :pswitch_17
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->adWindowNoFocusHandler()V

    goto/16 :goto_1

    .line 3390
    :pswitch_18
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentWindowFocusHandler()V

    goto/16 :goto_1

    .line 3393
    :pswitch_19
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->contentWindowNoFocusHandler()V

    goto/16 :goto_1

    .line 3266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public canAutoPlay()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3131
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->autoPlayConfig:Lcom/openx/model/video/VideoAdManager$AutoPlayConfigs;

    if-eqz v0, :cond_1

    .line 3134
    sget-object v0, Lcom/openx/model/video/VideoAdManager$15;->$SwitchMap$com$openx$model$video$VideoAdManager$AutoPlayConfigs:[I

    iget-object v3, p0, Lcom/openx/model/video/VideoAdManager;->autoPlayConfig:Lcom/openx/model/video/VideoAdManager$AutoPlayConfigs;

    invoke-virtual {v3}, Lcom/openx/model/video/VideoAdManager$AutoPlayConfigs;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 3160
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 3138
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 3140
    goto :goto_0

    .line 3142
    :pswitch_2
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3143
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3145
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 3147
    goto :goto_0

    :cond_0
    move v0, v1

    .line 3151
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3160
    goto :goto_0

    .line 3134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 3960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    .line 3961
    const/4 v0, 0x1

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->status:I

    .line 3962
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 3965
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 3966
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3968
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->beforeStop()V

    .line 3972
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3977
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3978
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3984
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3989
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 4000
    :goto_1
    return-void

    .line 3991
    :catch_0
    move-exception v0

    .line 3994
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3980
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllowFullscreen()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    return v0
.end method

.method public getAllowFullscreenOnOrientationChange()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenOnOrientationChange:Z

    return v0
.end method

.method public getIsContentVideoPlaying()Z
    .locals 1

    .prologue
    .line 2250
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    return v0
.end method

.method protected getIsError()Z
    .locals 1

    .prologue
    .line 2312
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isError:Z

    return v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isFullScreen:Z

    return v0
.end method

.method public getIsInFeedVideo()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    return v0
.end method

.method protected getIsInterstitial()Z
    .locals 1

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInterstitial:Z

    return v0
.end method

.method public getIsMuteOnAutoPlay()Z
    .locals 1

    .prologue
    .line 3114
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isMuteOnAutoPlay:Z

    return v0
.end method

.method protected getTimeOffsets(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    .line 1808
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->start()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->firstQuartile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1820
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->midpoint()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1827
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->thirdQuartile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1833
    const/16 v0, 0x4b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->end()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1840
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    :cond_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1847
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, -0x64

    if-le v3, v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    .line 1850
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_7

    .line 1857
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, p1

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1860
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->end()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1862
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->end()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1869
    :cond_8
    return-object v1
.end method

.method protected getVastXML()Lcom/openx/model/vast/VASTParser;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    return-object v0
.end method

.method protected getVideoContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getVisitAdvertiserLink()Landroid/view/View;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    return-object v0
.end method

.method public isAdCompletedPlayBack()Z
    .locals 1

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3173
    const/4 v0, 0x1

    .line 3175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeCollapsedScreen()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 494
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->checkedCanFillParentParams:Z

    if-nez v0, :cond_2

    .line 497
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 499
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    if-ne v4, v5, :cond_0

    .line 505
    iput-boolean v6, p0, Lcom/openx/model/video/VideoAdManager;->canFillParentParams:Z

    .line 499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_1
    iput-boolean v6, p0, Lcom/openx/model/video/VideoAdManager;->checkedCanFillParentParams:Z

    .line 514
    :cond_2
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->canFillParentParams:Z

    if-nez v0, :cond_8

    .line 517
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    if-eqz v0, :cond_7

    .line 520
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlayhead:I

    .line 529
    :goto_1
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 532
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    if-eqz v0, :cond_6

    .line 534
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    invoke-virtual {v0}, Lcom/openx/model/video/AdVideoDialog;->removeView()V

    .line 536
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/openx/model/video/VideoAdManager;->tempVideoContainer:Landroid/view/View;

    .line 538
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_3

    .line 540
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnScreenListener()V

    .line 543
    :cond_3
    iput-boolean v2, p0, Lcom/openx/model/video/VideoAdManager;->isFullScreen:Z

    .line 545
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isError:Z

    if-nez v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->initialVideoContainerParams:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 556
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 566
    :goto_2
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v4, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 589
    :goto_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 591
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 594
    :cond_5
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->container:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    invoke-virtual {v0}, Lcom/openx/model/video/AdVideoDialog;->dismiss()V

    .line 598
    iput-object v3, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    .line 650
    :cond_6
    :goto_4
    return-void

    .line 525
    :cond_7
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    goto/16 :goto_1

    .line 558
    :catch_0
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v3

    goto :goto_2

    .line 568
    :catch_1
    move-exception v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v1, v3

    .line 587
    goto :goto_3

    .line 573
    :catch_2
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v1, v3

    .line 587
    goto :goto_3

    .line 578
    :catch_3
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v1, v3

    .line 587
    goto :goto_3

    .line 583
    :catch_4
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v1, v3

    goto :goto_3

    .line 608
    :cond_8
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->initialVideoContainerParams:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 613
    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 623
    :goto_5
    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v4, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v3

    move-object v0, v3

    .line 646
    :goto_6
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 615
    :catch_5
    move-exception v0

    .line 618
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v3

    goto :goto_5

    .line 625
    :catch_6
    move-exception v0

    .line 628
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v3

    .line 644
    goto :goto_6

    .line 630
    :catch_7
    move-exception v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v0, v3

    .line 644
    goto :goto_6

    .line 635
    :catch_8
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v3

    .line 644
    goto :goto_6

    .line 640
    :catch_9
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v3

    goto :goto_6
.end method

.method public makeFullScreen()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 353
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->checkedCanFillParentParams:Z

    if-nez v0, :cond_2

    .line 356
    sget-object v0, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 358
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    if-ne v3, v4, :cond_0

    .line 364
    iput-boolean v5, p0, Lcom/openx/model/video/VideoAdManager;->canFillParentParams:Z

    .line 358
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_1
    iput-boolean v5, p0, Lcom/openx/model/video/VideoAdManager;->checkedCanFillParentParams:Z

    .line 373
    :cond_2
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->canFillParentParams:Z

    if-nez v0, :cond_a

    .line 376
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isContentVideoPlaying:Z

    if-eqz v0, :cond_7

    .line 379
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlayhead:I

    .line 388
    :goto_1
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 391
    iput-boolean v5, p0, Lcom/openx/model/video/VideoAdManager;->isFullScreen:Z

    .line 393
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_4

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    .line 398
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    const-string v0, "VAST"

    const-string v1, "removing GlobalLayoutListener "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 413
    :cond_3
    :goto_2
    iput-object v7, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 419
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    instance-of v0, v0, Lcom/openx/view/video/PublisherVideoView;

    if-eqz v0, :cond_5

    .line 421
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    check-cast v0, Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v5}, Lcom/openx/view/video/PublisherVideoView;->setCanOverrideDraw(Z)V

    .line 425
    :cond_5
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isError:Z

    if-nez v0, :cond_6

    .line 428
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 431
    :cond_6
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 434
    iput-object v7, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    .line 436
    new-instance v0, Lcom/openx/model/video/AdVideoDialog;

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/AdVideoDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    .line 438
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$1;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$1;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    invoke-virtual {v0, v1}, Lcom/openx/model/video/AdVideoDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 458
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->dialog:Lcom/openx/model/video/AdVideoDialog;

    invoke-virtual {v0}, Lcom/openx/model/video/AdVideoDialog;->show()V

    .line 475
    :goto_3
    return-void

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    goto/16 :goto_1

    .line 406
    :cond_8
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    const-string v0, "VAST"

    const-string v1, "removing GlobalLayoutListener "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2

    .line 463
    :cond_9
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 470
    :cond_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 472
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public onSDKInit()V
    .locals 1

    .prologue
    .line 3940
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->hasStarted:Z

    if-eqz v0, :cond_0

    .line 3942
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->start(Lcom/openx/core/network/OXAdRequest;)V

    .line 3943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->hasStarted:Z

    .line 3945
    :cond_0
    return-void
.end method

.method protected playClick()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->playClick()V

    .line 218
    return-void
.end method

.method public processError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isError:Z

    .line 3189
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3190
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3193
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 3194
    return-void
.end method

.method public processError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 3204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isError:Z

    .line 3206
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->errorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3207
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3209
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 3210
    return-void
.end method

.method public processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2810
    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    const-string v1, "VAST version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2812
    const-string v0, "VAST Error: "

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->processError(Ljava/lang/String;)V

    .line 3018
    :goto_0
    return-void

    .line 2817
    :cond_0
    const-string v0, "STATE_MACHINE"

    const-string v1, " processResponse() 3025"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->responseNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->responseNum:I

    .line 2837
    const/4 v0, 0x0

    .line 2843
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    if-nez v1, :cond_1

    .line 2848
    :try_start_0
    new-instance v1, Lcom/openx/model/vast/VASTParser;

    sget-object v2, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/openx/model/vast/VASTParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;
    :try_end_0
    .catch Lcom/openx/errors/VastParseError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2873
    :goto_1
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    .line 2878
    :goto_2
    invoke-virtual {v1}, Lcom/openx/model/vast/VASTParser;->getWrappedVASTXml()Lcom/openx/model/vast/VASTParser;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2880
    invoke-virtual {v1}, Lcom/openx/model/vast/VASTParser;->getWrappedVASTXml()Lcom/openx/model/vast/VASTParser;

    move-result-object v1

    goto :goto_2

    .line 2850
    :catch_0
    move-exception v1

    .line 2852
    const-string v1, "VAST Error: "

    invoke-virtual {p0, v1}, Lcom/openx/model/video/VideoAdManager;->processError(Ljava/lang/String;)V

    goto :goto_1

    .line 2865
    :cond_1
    :try_start_1
    new-instance v1, Lcom/openx/model/vast/VASTParser;

    sget-object v2, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/openx/model/vast/VASTParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/openx/errors/VastParseError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 2870
    goto :goto_1

    .line 2867
    :catch_1
    move-exception v1

    .line 2869
    const-string v1, "VAST Error: "

    invoke-virtual {p0, v1}, Lcom/openx/model/video/VideoAdManager;->processError(Ljava/lang/String;)V

    goto :goto_1

    .line 2886
    :cond_2
    if-eqz v0, :cond_3

    .line 2888
    invoke-virtual {v1, v0}, Lcom/openx/model/vast/VASTParser;->setWrapper(Lcom/openx/model/vast/VASTParser;)V

    .line 2898
    :cond_3
    if-eqz v0, :cond_4

    move-object v2, v0

    :goto_3
    invoke-virtual {v1, v2}, Lcom/openx/model/vast/VASTParser;->getVASTAdTagURI(Lcom/openx/model/vast/VASTParser;)Ljava/lang/String;

    move-result-object v1

    .line 2904
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2907
    iget v0, p0, Lcom/openx/model/video/VideoAdManager;->responseNum:I

    iget v2, p0, Lcom/openx/model/video/VideoAdManager;->nestingLimit:I

    if-ge v0, v2, :cond_5

    .line 2911
    invoke-direct {p0, v1, p0}, Lcom/openx/model/video/VideoAdManager;->sendGetVideoRequest(Ljava/lang/String;Lcom/openx/core/network/ResponseHandler;)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 2898
    goto :goto_3

    .line 2916
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST Wrapper limit reached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openx/model/video/VideoAdManager;->nestingLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST Wrapper limit reached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openx/model/video/VideoAdManager;->nestingLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->processError(Ljava/lang/String;)V

    .line 2919
    iput v5, p0, Lcom/openx/model/video/VideoAdManager;->responseNum:I

    goto/16 :goto_0

    .line 2930
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, v0, v5}, Lcom/openx/model/vast/VASTParser;->getMediaFileUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v0

    .line 2936
    :goto_4
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1, v2, v5}, Lcom/openx/model/vast/VASTParser;->getAllTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 2937
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1, v2, v5}, Lcom/openx/model/vast/VASTParser;->getImpressions(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 2938
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1, v2, v5}, Lcom/openx/model/vast/VASTParser;->getClickTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 2940
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1, v2, v5}, Lcom/openx/model/vast/VASTParser;->getSkipOffset(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v1

    .line 2942
    invoke-direct {p0, v1}, Lcom/openx/model/video/VideoAdManager;->sendSkipOffsetSettings(Ljava/lang/String;)V

    .line 2944
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "invalid media file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2947
    const-string v1, "NESTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*******--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/model/video/VideoAdManager;->adURI:Landroid/net/Uri;

    .line 2951
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->canAutoPlay()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2954
    new-instance v1, Lcom/openx/model/video/VideoAdManager$12;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$12;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    .line 2993
    new-instance v2, Lcom/openx/view/video/network/VideoThumbnailTask;

    sget-object v3, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager;->thumbNailImageView:Landroid/widget/ImageView;

    invoke-direct {v2, v3, v4, v1}, Lcom/openx/view/video/network/VideoThumbnailTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;)V

    iput-object v2, p0, Lcom/openx/model/video/VideoAdManager;->thumbnailTask:Lcom/openx/view/video/network/VideoThumbnailTask;

    .line 2995
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 2997
    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 2999
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 3000
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbnailTask:Lcom/openx/view/video/network/VideoThumbnailTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/openx/view/video/network/VideoThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2930
    :cond_7
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0, v1, v5}, Lcom/openx/model/vast/VASTParser;->getMediaFileUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 3005
    :cond_8
    const-string v0, "STATE_MACHINE"

    const-string v1, " calling prepareVideo()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->prepareVideo()V

    goto/16 :goto_0

    .line 3013
    :cond_9
    const-string v0, "invalid path or media file type"

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->processError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setAllowFullscreen(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    .line 266
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenTemp:Z

    .line 268
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->playFullscreen:Z

    if-eqz v0, :cond_0

    .line 271
    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    .line 272
    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenTemp:Z

    .line 275
    :cond_0
    return-void
.end method

.method public setAllowFullscreenOnOrientationChange(Z)V
    .locals 0

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenOnOrientationChange:Z

    .line 308
    return-void
.end method

.method public setAutoPlayConfigs(Lcom/openx/model/video/VideoAdManager$AutoPlayConfigs;)V
    .locals 0

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->autoPlayConfig:Lcom/openx/model/video/VideoAdManager$AutoPlayConfigs;

    .line 3075
    return-void
.end method

.method public setContentCompletionListener(Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->contentCompletionListener:Lcom/openx/model/video/VideoAdManager$ContentCompletionListener;

    .line 713
    return-void
.end method

.method public setContentVideoContainer(Landroid/widget/RelativeLayout;)V
    .locals 2

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoContainer:Landroid/widget/RelativeLayout;

    .line 1024
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutWidth:I

    .line 1025
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutHeight:I

    .line 1027
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->initialVideoContainerParams:Ljava/lang/Object;

    .line 1029
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->container:Landroid/view/ViewGroup;

    .line 1031
    instance-of v0, p1, Lcom/openx/model/vast/VASTPlayer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1034
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setVASTInterface(Lcom/openx/model/vast/VASTPlayer;)V

    move-object v0, p1

    .line 1036
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoCompletionListener(Lcom/openx/model/vast/VideoCompletionListener;)V

    move-object v0, p1

    .line 1037
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnPreparedListener()Lcom/openx/model/vast/VideoPreparedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoPreparedListener(Lcom/openx/model/vast/VideoPreparedListener;)V

    .line 1038
    check-cast p1, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnErrorListener()Lcom/openx/model/vast/VideoErrorListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/openx/model/vast/VASTPlayer;->setVideoErrorListener(Lcom/openx/model/vast/VideoErrorListener;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public setContentVideoView(Landroid/widget/VideoView;)V
    .locals 2

    .prologue
    .line 976
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoView:Landroid/widget/VideoView;

    .line 978
    instance-of v0, p1, Lcom/openx/model/vast/VASTPlayer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 980
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setVASTInterface(Lcom/openx/model/vast/VASTPlayer;)V

    move-object v0, p1

    .line 981
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoCompletionListener(Lcom/openx/model/vast/VideoCompletionListener;)V

    move-object v0, p1

    .line 983
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnPreparedListener()Lcom/openx/model/vast/VideoPreparedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoPreparedListener(Lcom/openx/model/vast/VideoPreparedListener;)V

    move-object v0, p1

    .line 984
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnErrorListener()Lcom/openx/model/vast/VideoErrorListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoErrorListener(Lcom/openx/model/vast/VideoErrorListener;)V

    .line 988
    :cond_0
    instance-of v0, p1, Lcom/openx/model/video/VideoAdEventListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 990
    check-cast v0, Lcom/openx/model/video/VideoAdEventListener;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->addVideoAdEventListener(Lcom/openx/model/video/VideoAdEventListener;)V

    .line 993
    :cond_1
    instance-of v0, p1, Lcom/openx/model/video/VideoInfoListener;

    if-eqz v0, :cond_2

    .line 995
    check-cast p1, Lcom/openx/model/video/VideoInfoListener;

    invoke-virtual {p0, p1}, Lcom/openx/model/video/VideoAdManager;->addVideoInfoListener(Lcom/openx/model/video/VideoInfoListener;)V

    .line 997
    :cond_2
    return-void
.end method

.method public setCustomVideoAdProperties(Lcom/openx/model/video/CustomVideoAdProperties;)V
    .locals 1

    .prologue
    .line 1261
    if-eqz p1, :cond_0

    .line 1262
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->videoProperties:Lcom/openx/model/video/CustomVideoAdProperties;

    .line 1264
    invoke-virtual {p1}, Lcom/openx/model/video/CustomVideoAdProperties;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->sendSkipOffsetSettings(Ljava/lang/String;)V

    .line 1266
    :cond_0
    return-void
.end method

.method public setIsInFeedVideo(Z)V
    .locals 0

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    .line 782
    return-void
.end method

.method public setMuteOnAutoPlay(Z)V
    .locals 1

    .prologue
    .line 3089
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->isMuteOnAutoPlay:Z

    .line 3090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->sendMuteEvents:Z

    .line 3092
    if-eqz p1, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setMuted()V

    .line 3100
    :goto_0
    return-void

    .line 3098
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setUnMuted()V

    goto :goto_0
.end method

.method public setPlayFullscreen(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/openx/model/video/VideoAdManager;->playFullscreen:Z

    .line 234
    if-eqz p1, :cond_0

    .line 237
    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreen:Z

    .line 238
    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->allowFullscreenTemp:Z

    .line 242
    :cond_0
    return-void
.end method

.method public setVASTTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->vastTagBase:Ljava/lang/String;

    .line 1238
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    .line 1240
    return-void
.end method

.method protected setVideoAdRequestListener(Lcom/openx/model/vast/VideoAdRequestListener;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->videoAdRequestListener:Lcom/openx/model/vast/VideoAdRequestListener;

    .line 725
    return-void
.end method

.method public setVideoContainer(Landroid/widget/RelativeLayout;)V
    .locals 2

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    .line 1068
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    const-string v1, "videoContainer"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->hasStarted:Z

    if-nez v0, :cond_0

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isCustomVideoView:Z

    .line 1074
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_1

    .line 1079
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutWidth:I

    .line 1080
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/openx/model/video/VideoAdManager;->initialLayoutHeight:I

    .line 1082
    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->initialVideoContainerParams:Ljava/lang/Object;

    .line 1084
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->container:Landroid/view/ViewGroup;

    .line 1088
    :cond_1
    instance-of v0, p1, Lcom/openx/model/vast/VASTPlayer;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1091
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setVASTInterface(Lcom/openx/model/vast/VASTPlayer;)V

    move-object v0, p1

    .line 1093
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoCompletionListener(Lcom/openx/model/vast/VideoCompletionListener;)V

    move-object v0, p1

    .line 1094
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnPreparedListener()Lcom/openx/model/vast/VideoPreparedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoPreparedListener(Lcom/openx/model/vast/VideoPreparedListener;)V

    .line 1095
    check-cast p1, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnErrorListener()Lcom/openx/model/vast/VideoErrorListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/openx/model/vast/VASTPlayer;->setVideoErrorListener(Lcom/openx/model/vast/VideoErrorListener;)V

    .line 1098
    :cond_2
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->createVideoThumbnail()V

    .line 1100
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->createNonLinearAd()V

    .line 1102
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->createSpinner()V

    .line 1103
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->createErrorView()V

    .line 1105
    return-void
.end method

.method public setVideoContentPlaylist(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    .line 1218
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setInPlaylist()V

    .line 1219
    return-void
.end method

.method public setVideoContentUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    .line 1189
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setNotPlaylist()V

    .line 1191
    return-void
.end method

.method setVideoPlayerClosedListener(Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    .line 719
    return-void
.end method

.method public setVideoView(Landroid/widget/VideoView;)V
    .locals 2

    .prologue
    .line 742
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    .line 744
    instance-of v0, p1, Lcom/openx/model/vast/VASTPlayer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 746
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setVASTInterface(Lcom/openx/model/vast/VASTPlayer;)V

    move-object v0, p1

    .line 747
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoCompletionListener(Lcom/openx/model/vast/VideoCompletionListener;)V

    move-object v0, p1

    .line 749
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnPreparedListener()Lcom/openx/model/vast/VideoPreparedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoPreparedListener(Lcom/openx/model/vast/VideoPreparedListener;)V

    move-object v0, p1

    .line 750
    check-cast v0, Lcom/openx/model/vast/VASTPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnErrorListener()Lcom/openx/model/vast/VideoErrorListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoErrorListener(Lcom/openx/model/vast/VideoErrorListener;)V

    .line 754
    :cond_0
    instance-of v0, p1, Lcom/openx/model/video/VideoAdEventListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 756
    check-cast v0, Lcom/openx/model/video/VideoAdEventListener;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->addVideoAdEventListener(Lcom/openx/model/video/VideoAdEventListener;)V

    .line 759
    :cond_1
    instance-of v0, p1, Lcom/openx/model/video/VideoInfoListener;

    if-eqz v0, :cond_2

    .line 761
    check-cast p1, Lcom/openx/model/video/VideoInfoListener;

    invoke-virtual {p0, p1}, Lcom/openx/model/video/VideoAdManager;->addVideoInfoListener(Lcom/openx/model/video/VideoInfoListener;)V

    .line 764
    :cond_2
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    if-eqz v0, :cond_3

    .line 766
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnScreenListener()V

    .line 769
    :cond_3
    return-void
.end method

.method public setVisitAdvertiserLink(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    .line 1528
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$4;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$4;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1539
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->visitAdvertiserLink:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1540
    return-void
.end method

.method public start(Lcom/openx/core/network/OXAdRequest;)V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1315
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager;->adRequest:Lcom/openx/core/network/OXAdRequest;

    .line 1316
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    .line 1318
    iput-boolean v12, p0, Lcom/openx/model/video/VideoAdManager;->hasStarted:Z

    .line 1442
    :goto_0
    return-void

    .line 1322
    :cond_0
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isInFeedVideo:Z

    if-eqz v0, :cond_1

    .line 1324
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnScreenListener()V

    .line 1326
    iput-object v4, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    .line 1328
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1330
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    :cond_1
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->generateVideoTagURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    .line 1336
    const-string v0, "VideoAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video video: generated url :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    if-nez v0, :cond_3

    .line 1341
    new-instance v0, Lcom/openx/model/video/VideoPlayer;

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    iget-object v3, p0, Lcom/openx/model/video/VideoAdManager;->preloadedAdVideoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-boolean v7, p0, Lcom/openx/model/video/VideoAdManager;->isPreloadedVideo:Z

    iget-object v8, p0, Lcom/openx/model/video/VideoAdManager;->vastTag:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/openx/model/video/VideoAdManager;->playFullscreen:Z

    iget-object v10, p0, Lcom/openx/model/video/VideoAdManager;->videoProperties:Lcom/openx/model/video/CustomVideoAdProperties;

    move-object v6, v4

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/openx/model/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;Ljava/lang/String;Ljava/lang/String;Lcom/openx/model/vast/VASTParser;Landroid/content/Intent;ZLjava/lang/String;ZLcom/openx/model/video/CustomVideoAdProperties;Lcom/openx/model/video/VideoAdManager;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    .line 1343
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->addVideoAdEventListener(Lcom/openx/model/video/VideoAdEventListener;)V

    .line 1344
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->addVideoInfoListener(Lcom/openx/model/video/VideoInfoListener;)V

    .line 1346
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 1348
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setVideoContainer(Landroid/widget/RelativeLayout;)V

    .line 1358
    :goto_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setVASTInterface(Lcom/openx/model/vast/VASTPlayer;)V

    .line 1360
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 1362
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1369
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoAdManager;->setVideoView(Landroid/widget/VideoView;)V

    .line 1373
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1375
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    .line 1380
    :cond_4
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->createVisitAdvertiserLink()V

    .line 1382
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    instance-of v0, v0, Lcom/openx/model/video/VideoPlayer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    check-cast v0, Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getPreloadedVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v12

    :goto_3
    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPreloadedVideo:Z

    .line 1384
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;

    .line 1387
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->timeOffsets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/openx/model/Offset;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1392
    const-string v0, "STATE_MACHINE"

    const-string v1, " loadVASTTag for start ad"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->loadVastTag()V

    .line 1431
    :goto_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    if-nez v0, :cond_b

    .line 1434
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->startUp()V

    goto/16 :goto_0

    .line 1352
    :cond_5
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoCompletionListener(Lcom/openx/model/vast/VideoCompletionListener;)V

    .line 1353
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnPreparedListener()Lcom/openx/model/vast/VideoPreparedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoPreparedListener(Lcom/openx/model/vast/VideoPreparedListener;)V

    .line 1354
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->setOnErrorListener()Lcom/openx/model/vast/VideoErrorListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTPlayer;->setVideoErrorListener(Lcom/openx/model/vast/VideoErrorListener;)V

    goto/16 :goto_1

    .line 1364
    :cond_6
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1366
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->videoPlayer:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0, v1, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    :cond_7
    move v0, v13

    .line 1382
    goto :goto_3

    .line 1399
    :cond_8
    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isPreloadedVideo:Z

    if-nez v0, :cond_a

    .line 1402
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->contentVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1407
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->startContentVideo()V

    goto :goto_4

    .line 1414
    :cond_9
    iput-boolean v12, p0, Lcom/openx/model/video/VideoAdManager;->isInterstitial:Z

    .line 1415
    const-string v0, "STATE_MACHINE"

    const-string v1, " loadVASTTag"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->loadVastTag()V

    goto :goto_4

    .line 1423
    :cond_a
    iput-boolean v12, p0, Lcom/openx/model/video/VideoAdManager;->isInterstitial:Z

    .line 1424
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    check-cast v0, Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getVASTXml()Lcom/openx/model/vast/VASTParser;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/video/VideoAdManager;->vastXml:Lcom/openx/model/vast/VASTParser;

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/openx/model/video/VideoAdManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    check-cast v0, Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getPreloadedVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->stateMachine:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v1}, Lcom/openx/video/statemachine/StateMachine;->setAdPlaying()V

    .line 1427
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 1439
    :cond_b
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager;->threadResume()V

    goto/16 :goto_0
.end method

.method public threadResume()V
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->beforeStart()V

    .line 2418
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isCustomVideoView:Z

    if-eqz v0, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 2438
    :cond_0
    :goto_0
    return-void

    .line 2428
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/openx/model/video/VideoAdManager;->status:I

    .line 2429
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager;->startUp()V

    .line 2431
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2433
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->beforeStart()V

    .line 2434
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/model/video/VideoAdManager;->isCustomVideoView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method

.method public threadStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2360
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->updateThread:Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2363
    const-string v0, "VAST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadKill 1: adPlayhead : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoAdManager;->adPlayhead:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    iput v3, p0, Lcom/openx/model/video/VideoAdManager;->status:I

    .line 2366
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbnailTask:Lcom/openx/view/video/network/VideoThumbnailTask;

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->thumbnailTask:Lcom/openx/view/video/network/VideoThumbnailTask;

    invoke-virtual {v0, v3}, Lcom/openx/view/video/network/VideoThumbnailTask;->cancel(Z)Z

    .line 2371
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    instance-of v0, v0, Lcom/openx/model/video/VideoPlayer;

    if-eqz v0, :cond_1

    .line 2374
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    check-cast v0, Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getOrientationManager()Lcom/openx/view/mraid/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationManager;->disableOrientationListener()V

    .line 2376
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager;->videoContainer:Landroid/widget/RelativeLayout;

    check-cast v0, Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getOrientationManager()Lcom/openx/view/mraid/OrientationManager;

    .line 2381
    :cond_1
    return-void
.end method
