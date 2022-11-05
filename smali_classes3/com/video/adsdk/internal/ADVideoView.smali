.class public Lcom/video/adsdk/internal/ADVideoView;
.super Landroid/widget/RelativeLayout;
.source "ADVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/video/adsdk/interfaces/VideoBridge;


# static fields
.field private static final MAX_SECONDS_BLOCK_BACK_BUTTON:I = 0x8


# instance fields
.field currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field private fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

.field m_listeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/video/adsdk/interfaces/VideoBridgeListener;",
            ">;"
        }
    .end annotation
.end field

.field private pulseTimer:Ljava/util/Timer;

.field private pulseTimerEventCalledInNoSkipState:I

.field private savedBackgroundColor:I

.field private startPosition:I

.field private url:Ljava/lang/String;

.field private videoView:Lcom/video/adsdk/internal/VideoViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->startPosition:I

    .line 38
    iput-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimer:Ljava/util/Timer;

    .line 40
    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->savedBackgroundColor:I

    .line 43
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_INITIALIZED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    .line 47
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->startPosition:I

    .line 38
    iput-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimer:Ljava/util/Timer;

    .line 40
    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->savedBackgroundColor:I

    .line 43
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_INITIALIZED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    .line 56
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->startPosition:I

    .line 38
    iput-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimer:Ljava/util/Timer;

    .line 40
    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->savedBackgroundColor:I

    .line 43
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_INITIALIZED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    .line 61
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->init()V

    .line 62
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->getAudioMgr()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 145
    return-void
.end method

.method static synthetic access$008(Lcom/video/adsdk/internal/ADVideoView;)I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimerEventCalledInNoSkipState:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimerEventCalledInNoSkipState:I

    return v0
.end method

.method static synthetic access$100(Lcom/video/adsdk/internal/ADVideoView;)Lcom/video/adsdk/internal/VideoViewWrapper;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/video/adsdk/internal/ADVideoView;Lcom/video/adsdk/interfaces/VideoBridge$MovieState;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADVideoView;->sendCurrentStateEvent(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 207
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimer:Ljava/util/Timer;

    .line 209
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/video/adsdk/internal/Helper;->createAdVideoView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/video/adsdk/internal/ADVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v1, Lcom/video/adsdk/internal/VideoViewWrapper;

    sget v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEW:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    invoke-direct {v1, v0, p0}, Lcom/video/adsdk/internal/VideoViewWrapper;-><init>(Landroid/widget/VideoView;Lcom/video/adsdk/internal/ADVideoView;)V

    iput-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    .line 222
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/video/adsdk/internal/ADVideoView$1;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/ADVideoView$1;-><init>(Lcom/video/adsdk/internal/ADVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget v0, p0, Lcom/video/adsdk/internal/ADVideoView;->savedBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->setBackgroundColor(I)V

    .line 234
    return-void
.end method

.method private requestAudioFocus()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->getAudioMgr()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 138
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 141
    :cond_0
    return-void
.end method

.method private sendAdvertisingFailedToLoadEvent(II)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/VideoBridgeListener;

    .line 324
    invoke-interface {v0, p1, p2}, Lcom/video/adsdk/interfaces/VideoBridgeListener;->onVideoPlaybackError(II)V

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method private sendCurrentStateEvent(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;)V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/VideoBridgeListener;

    .line 330
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->getCurrentSecond()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, p1, v2, v3}, Lcom/video/adsdk/interfaces/VideoBridgeListener;->onVideoReportsCurrentState(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private sendOnReadyToPlayEvent()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/VideoBridgeListener;

    .line 274
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v2

    iget-object v3, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    .line 275
    invoke-virtual {v3}, Lcom/video/adsdk/internal/VideoViewWrapper;->getDuration()I

    move-result v3

    .line 274
    invoke-interface {v0, v2, v3}, Lcom/video/adsdk/interfaces/VideoBridgeListener;->onVideoIsReadyToPlay(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;I)V

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method private startPulseTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 297
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->stopPulseTimer()V

    .line 299
    new-instance v1, Lcom/video/adsdk/internal/ADVideoView$2;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/ADVideoView$2;-><init>(Lcom/video/adsdk/internal/ADVideoView;)V

    .line 319
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 320
    return-void
.end method

.method private stopPulseTimer()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 293
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimer:Ljava/util/Timer;

    .line 294
    return-void
.end method

.method private tryToRecover()Z
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    iget-object v2, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/video/adsdk/interfaces/FileDownloader;->copyInternalToExternal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :goto_0
    if-eqz v0, :cond_0

    .line 264
    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->play()V

    .line 266
    const/4 v0, 0x1

    .line 269
    :goto_1
    return v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method getAudioMgr()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    return-object v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public isClosableByUI()Z
    .locals 2

    .prologue
    .line 281
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimerEventCalledInNoSkipState:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 129
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->abandonAudioFocus()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_COMPLETED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 239
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_COMPLETED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->sendCurrentStateEvent(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;)V

    .line 240
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/VideoBridgeListener;

    .line 241
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridgeListener;->onVideoIsComplete()V

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->tryToRecover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0, p2, p3}, Lcom/video/adsdk/internal/ADVideoView;->sendAdvertisingFailedToLoadEvent(II)V

    .line 250
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-ne v0, v1, :cond_2

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->stopPulseTimer()V

    .line 189
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->canPause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->startPosition:I

    .line 191
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->pause()V

    .line 193
    :cond_1
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PAUSED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 194
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->sendCurrentStateEvent(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;)V

    .line 195
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->abandonAudioFocus()V

    .line 197
    :cond_2
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->pulseTimerEventCalledInNoSkipState:I

    .line 151
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->startPulseTimer()V

    .line 153
    iget v0, p0, Lcom/video/adsdk/internal/ADVideoView;->startPosition:I

    if-lez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-ne v0, v1, :cond_0

    .line 155
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    iget v1, p0, Lcom/video/adsdk/internal/ADVideoView;->startPosition:I

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoViewWrapper;->seekTo(I)V

    .line 171
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->requestAudioFocus()V

    .line 173
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->start()V

    .line 175
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->isClosableByUI()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 180
    :goto_1
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoViewWrapper;->setVideoURI(Landroid/net/Uri;)V

    .line 167
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_STARTED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->sendCurrentStateEvent(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;)V

    goto :goto_0

    .line 178
    :cond_3
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    goto :goto_1
.end method

.method public removeListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public removeWebView()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/video/adsdk/internal/ADVideoView$3;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/ADVideoView$3;-><init>(Lcom/video/adsdk/internal/ADVideoView;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 336
    iput p1, p0, Lcom/video/adsdk/internal/ADVideoView;->savedBackgroundColor:I

    .line 337
    return-void
.end method

.method public setFileDownloader(Lcom/video/adsdk/interfaces/FileDownloader;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/video/adsdk/internal/ADVideoView;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    .line 354
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->sendOnReadyToPlayEvent()V

    goto :goto_0
.end method

.method public setWebview(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 116
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_WEBVIEWCONTAINER:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method public showSkip()V
    .locals 2

    .prologue
    .line 287
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 289
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->url:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/video/adsdk/internal/ADVideoView;->startPosition:I

    .line 70
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->stopPlayback()V

    .line 71
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->abandonAudioFocus()V

    .line 73
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_INITIALIZED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 74
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADVideoView;->stopPulseTimer()V

    .line 202
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView;->videoView:Lcom/video/adsdk/internal/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->pause()V

    .line 203
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADVideoView;->shutdown()V

    .line 204
    return-void
.end method
