.class public Lcom/mdotm/android/vast/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
    }
.end annotation


# instance fields
.field private adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private duration:I

.field private impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

.field impressionString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRewarded:Z

.field isVideoReady:Z

.field private mAdResponse:Lcom/mdotm/android/vast/LinearAd;

.field private mContext:Landroid/content/Context;

.field private mDidImpressionRecoded:Z

.field private mHandler:Landroid/os/Handler;

.field mIsGetIntoError:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

.field private videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

.field private videoTimer:Ljava/util/Timer;

.field private volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 35
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 36
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 47
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isRewarded:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/vast/LinearAd;Lcom/mdotm/android/listener/MdotMAdActionListener;Lcom/mdotm/android/listener/InterstitialVideoListener;Landroid/os/Handler;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mdotm/android/vast/LinearAd;",
            "Lcom/mdotm/android/listener/MdotMAdActionListener;",
            "Lcom/mdotm/android/listener/InterstitialVideoListener;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 35
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 36
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 47
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isRewarded:Z

    .line 59
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    .line 61
    iput-object p5, p0, Lcom/mdotm/android/vast/VastVideoView;->mHandler:Landroid/os/Handler;

    .line 62
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/LinearAd;->getTrackingEvents()Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    .line 63
    iput-object p3, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 64
    iput-object p4, p0, Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

    .line 65
    iput-object p6, p0, Lcom/mdotm/android/vast/VastVideoView;->impressionString:Ljava/util/ArrayList;

    .line 66
    iput-boolean p7, p0, Lcom/mdotm/android/vast/VastVideoView;->isRewarded:Z

    .line 67
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->prepareVideo()V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/vast/VastVideoView;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$10(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/vast/VastVideoView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/vast/VastVideoView;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isRewarded:Z

    return v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/InterstitialVideoListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mdotm/android/vast/VastVideoView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    return v0
.end method

.method static synthetic access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mdotm/android/vast/VastVideoView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mdotm/android/vast/VastVideoView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    :cond_1
    return-void
.end method

.method private prepareVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iput-boolean v2, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 72
    iput-boolean v2, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 73
    iput-boolean v2, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 75
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/mdotm/android/vast/VastVideoView$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastVideoView$1;-><init>(Lcom/mdotm/android/vast/VastVideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 87
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/LinearAd;->getAdResource()Lcom/mdotm/android/vast/AdResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/AdResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video path :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mdotm/android/vast/VastVideoView;->setZOrderOnTop(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/VastVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->requestFocus()Z

    .line 92
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 93
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 94
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 95
    new-instance v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-direct {v0, p0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;-><init>(Lcom/mdotm/android/vast/VastVideoView;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    .line 96
    return-void
.end method


# virtual methods
.method public PauseVideo()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->pause()V

    .line 209
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "Pause impression event"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->pause:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public isReadyToPlay()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "On completion of video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialVideoListener;->showCloseButton()V

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isComplete:Z

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->complete:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onPlayStop()V

    .line 125
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->cancelTimer()V

    .line 126
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On error playing  video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-boolean v2, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    .line 104
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 109
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->adActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onPlayError()V

    .line 110
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 141
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mAdResponse:Lcom/mdotm/android/vast/LinearAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/LinearAd;->getDuration()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseDuration"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    .line 148
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    if-gez v1, :cond_0

    .line 150
    const-string v1, "[0-9]{2}:[0-9]{2}:[0-9]{2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    .line 155
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 156
    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 154
    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    .line 162
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseDuration"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$1(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;I)V

    .line 165
    iput-boolean v5, p0, Lcom/mdotm/android/vast/VastVideoView;->isVideoReady:Z

    .line 166
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->start()V

    .line 169
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialVideoListener;->setPlayStart()V

    .line 172
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->impressionString:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 173
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "Start playing video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->start:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 176
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->creativeView:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_2

    .line 179
    new-instance v0, Lcom/mdotm/android/vast/VolumnContentObserver;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView;->mHandler:Landroid/os/Handler;

    .line 180
    iget-object v3, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v3, v3, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->mute:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v4, v4, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->unMute:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mdotm/android/vast/VolumnContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 179
    iput-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    .line 181
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 183
    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView;->volumnListener:Lcom/mdotm/android/vast/VolumnContentObserver;

    .line 181
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    :cond_2
    return-void

    .line 158
    :cond_3
    const-string v1, "[0-9]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView;->duration:I

    goto/16 :goto_0
.end method

.method public playVideo()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isComplete:Z

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->start()V

    .line 195
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "Resume impression"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->resume:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v0, "Play called after one complete play"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->prepareVideo()V

    goto :goto_0
.end method

.method public skipVideo()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "Skip impression event"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->skip:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->skip:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 229
    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 232
    const-string v0, "Stop video playback"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastVideoView;->stopPlayback()V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView;->cancelTimer()V

    .line 238
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mIsGetIntoError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    if-nez v0, :cond_1

    .line 239
    const-string v0, "Call report impression video resource"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView;->mDidImpressionRecoded:Z

    .line 245
    :cond_1
    return-void
.end method
