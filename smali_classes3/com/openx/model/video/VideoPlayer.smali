.class public Lcom/openx/model/video/VideoPlayer;
.super Landroid/widget/RelativeLayout;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/openx/model/vast/VASTPlayer;
.implements Lcom/openx/model/video/VideoAdEventListener;
.implements Lcom/openx/model/video/VideoInfoListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/model/video/VideoPlayer$21;,
        Lcom/openx/model/video/VideoPlayer$StoppableRunnable;,
        Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;
    }
.end annotation


# static fields
.field public static final SHOW_BACK_EXTRA:Ljava/lang/String; = "open_show_back"

.field public static final SHOW_FORWARD_EXTRA:Ljava/lang/String; = "open_show_forward"

.field public static final SHOW_REFRESH_EXTRA:Ljava/lang/String; = "open_show_refresh"

.field private static final TAG:Ljava/lang/String; = "VideoPlayer"

.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"

.field private static final skipFormat:Ljava/lang/String; = "HH:mm:ss.SSS"


# instance fields
.field adBreakHolder:Landroid/widget/RelativeLayout;

.field private adBreaks:Lcom/openx/model/video/AdBreaks;

.field bottomBar:Landroid/widget/LinearLayout;

.field private canSeek:Z

.field private closeButton:Landroid/widget/ImageButton;

.field container:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field customSeekbar:Landroid/widget/SeekBar;

.field private duration:I

.field private hours:I

.field private isEndOfVideo:Z

.field private isFullScreen:Z

.field private isPaused:Z

.field private isPreparing:Z

.field private isRunning:Z

.field private isScrubbing:Z

.field private isSkipFromVast:Z

.field private isSkippable:Z

.field private isSkipped:Z

.field private isStopped:Z

.field private mHandler:Landroid/os/Handler;

.field private mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

.field private mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private minutes:I

.field private muted:Z

.field overlayParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private playAgain:Landroid/widget/TextView;

.field private playButton:Landroid/widget/ImageButton;

.field private playFullscreen:Z

.field private preloadedAdVideoPath:Ljava/lang/String;

.field progressLine:Landroid/widget/LinearLayout;

.field private properScreenHeight:I

.field private properScreenWidth:I

.field private root:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private seconds:I

.field private skipButton:Landroid/widget/ImageButton;

.field private skipCounter:I

.field private skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

.field private skipHolder:Landroid/widget/RelativeLayout;

.field private skipOffset:I

.field private skipOffsetString:Ljava/lang/String;

.field private skipOffsetStringInit:Ljava/lang/String;

.field private skipOverlay:Landroid/widget/TextView;

.field skipParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private skipProgress:Landroid/widget/TextView;

.field private soundButton:Landroid/widget/ImageButton;

.field private spinner:Landroid/widget/ProgressBar;

.field private toggleExpand:Landroid/widget/ImageButton;

.field topBar:Landroid/widget/RelativeLayout;

.field private touchListenerFalse:Landroid/view/View$OnTouchListener;

.field private touchListenerTrue:Landroid/view/View$OnTouchListener;

.field private touchTimestamp:J

.field private vastInterface:Lcom/openx/model/vast/VASTInterface;

.field private vastXml:Lcom/openx/model/vast/VASTParser;

.field private videoAdManager:Lcom/openx/model/video/VideoAdManager;

.field private videoCompletionListener:Lcom/openx/model/vast/VideoCompletionListener;

.field private videoErrorListener:Lcom/openx/model/vast/VideoErrorListener;

.field private videoHeight:I

.field private videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

.field private videoPreparedListener:Lcom/openx/model/vast/VideoPreparedListener;

.field private videoText:Landroid/widget/TextView;

.field private videoView:Lcom/openx/view/video/PublisherVideoView;

