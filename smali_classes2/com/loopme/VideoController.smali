.class Lcom/loopme/VideoController;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/VideoController$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdView:Lcom/loopme/adview/AdView;

.field private mAppKey:Ljava/lang/String;

.field private mBufferingTimer:Landroid/os/CountDownTimer;

.field private mCallback:Lcom/loopme/VideoController$Callback;

.field private mContext:Landroid/content/Context;

.field private mFileRest:Ljava/lang/String;

.field private mFormat:I

.field private mHandler:Landroid/os/Handler;

.field private mIs360:Z

.field private mIsSurfaceTextureAvailable:Z

.field private mMuteState:Z

.field private volatile mPlayer:Landroid/media/MediaPlayer;

.field private mQuarter25:I

.field private mQuarter50:I

.field private mQuarter75:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mSurface:Landroid/view/Surface;

.field private mVideoDuration:I

.field private mVideoPositionWhenError:I

.field private mWaitForVideo:Z

.field private mWasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/loopme/VideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/adview/AdView;Lcom/loopme/VideoController$Callback;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/VideoController;->mMuteState:Z

    .line 72
    iput-object p1, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    .line 73
    iput-object p2, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    .line 74
    invoke-virtual {p1}, Lcom/loopme/adview/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/VideoController;->mContext:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/loopme/VideoController;->mAppKey:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/loopme/VideoController;->mFormat:I

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-direct {p0}, Lcom/loopme/VideoController;->initProgressRunnable()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/VideoController;)Lcom/loopme/adview/AdView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopme/VideoController;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/loopme/VideoController;->updateCurrentVolume()V

    return-void
.end method