.field private videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    iput v1, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    .line 117
    iput v1, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 125
    iput-boolean v1, p0, Lcom/openx/model/video/VideoPlayer;->isSkipFromVast:Z

    .line 126
    iput-boolean v1, p0, Lcom/openx/model/video/VideoPlayer;->isPaused:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->canSeek:Z

    .line 128
    iput-boolean v1, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    .line 415
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    .line 416
    new-instance v0, Lcom/openx/model/video/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoPlayer$3;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    .line 1485
    new-instance v0, Lcom/openx/model/video/VideoPlayer$15;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoPlayer$15;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerTrue:Landroid/view/View$OnTouchListener;

    .line 1496
    new-instance v0, Lcom/openx/model/video/VideoPlayer$16;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoPlayer$16;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    .line 152
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->init()V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;Ljava/lang/String;Ljava/lang/String;Lcom/openx/model/vast/VASTParser;Landroid/content/Intent;ZLjava/lang/String;ZLcom/openx/model/video/CustomVideoAdProperties;Lcom/openx/model/video/VideoAdManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    iput v1, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    .line 117
    iput v1, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 125
    iput-boolean v1, p0, Lcom/openx/model/video/VideoPlayer;->isSkipFromVast:Z

    .line 126
    iput-boolean v1, p0, Lcom/openx/model/video/VideoPlayer;->isPaused:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->canSeek:Z

    .line 128
    iput-boolean v1, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    .line 415
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    .line 416
    new-instance v0, Lcom/openx/model/video/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoPlayer$3;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    .line 1485
    new-instance v0, Lcom/openx/model/video/VideoPlayer$15;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoPlayer$15;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerTrue:Landroid/view/View$OnTouchListener;

    .line 1496
    new-instance v0, Lcom/openx/model/video/VideoPlayer$16;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoPlayer$16;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    .line 162
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/openx/model/video/VideoPlayer;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    .line 164
    iput-object p3, p0, Lcom/openx/model/video/VideoPlayer;->preloadedAdVideoPath:Ljava/lang/String;

    .line 165
    iput-object p10, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    .line 167
    iput-object p5, p0, Lcom/openx/model/video/VideoPlayer;->vastXml:Lcom/openx/model/vast/VASTParser;

    .line 169
    iput-boolean p9, p0, Lcom/openx/model/video/VideoPlayer;->playFullscreen:Z

    .line 170
    if-eqz p10, :cond_0

    iget-object v0, p10, Lcom/openx/model/video/CustomVideoAdProperties;->skipOffset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_0
    const-string v0, "-1"

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetStringInit:Ljava/lang/String;

    .line 180
    iput-object p11, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    .line 182
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->init()V

    .line 184
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->createView()V

    .line 186
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setVideoViewEventListeners()V

    .line 188
    if-eqz p7, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->loadPreloadedVideo()V

    .line 195
    :cond_1
    return-void

    .line 176
    :cond_2
    iget-object v0, p10, Lcom/openx/model/video/CustomVideoAdProperties;->skipOffset:Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    goto :goto_0
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 783
    const-string v0, "VideoPlayer"

    const-string v1, "Could not abandon audio manager focus"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/openx/model/video/VideoPlayer;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoPlayer;->orientationChangedHandler(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/openx/model/video/VideoPlayer;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoPlayer;->getDurationText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/openx/model/video/VideoPlayer;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->duration:I

    return v0
.end method

.method static synthetic access$1200(Lcom/openx/model/video/VideoPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoPlayer;->updateView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipped:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->updateSkipHolder()V

    return-void
.end method

.method static synthetic access$1500(Lcom/openx/model/video/VideoPlayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isPreparing:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/openx/model/video/VideoPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isFullScreen:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isRunning:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->skipping()V

    return-void
.end method

.method static synthetic access$202(Lcom/openx/model/video/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/openx/model/video/VideoPlayer;->isRunning:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playAgain:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->muted:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->canSeek:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/openx/model/video/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/openx/model/video/VideoPlayer;->canSeek:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkippable:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VideoErrorListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoErrorListener:Lcom/openx/model/vast/VideoErrorListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VideoPreparedListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoPreparedListener:Lcom/openx/model/vast/VideoPreparedListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VideoCompletionListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoCompletionListener:Lcom/openx/model/vast/VideoCompletionListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/openx/model/video/VideoPlayer;Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/model/video/VideoPlayer;->onTouchBubbleUp(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/openx/model/video/VideoPlayer;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/openx/model/video/VideoPlayer;->touchTimestamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->fadeOutBar()V

    return-void
.end method

.method static synthetic access$302(Lcom/openx/model/video/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/openx/model/video/VideoPlayer;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    return v0
.end method

.method static synthetic access$3200(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setLightsOutMode()V

    return-void
.end method

.method static synthetic access$3400(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->hideBars()V

    return-void
.end method

.method static synthetic access$3600(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->spinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoPlayer$StoppableRunnable;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/openx/model/video/VideoPlayer;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    return v0
.end method

.method static synthetic access$3900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/CustomVideoAdProperties;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    return-object v0
.end method

.method static synthetic access$400(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isPaused:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/openx/model/video/VideoPlayer;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/model/video/VideoPlayer;->setSkipOverlayText(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4102(Lcom/openx/model/video/VideoPlayer;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/openx/model/video/VideoPlayer;->videoWidth:I

    return p1
.end method

.method static synthetic access$4202(Lcom/openx/model/video/VideoPlayer;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/openx/model/video/VideoPlayer;->videoHeight:I

    return p1
.end method

.method static synthetic access$4300(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->adjustPlayerSize()V

    return-void
.end method

.method static synthetic access$4400(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->playFullscreen:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/openx/model/video/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/openx/model/video/VideoPlayer;->playFullscreen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    return v0
.end method

.method static synthetic access$600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoAdManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/openx/model/video/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/view/video/PublisherVideoView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/openx/model/video/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isEndOfVideo:Z

    return v0
.end method

.method static synthetic access$902(Lcom/openx/model/video/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/openx/model/video/VideoPlayer;->isEndOfVideo:Z

    return p1
.end method

.method private adBreaksReceivedHandler(Lcom/openx/model/video/AdBreaks;)V
    .locals 0

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->adBreaks:Lcom/openx/model/video/AdBreaks;

    .line 2168
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->onContentPreparedRenderAdBreaks()V

    .line 2170
    return-void
.end method

.method private adCloseLinearHandler()V
    .locals 0

    .prologue
    .line 2181
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->animateOutSkipHolder()V

    .line 2183
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->abandonAudioFocus()V

    .line 2185
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->deletePreloadedFile()V

    .line 2187
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->close()V

    .line 2189
    return-void
.end method

.method private adCompletionHandler()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2254
    const-string v0, "VideoPlayer"

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

    const-string v2, " adCompletionHandler..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2258
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/openx/model/video/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/openx/android_sdk_openx/R$drawable;->openx_close_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2260
    const/4 v0, 0x0

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    .line 2262
    const/4 v0, -0x1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 2264
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->adSkippedHandler()V

    .line 2266
    iput-boolean v3, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    .line 2268
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2270
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->showBar()V

    .line 2271
    return-void
.end method

.method private adSkippedHandler()V
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->animateOutSkipHolder()V

    .line 2249
    :cond_0
    return-void
.end method

.method private adjustPlayerSize()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0xd

    const/4 v3, -0x1

    .line 521
    const/4 v1, 0x0

    .line 523
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastICS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v2}, Lcom/openx/view/video/PublisherVideoView;->getSystemUiVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 540
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/openx/model/video/VideoPlayer;->isFullScreen:Z

    if-eqz v1, :cond_4

    .line 543
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 544
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 545
    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v2, v1}, Lcom/openx/view/video/PublisherVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->getScreenWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v1}, Lcom/openx/view/video/PublisherVideoView;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->properScreenWidth:I

    .line 559
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 560
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 562
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 563
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    :goto_2
    return-void

    .line 532
    :cond_1
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v2}, Lcom/openx/view/video/PublisherVideoView;->getSystemUiVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->screenHeight:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v1}, Lcom/openx/view/video/PublisherVideoView;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->properScreenWidth:I

    goto :goto_1

    .line 569
    :cond_4
    if-eqz v0, :cond_5

    .line 572
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v1}, Lcom/openx/view/video/PublisherVideoView;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v1}, Lcom/openx/view/video/PublisherVideoView;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->properScreenHeight:I

    .line 580
    :goto_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 581
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 583
    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->properScreenHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 584
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 585
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 577
    :cond_5
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->properScreenHeight:I

    goto :goto_3
.end method

.method private animateOutSkipHolder()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    sget v1, Lcom/openx/android_sdk_openx/R$anim;->openx_slide_right_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 606
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->disableSkipButton()V

    .line 607
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 609
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    :cond_0
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    if-nez v0, :cond_1

    .line 771
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationManager;->disableOrientationListener()V

    .line 772
    return-void

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isRunning:Z

    .line 760
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsInterstitial()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    invoke-interface {v0}, Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;->videoPlayerClosed()V

    goto :goto_0
.end method

.method private configureBarItems()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 618
    sget v0, Lcom/openx/android_sdk_openx/R$id;->top_bar:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->topBar:Landroid/widget/RelativeLayout;

    .line 619
    sget v0, Lcom/openx/android_sdk_openx/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    .line 620
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    const v1, 0x18b72

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 621
    sget v0, Lcom/openx/android_sdk_openx/R$id;->play_button:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    .line 622
    sget v0, Lcom/openx/android_sdk_openx/R$id;->sound_button:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->soundButton:Landroid/widget/ImageButton;

    .line 623
    sget v0, Lcom/openx/android_sdk_openx/R$id;->close_button:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    .line 624
    sget v0, Lcom/openx/android_sdk_openx/R$id;->progressSkip:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipProgress:Landroid/widget/TextView;

    .line 626
    sget v0, Lcom/openx/android_sdk_openx/R$id;->overlaySkip:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    .line 627
    sget v0, Lcom/openx/android_sdk_openx/R$id;->skip_button:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipButton:Landroid/widget/ImageButton;

    .line 628
    sget v0, Lcom/openx/android_sdk_openx/R$id;->skipHolder:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    .line 630
    sget v0, Lcom/openx/android_sdk_openx/R$id;->playAgain:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playAgain:Landroid/widget/TextView;

    .line 632
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->overlayParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 634
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipProgress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 636
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$5;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$5;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playAgain:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playAgain:Landroid/widget/TextView;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$6;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$6;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 671
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$7;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$7;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->soundButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 685
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->soundButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$8;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$8;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 707
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/openx/model/video/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/openx/android_sdk_openx/R$drawable;->openx_close_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 711
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$9;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$9;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    return-void
.end method

.method private configureOnTouchListener()V
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerTrue:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1483
    return-void
.end method

.method private configureToggleExpandButton()V
    .locals 2

    .prologue
    .line 442
    sget v0, Lcom/openx/android_sdk_openx/R$id;->toggle_expand:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->toggleExpand:Landroid/widget/ImageButton;

    .line 444
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->toggleExpand:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 446
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->toggleExpand:Landroid/widget/ImageButton;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$4;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$4;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    return-void
.end method

.method private contentCloseHandler()V
    .locals 0

    .prologue
    .line 2175
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->close()V

    .line 2176
    return-void
.end method

.method private contentCompletionHandler()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2276
    const-string v0, "VideoPlayer"

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

    const-string v2, " contentCompletionHandler..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2287
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2289
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/openx/model/video/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/openx/android_sdk_openx/R$drawable;->openx_close_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2291
    iput-boolean v3, p0, Lcom/openx/model/video/VideoPlayer;->isEndOfVideo:Z

    .line 2293
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->disableSkipButton()V

    .line 2295
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2297
    return-void

    .line 2282
    :catch_0
    move-exception v0

    .line 2284
    const-string v0, "VideoPlayer"

    const-string v1, "Could not abandon audio manager focus"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createView()V
    .locals 1

    .prologue
    .line 429
    sget v0, Lcom/openx/android_sdk_openx/R$id;->spinner:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->spinner:Landroid/widget/ProgressBar;

    .line 430
    sget v0, Lcom/openx/android_sdk_openx/R$id;->emsVidIntLayout:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->root:Landroid/widget/RelativeLayout;

    .line 432
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->configureToggleExpandButton()V

    .line 434
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->configureBarItems()V

    .line 436
    sget v0, Lcom/openx/android_sdk_openx/R$id;->emsVideoText:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoText:Landroid/widget/TextView;

    .line 438
    return-void
.end method

.method private deletePreloadedFile()V
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->preloadedAdVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->preloadedAdVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 802
    :cond_0
    return-void
.end method

.method private determineSkipOffset(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v3, 0x64

    const/4 v6, 0x5

    const/4 v5, -0x1

    .line 1303
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipFromVast:Z

    if-eqz v0, :cond_0

    .line 1305
    iget-object p1, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    .line 1308
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1310
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipFromVast:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    const-string v1, "0"

    if-ne v0, v1, :cond_3

    .line 1312
    iput v5, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 1386
    :goto_0
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipFromVast:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    if-ge v0, v6, :cond_1

    .line 1388
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iput v6, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 1392
    :cond_1
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->duration:I

    if-le v0, v1, :cond_2

    .line 1394
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iput v5, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 1398
    :cond_2
    return-void

    .line 1314
    :cond_3
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipFromVast:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    const-string v1, "00:00:00.000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1316
    :cond_4
    iput v6, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto :goto_0

    .line 1318
    :cond_5
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    const-string v1, "-1"

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1320
    :cond_6
    iput v5, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto :goto_0

    .line 1322
    :cond_7
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1324
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    .line 1326
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoPlayer;->evaluateSkipOffset(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 1328
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    if-ge v0, v3, :cond_8

    .line 1331
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->duration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto/16 :goto_0

    .line 1333
    :cond_8
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    if-lt v0, v3, :cond_9

    .line 1335
    iput v5, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto/16 :goto_0

    .line 1339
    :cond_9
    iput v6, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto/16 :goto_0

    .line 1346
    :cond_a
    const/4 v0, 0x0

    .line 1350
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1357
    :goto_1
    if-eqz v0, :cond_b

    .line 1359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1360
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1362
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    .line 1363
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 1364
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1365
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1367
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 1369
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    .line 1371
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoPlayer;->evaluateSkipOffset(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto/16 :goto_0

    .line 1376
    :cond_b
    iput v5, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto/16 :goto_0

    .line 1383
    :cond_c
    iput v5, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    goto/16 :goto_0

    .line 1352
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private disableSkipButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 1931
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1933
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1934
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1935
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1936
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1938
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipProgress:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1939
    return-void
.end method

.method private enableSkipButton()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1898
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isSkippable:Z

    .line 1899
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1900
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1902
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    iget-object v0, v0, Lcom/openx/model/video/CustomVideoAdProperties;->skipText:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lcom/openx/model/video/VideoPlayer;->setSkipOverlayText(Ljava/lang/String;II)V

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1906
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1907
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1908
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1910
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$20;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$20;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1922
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1924
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/openx/model/video/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/openx/android_sdk_openx/R$drawable;->openx_close_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1925
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipProgress:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1926
    return-void
.end method

.method private evaluateSkipOffset(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1403
    .line 1405
    invoke-virtual {p0, p1}, Lcom/openx/model/video/VideoPlayer;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1419
    :goto_0
    return v0

    .line 1411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openx/model/video/VideoPlayer;->isFloat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fadeOutBar()V
    .locals 4

    .prologue
    .line 1601
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/openx/model/video/VideoPlayer$18;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$18;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1682
    return-void
.end method

.method private getDurationText(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    const-string v0, ""

    .line 303
    div-int/lit16 v0, p1, 0xe10

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    .line 304
    div-int/lit8 v0, p1, 0x3c

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->minutes:I

    .line 305
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    mul-int/lit16 v0, v0, 0xe10

    sub-int v0, p1, v0

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->minutes:I

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->seconds:I

    .line 307
    const-string v0, "%d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/openx/model/video/VideoPlayer;->minutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/openx/model/video/VideoPlayer;->seconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    return-object v0
.end method

.method private getScreenWidth()I
    .locals 2

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1698
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1700
    if-le v1, v0, :cond_0

    .line 1706
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private hideBars()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1687
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1688
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1689
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1690
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->soundButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1692
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    sget v1, Lcom/openx/android_sdk_openx/R$layout;->video_interstitial:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 202
    sget v0, Lcom/openx/android_sdk_openx/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->container:Landroid/widget/RelativeLayout;

    .line 204
    sget v0, Lcom/openx/android_sdk_openx/R$id;->emsVideoView:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/openx/view/video/PublisherVideoView;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    .line 206
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setCanOverrideDraw(Z)V

    .line 208
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setOrientationListener()V

    .line 210
    return-void
.end method

.method private loadPreloadedVideo()V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setVideoViewEventListeners()V

    .line 895
    return-void
.end method

.method private muteHandler()V
    .locals 3

    .prologue
    .line 2210
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->muted:Z

    .line 2211
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2212
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->soundButton:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_mute_disabled_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    .line 2215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openx/model/video/VideoPlayer;->touchTimestamp:J

    .line 2216
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->showBar()V

    .line 2217
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->touchDelayHandler()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    :goto_0
    return-void

    .line 2220
    :catch_0
    move-exception v0

    .line 2222
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: setPrepared 2"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAdPreparedRenderSkip()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1235
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->removeAdBreaks()V

    .line 1237
    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkippable:Z

    .line 1238
    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipped:Z

    .line 1240
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetStringInit:Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    .line 1241
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoPlayer;->determineSkipOffset(Ljava/lang/String;)V

    .line 1243
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->videoInit()V

    .line 1244
    return-void
.end method

.method private onContentPreparedRenderAdBreaks()V
    .locals 11

    .prologue
    .line 1249
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->removeAdBreaks()V

    .line 1251
    const-string v0, "-1"

    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoPlayer;->determineSkipOffset(Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->disableSkipButton()V

    .line 1254
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    .line 1256
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    sub-int v2, v0, v1

    .line 1258
    invoke-virtual {p0}, Lcom/openx/model/video/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1259
    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 1260
    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 1265
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 1267
    if-lez v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->adBreaks:Lcom/openx/model/video/AdBreaks;

    invoke-virtual {v0}, Lcom/openx/model/video/AdBreaks;->getAdBreaks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1274
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1275
    const/16 v7, 0x7f

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1277
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v0, v8

    int-to-float v8, v2

    mul-float/2addr v0, v8

    float-to-int v0, v0

    div-int/lit8 v8, v1, 0x2

    add-int/2addr v0, v8

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1279
    const/16 v0, 0xf

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1283
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->adBreakHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1292
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onPrepared 0.5"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_0
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->videoInit()V

    .line 1296
    return-void
.end method

.method private onPreparedHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1179
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v2}, Lcom/openx/view/video/PublisherVideoView;->setVisibility(I)V

    .line 1181
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->closeButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1186
    :cond_0
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->onPreparedSetDurationText()V

    .line 1188
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isEndOfVideo:Z

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :goto_0
    return-void

    .line 1194
    :catch_0
    move-exception v0

    .line 1196
    const-string v0, "ILLEGALSTATE"

    const-string v1, "setPrepared 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPreparedSetDurationText()V
    .locals 4

    .prologue
    .line 1205
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->duration:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    :goto_0
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->duration:I

    div-int/lit16 v0, v0, 0xe10

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    .line 1213
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->duration:I

    div-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->minutes:I

    .line 1214
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->duration:I

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    mul-int/lit16 v1, v1, 0xe10

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->minutes:I

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->seconds:I

    .line 1215
    const-string v0, "%d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/openx/model/video/VideoPlayer;->hours:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/openx/model/video/VideoPlayer;->minutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/openx/model/video/VideoPlayer;->seconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1217
    sget v0, Lcom/openx/android_sdk_openx/R$id;->txtDuration:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1218
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    return-void

    .line 1207
    :catch_0
    move-exception v0

    .line 1209
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onPrepared 0"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTouchBubbleUp(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1533
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1536
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    .line 1551
    :cond_0
    :goto_0
    return p3

    .line 1538
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1541
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    goto :goto_0

    .line 1544
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->touch()V

    goto :goto_0
.end method

.method private orientationChangedHandler(I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 238
    const-string v0, "VideoPlayer"

    const-string v1, "onOrientationChanged@@@@@@@@@@ 0"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-ne p1, v2, :cond_1

    .line 243
    const-string v0, "VideoPlayer"

    const-string v1, "onOrientationChanged@@@@@@@@@@ 1  LANDSCAPE"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    invoke-interface {v0, v2}, Lcom/openx/model/vast/VASTInterface;->orientationChanged(I)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v0, "VideoPlayer"

    const-string v1, "onOrientationChanged@@@@@@@@@@ 1   PORTRAIT"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VASTInterface;->orientationChanged(I)V

    goto :goto_0
.end method

.method private pauseHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 848
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isPaused:Z

    .line 850
    const-string v0, "VideoPlayer"

    const-string v1, "WINDOW_FOCUSED_CHANGED: onVisibilityChanged"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    .line 853
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isEndOfVideo:Z

    if-nez v0, :cond_0

    .line 862
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v1}, Lcom/openx/view/video/PublisherVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    const-string v0, ""

    .line 870
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 871
    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoPlayer;->getDurationText(I)Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-direct {p0, v0}, Lcom/openx/model/video/VideoPlayer;->updateView(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->pause()V

    .line 877
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 878
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 866
    const-string v0, "VideoPlayer"

    const-string v1, "SeekBar exception while getting the getCurrentPosition from videoView"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeAdBreaks()V
    .locals 3

    .prologue
    .line 1226
    sget v0, Lcom/openx/android_sdk_openx/R$id;->adBreakHolder:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->adBreakHolder:Landroid/widget/RelativeLayout;

    .line 1228
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->adBreakHolder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->adBreakHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->removeViews(II)V

    .line 1230
    return-void
.end method

.method private resumeHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 809
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v2}, Lcom/openx/view/video/PublisherVideoView;->setCanOverrideDraw(Z)V

    .line 812
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->isAdCompletedPlayBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isPaused:Z

    .line 815
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 825
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playAgain:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    :cond_0
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isEndOfVideo:Z

    if-eqz v0, :cond_1

    .line 831
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isEndOfVideo:Z

    .line 833
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    .line 835
    const-string v0, "VideoPlayer"

    const-string v1, "playHandler start()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_1
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 822
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: playHandler 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCustomSeekbar()V
    .locals 2

    .prologue
    .line 916
    sget v0, Lcom/openx/android_sdk_openx/R$id;->scrubber:I

    invoke-virtual {p0, v0}, Lcom/openx/model/video/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    .line 917
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setIndeterminate(Z)V

    .line 918
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->touchListenerFalse:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 919
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$10;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$10;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1099
    return-void
.end method

.method private setErrorListener()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$11;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$11;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1156
    return-void
.end method

.method private setLightsOnMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1126
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastICS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setSystemUiVisibility(I)V

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private setLightsOutMode()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1105
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 1109
    :cond_0
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastICS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setSystemUiVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setSystemUiVisibility(I)V

    .line 1122
    :cond_1
    :goto_0
    return-void

    .line 1116
    :cond_2
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private setOnCompletionListener()V
    .locals 2

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$14;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$14;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1476
    return-void
.end method

.method private setOnVideoAdRequestListener()V
    .locals 2

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$13;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$13;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->setVideoAdRequestListener(Lcom/openx/model/vast/VideoAdRequestListener;)V

    .line 1460
    return-void
.end method

.method private setOrientationListener()V
    .locals 3

    .prologue
    .line 215
    const-string v0, "VideoPlayer"

    const-string v1, "newing up OrientationManager in VideoPlayer"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Lcom/openx/view/mraid/OrientationManager;

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/openx/view/mraid/OrientationManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    .line 219
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->none:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    invoke-virtual {v0, v1, v2}, Lcom/openx/view/mraid/OrientationManager;->onOrientationPropertiesChanged(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V

    .line 221
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationManager;->getOrientationEventListener()Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    move-result-object v0

    new-instance v1, Lcom/openx/model/video/VideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$1;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->setOrientationChangedListener(Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;)V

    .line 233
    return-void
.end method

.method private setPreparedListener()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$12;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$12;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1174
    return-void
.end method

.method private setSkipOverlayText(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 1823
    sub-int v0, p2, p3

    if-lez v0, :cond_2

    .line 1825
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    sget v3, Lcom/openx/android_sdk_openx/R$string;->skip_default_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    iget-object v2, v2, Lcom/openx/model/video/CustomVideoAdProperties;->skipText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->context:Landroid/content/Context;

    sget v2, Lcom/openx/android_sdk_openx/R$string;->skip_time_over_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVideoViewEventListeners()V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setCustomSeekbar()V

    .line 902
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setErrorListener()V

    .line 904
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setPreparedListener()V

    .line 906
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setOnCompletionListener()V

    .line 908
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setOnVideoAdRequestListener()V

    .line 910
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->configureOnTouchListener()V

    .line 912
    return-void
.end method

.method private showBar()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 1565
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setLightsOnMode()V

    .line 1569
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1570
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1572
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1574
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->soundButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getAllowFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->toggleExpand:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1584
    :goto_0
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1587
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipped:Z

    if-nez v0, :cond_0

    .line 1589
    const-string v0, "VideoPlayer"

    const-string v1, "Animating skip down 2"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1591
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1592
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1593
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1596
    :cond_0
    return-void

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->toggleExpand:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private skipOffsetReceivedHandler(Lcom/openx/model/video/SkipOffset;)V
    .locals 1

    .prologue
    .line 2159
    invoke-virtual {p1}, Lcom/openx/model/video/SkipOffset;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffsetStringInit:Ljava/lang/String;

    .line 2160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipFromVast:Z

    .line 2161
    return-void
.end method

.method private skipping()V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isSkipped:Z

    .line 730
    const/4 v0, -0x1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    .line 734
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->skip()V

    .line 736
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->adCloseLinearHandler()V

    .line 737
    return-void
.end method

.method private touchDelayHandler()V
    .locals 4

    .prologue
    .line 1510
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/openx/model/video/VideoPlayer$17;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$17;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1527
    return-void
.end method

.method private touchHandler()V
    .locals 2

    .prologue
    .line 2230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    .line 2232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openx/model/video/VideoPlayer;->touchTimestamp:J

    .line 2234
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->showBar()V

    .line 2236
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->touchDelayHandler()V

    .line 2238
    return-void
.end method

.method private unMuteHandler()V
    .locals 3

    .prologue
    .line 2195
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->muted:Z

    .line 2196
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2197
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->soundButton:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_mute_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    :goto_0
    return-void

    .line 2199
    :catch_0
    move-exception v0

    .line 2201
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: setPrepared 2"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSkipHolder()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1845
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isScrubbing:Z

    if-nez v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->skipOverlay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1850
    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1852
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1854
    iget-object v3, p0, Lcom/openx/model/video/VideoPlayer;->skipParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1856
    const-string v3, "VideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->skipParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipProgress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->skipParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1860
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1863
    iput-boolean v6, p0, Lcom/openx/model/video/VideoPlayer;->isSkippable:Z

    .line 1864
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1892
    :cond_0
    :goto_0
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    .line 1894
    :cond_1
    return-void

    .line 1866
    :cond_2
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    if-ne v0, v1, :cond_3

    .line 1869
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1871
    iput-boolean v6, p0, Lcom/openx/model/video/VideoPlayer;->isSkippable:Z

    .line 1873
    iget v0, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    if-eqz v0, :cond_0

    .line 1875
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->enableSkipButton()V

    goto :goto_0

    .line 1883
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1884
    const-string v0, "VideoPlayer"

    const-string v1, "2328"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->skipDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    iget-object v0, v0, Lcom/openx/model/video/CustomVideoAdProperties;->skipText:Ljava/lang/String;

    iget v1, p0, Lcom/openx/model/video/VideoPlayer;->skipOffset:I

    iget v2, p0, Lcom/openx/model/video/VideoPlayer;->skipCounter:I

    invoke-direct {p0, v0, v1, v2}, Lcom/openx/model/video/VideoPlayer;->setSkipOverlayText(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private updateView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->root:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/openx/model/video/VideoPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/openx/model/video/VideoPlayer$2;-><init>(Lcom/openx/model/video/VideoPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :cond_0
    return-void
.end method

.method private videoInit()V
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->root:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/openx/model/video/VideoPlayer$19;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$19;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1815
    :cond_0
    return-void
.end method

.method private windowFocusHandler()V
    .locals 2

    .prologue
    .line 1978
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isRunning:Z

    if-nez v0, :cond_0

    .line 1980
    const-string v0, "VideoPlayer"

    const-string v1, "onWindowFocusedChanged mRunnable.run()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->resume()V

    .line 1984
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->run()V

    .line 1987
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    if-eqz v0, :cond_1

    .line 1989
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationManager;->enableOrientationListener()V

    .line 1992
    :cond_1
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isPreparing:Z

    if-nez v0, :cond_2

    .line 1995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    .line 1996
    const-string v0, "VideoPlayer"

    const-string v1, "windowFocusHandler() isstopped = false"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    :cond_2
    return-void
.end method

.method private windowNoFocusHandler()V
    .locals 2

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2005
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->kill()V

    .line 2007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isRunning:Z

    .line 2008
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationManager;->disableOrientationListener()V

    .line 2012
    :cond_0
    return-void
.end method


# virtual methods
.method public getOrientationManager()Lcom/openx/view/mraid/OrientationManager;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    return-object v0
.end method

.method public getPreloadedVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->preloadedAdVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVASTXml()Lcom/openx/model/vast/VASTParser;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->vastXml:Lcom/openx/model/vast/VASTParser;

    return-object v0
.end method

.method public getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoView:Lcom/openx/view/video/PublisherVideoView;

    return-object v0
.end method

.method public isFloat(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1440
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    const/4 v0, 0x1

    .line 1445
    :goto_0
    return v0

    .line 1443
    :catch_0
    move-exception v0

    .line 1445
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteger(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1426
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    const/4 v0, 0x1

    .line 1431
    :goto_0
    return v0

    .line 1429
    :catch_0
    move-exception v0

    .line 1431
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 1713
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1715
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1558
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 1560
    return-void
.end method

.method public onVideoAdEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2059
    sget-object v0, Lcom/openx/model/video/VideoPlayer$21;->$SwitchMap$com$openx$model$video$VideoAdEvent$Event:[I

    invoke-virtual {p1}, Lcom/openx/model/video/VideoAdEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2138
    :goto_0
    :pswitch_0
    return-void

    .line 2064
    :pswitch_1
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->pauseHandler()V

    goto :goto_0

    .line 2068
    :pswitch_2
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->resumeHandler()V

    goto :goto_0

    .line 2074
    :pswitch_3
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->onPreparedHandler()V

    .line 2075
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->onAdPreparedRenderSkip()V

    goto :goto_0

    .line 2078
    :pswitch_4
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->onPreparedHandler()V

    goto :goto_0

    .line 2082
    :pswitch_5
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->resumeHandler()V

    goto :goto_0

    .line 2085
    :pswitch_6
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->adCompletionHandler()V

    goto :goto_0

    .line 2088
    :pswitch_7
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->contentCompletionHandler()V

    goto :goto_0

    .line 2091
    :pswitch_8
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->adSkippedHandler()V

    goto :goto_0

    .line 2096
    :pswitch_9
    invoke-virtual {p0, v2, v2}, Lcom/openx/model/video/VideoPlayer;->toggleFullOrCollapsed(ZZ)V

    goto :goto_0

    .line 2100
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/openx/model/video/VideoPlayer;->toggleFullOrCollapsed(ZZ)V

    goto :goto_0

    .line 2103
    :pswitch_b
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->touchHandler()V

    goto :goto_0

    .line 2106
    :pswitch_c
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->muteHandler()V

    goto :goto_0

    .line 2109
    :pswitch_d
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->muteHandler()V

    goto :goto_0

    .line 2112
    :pswitch_e
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->unMuteHandler()V

    goto :goto_0

    .line 2115
    :pswitch_f
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->unMuteHandler()V

    goto :goto_0

    .line 2118
    :pswitch_10
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->adCloseLinearHandler()V

    goto :goto_0

    .line 2121
    :pswitch_11
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->contentCloseHandler()V

    goto :goto_0

    .line 2124
    :pswitch_12
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->windowFocusHandler()V

    goto :goto_0

    .line 2127
    :pswitch_13
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->windowNoFocusHandler()V

    goto :goto_0

    .line 2130
    :pswitch_14
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->windowFocusHandler()V

    goto :goto_0

    .line 2133
    :pswitch_15
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->windowNoFocusHandler()V

    goto :goto_0

    .line 2059
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public onVideoInfoReceived(Lcom/openx/model/video/VideoInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/video/VideoInfo",
            "<+",
            "Lcom/openx/model/video/SkipOffset;",
            "Lcom/openx/model/video/AdBreaks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2143
    instance-of v0, p1, Lcom/openx/model/video/SkipOffset;

    if-eqz v0, :cond_1

    .line 2146
    check-cast p1, Lcom/openx/model/video/SkipOffset;

    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoPlayer;->skipOffsetReceivedHandler(Lcom/openx/model/video/SkipOffset;)V

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 2149
    :cond_1
    instance-of v0, p1, Lcom/openx/model/video/AdBreaks;

    if-eqz v0, :cond_0

    .line 2152
    check-cast p1, Lcom/openx/model/video/AdBreaks;

    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoPlayer;->adBreaksReceivedHandler(Lcom/openx/model/video/AdBreaks;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1959
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer;->mRunnable:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1962
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isRunning:Z

    .line 1963
    const-string v0, "VideoPlayer"

    const-string v1, "WINDOW_FOCUSED_CHANGED: onVisibilityChanged isstopped = true"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    .line 1972
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1973
    return-void

    .line 1968
    :cond_1
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isStopped:Z

    .line 1969
    const-string v0, "VideoPlayer"

    const-string v1, "onVisibilityChanged: onVisibilityChanged(visible) isstopped = false"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 2017
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 2019
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    invoke-interface {v0, p1}, Lcom/openx/model/vast/VASTInterface;->onWindowFocusChanged(Z)V

    .line 2037
    return-void
.end method

.method public setVASTInterface(Lcom/openx/model/vast/VASTInterface;)V
    .locals 0

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    .line 1946
    return-void
.end method

.method public setVideoCompletionListener(Lcom/openx/model/vast/VideoCompletionListener;)V
    .locals 0

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->videoCompletionListener:Lcom/openx/model/vast/VideoCompletionListener;

    .line 1953
    return-void
.end method

.method public setVideoErrorListener(Lcom/openx/model/vast/VideoErrorListener;)V
    .locals 0

    .prologue
    .line 2052
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->videoErrorListener:Lcom/openx/model/vast/VideoErrorListener;

    .line 2054
    return-void
.end method

.method public setVideoPlayerClosedListener(Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->videoPlayerCloseListener:Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    .line 68
    return-void
.end method

.method public setVideoPreparedListener(Lcom/openx/model/vast/VideoPreparedListener;)V
    .locals 0

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer;->videoPreparedListener:Lcom/openx/model/vast/VideoPreparedListener;

    .line 2047
    return-void
.end method

.method public toggleFullOrCollapsed(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 480
    if-nez p1, :cond_2

    .line 483
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->toggleExpand:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_fullscreen_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    sget-object v1, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->portrait:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    invoke-virtual {v0, v2, v1}, Lcom/openx/view/mraid/OrientationManager;->onOrientationPropertiesChanged(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer;->isFullScreen:Z

    .line 499
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->adjustPlayerSize()V

    .line 501
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->setLightsOnMode()V

    .line 504
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsContentVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/openx/model/video/VideoPlayer;->onContentPreparedRenderAdBreaks()V

    .line 509
    :cond_1
    return-void

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getAllowFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->toggleExpand:Landroid/widget/ImageButton;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_minimize_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 494
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    sget-object v1, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->landscape:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    invoke-virtual {v0, v2, v1}, Lcom/openx/view/mraid/OrientationManager;->onOrientationPropertiesChanged(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V

    .line 495
    iput-boolean v2, p0, Lcom/openx/model/video/VideoPlayer;->isFullScreen:Z

    goto :goto_0
.end method