.method static synthetic access$200(Lcom/loopme/VideoController;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/loopme/VideoController;->mVideoDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/loopme/VideoController;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/loopme/VideoController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applyMuteSettings()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyMuteSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loopme/VideoController;->mMuteState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lcom/loopme/VideoController;->mMuteState:Z

    invoke-virtual {p0, v0}, Lcom/loopme/VideoController;->muteVideo(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method private extractVideoInfo(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 374
    if-eqz p1, :cond_2

    .line 375
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 376
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 377
    iget-object v2, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    invoke-interface {v2, v0, v1}, Lcom/loopme/VideoController$Callback;->onVideoSizeChanged(II)V

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/loopme/VideoController;->mVideoDuration:I

    .line 381
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    iget v1, p0, Lcom/loopme/VideoController;->mVideoDuration:I

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setVideoDuration(I)V

    .line 384
    :cond_1
    iget v0, p0, Lcom/loopme/VideoController;->mVideoDuration:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/loopme/VideoController;->mQuarter25:I

    .line 385
    iget v0, p0, Lcom/loopme/VideoController;->mVideoDuration:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/loopme/VideoController;->mQuarter50:I

    .line 386
    iget v0, p0, Lcom/loopme/VideoController;->mQuarter25:I

    iget v1, p0, Lcom/loopme/VideoController;->mQuarter50:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/loopme/VideoController;->mQuarter75:I

    .line 388
    :cond_2
    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/loopme/VideoController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    .line 183
    invoke-direct {p0}, Lcom/loopme/VideoController;->initPlayerListeners()V

    .line 184
    return-void
.end method

.method private initPlayerListeners()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 188
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 191
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 192
    return-void
.end method

.method private initProgressRunnable()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/loopme/VideoController$1;

    invoke-direct {v0, p0}, Lcom/loopme/VideoController$1;-><init>(Lcom/loopme/VideoController;)V

    iput-object v0, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    .line 116
    return-void
.end method

.method private isPlayerReadyForPlay()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loopme/VideoController;->mWasError:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVideoState(I)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0, p1}, Lcom/loopme/adview/AdView;->setVideoState(I)V

    .line 371
    :cond_0
    return-void
.end method

.method private updateCurrentVolume()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/loopme/VideoController;->mMuteState:Z

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Lcom/loopme/common/Utils;->getSystemVolume()F

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method contain360(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/loopme/VideoController;->mIs360:Z

    .line 83
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/loopme/VideoController;->mBufferingTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/loopme/VideoController;->mBufferingTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 93
    :cond_1
    iput-object v2, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    .line 94
    invoke-virtual {p0}, Lcom/loopme/VideoController;->releasePlayer()V

    .line 95
    iput-object v2, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    .line 96
    iput-object v2, p0, Lcom/loopme/VideoController;->mSurface:Landroid/view/Surface;

    .line 97
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public initPlayerFromFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 163
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    .line 164
    invoke-direct {p0}, Lcom/loopme/VideoController;->initPlayerListeners()V

    .line 165
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v2}, Lcom/loopme/VideoController;->setVideoState(I)V

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    sget-object v1, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v2}, Lcom/loopme/VideoController;->setVideoState(I)V

    goto :goto_0
.end method

.method public muteVideo(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 201
    :goto_0
    iput-boolean p1, p0, Lcom/loopme/VideoController;->mMuteState:Z

    .line 202
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/loopme/common/Utils;->getSystemVolume()F

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 278
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0}, Lcom/loopme/adview/AdView;->getCurrentVideoState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    iget v1, p0, Lcom/loopme/VideoController;->mVideoDuration:I

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setVideoCurrentTime(I)V

    .line 281
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0, v2}, Lcom/loopme/adview/AdView;->setVideoState(I)V

    .line 282
    iget-object v0, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    invoke-interface {v0}, Lcom/loopme/VideoController$Callback;->onVideoReachEnd()V

    .line 286
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 290
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    const/16 v0, -0x3ec

    if-ne p3, v0, :cond_2

    .line 295
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "end of preview file"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 297
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 298
    iget-object v0, p0, Lcom/loopme/VideoController;->mFileRest:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/loopme/VideoController;->mVideoPositionWhenError:I

    .line 300
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 301
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 303
    iget-object v0, p0, Lcom/loopme/VideoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/loopme/VideoController;->mFileRest:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    .line 304
    invoke-direct {p0}, Lcom/loopme/VideoController;->initPlayerListeners()V

    .line 305
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/loopme/VideoController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 307
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 308
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/loopme/VideoController;->mVideoPositionWhenError:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 309
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mHandler.postDelayed"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    :cond_0
    :goto_0
    return v6

    .line 313
    :cond_1
    iput-boolean v6, p0, Lcom/loopme/VideoController;->mWaitForVideo:Z

    .line 314
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/loopme/VideoController;->mVideoPositionWhenError:I

    .line 315
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/loopme/VideoController;->setVideoState(I)V

    .line 317
    new-instance v0, Lcom/loopme/VideoController$2;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/loopme/VideoController$2;-><init>(Lcom/loopme/VideoController;JJ)V

    iput-object v0, p0, Lcom/loopme/VideoController;->mBufferingTimer:Landroid/os/CountDownTimer;

    .line 327
    iget-object v0, p0, Lcom/loopme/VideoController;->mBufferingTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 334
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0}, Lcom/loopme/adview/AdView;->getCurrentVideoState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    .line 338
    invoke-virtual {v0}, Lcom/loopme/adview/AdView;->getCurrentVideoState()I

    move-result v0

    if-nez v0, :cond_5

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    new-instance v1, Lcom/loopme/common/LoopMeError;

    const-string v2, "Error during video loading"

    invoke-direct {v1, v2}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/loopme/VideoController$Callback;->onFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setWebViewState(I)V

    .line 345
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setVideoState(I)V

    .line 347
    iget-object v0, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    invoke-interface {v0}, Lcom/loopme/VideoController$Callback;->playbackFinishedWithError()V

    .line 349
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 352
    :cond_6
    iput-boolean v6, p0, Lcom/loopme/VideoController;->mWasError:Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 359
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/loopme/VideoController;->setVideoState(I)V

    .line 361
    invoke-direct {p0, p1}, Lcom/loopme/VideoController;->extractVideoInfo(Landroid/media/MediaPlayer;)V

    .line 362
    iget-object v0, p0, Lcom/loopme/VideoController;->mBufferingTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/loopme/VideoController;->mBufferingTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 365
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loopme/VideoController;->mWasError:Z

    if-nez v0, :cond_0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Pause video"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 263
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setVideoState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 267
    sget-object v1, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(IZ)V
    .locals 4

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/loopme/VideoController;->isPlayerReadyForPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/loopme/VideoController;->mIsSurfaceTextureAvailable:Z

    if-nez v0, :cond_1

    .line 229
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "postpone play (surface not available)"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/loopme/VideoController;->mCallback:Lcom/loopme/VideoController$Callback;

    invoke-interface {v0, p1}, Lcom/loopme/VideoController$Callback;->postponePlay(I)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/loopme/VideoController;->applyMuteSettings()V

    .line 241
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 246
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setVideoState(I)V

    .line 248
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    sget-object v1, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releasePlayer()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 125
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 127
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public setFileRest(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/loopme/VideoController;->mFileRest:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/loopme/VideoController;->mSurface:Landroid/view/Surface;

    .line 132
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setSurfaceTextureAvailable(Z)V
    .locals 0

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/loopme/VideoController;->mIsSurfaceTextureAvailable:Z

    .line 220
    return-void
.end method

.method public waitForVideo()V
    .locals 4

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/loopme/VideoController;->mWaitForVideo:Z

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/loopme/VideoController;->releasePlayer()V

    .line 141
    iget-object v0, p0, Lcom/loopme/VideoController;->mFileRest:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/loopme/VideoController;->initPlayer(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/loopme/VideoController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 145
    iget-object v0, p0, Lcom/loopme/VideoController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0}, Lcom/loopme/adview/AdView;->getCurrentWebViewState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/loopme/VideoController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 148
    :cond_0
    iget v0, p0, Lcom/loopme/VideoController;->mVideoPositionWhenError:I

    invoke-virtual {p0, v0}, Lcom/loopme/VideoController;->seekTo(I)V

    .line 149
    sget-object v0, Lcom/loopme/VideoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "waitForVideo mHandler.postDelayed"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/loopme/VideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/loopme/VideoController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/loopme/VideoController;->setVideoState(I)V

    .line 154
    :cond_1
    return-void
.end method
