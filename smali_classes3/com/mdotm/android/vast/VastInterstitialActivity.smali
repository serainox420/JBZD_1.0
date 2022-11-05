.class public Lcom/mdotm/android/vast/VastInterstitialActivity;
.super Landroid/app/Activity;
.source "VastInterstitialActivity.java"

# interfaces
.implements Lcom/mdotm/android/listener/InterstitialVideoListener;
.implements Lcom/mdotm/android/listener/MdotMAdActionListener;


# static fields
.field private static isCompletedPlaying:Z


# instance fields
.field private adClickTrack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adClickUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adClicked:Z

.field private adResponse:Lcom/mdotm/android/vast/VastAd;

.field private angle:I

.field private circularView:Lcom/mdotm/android/view/MdotMDecrementCounterView;

.field private closeLayout:Landroid/widget/RelativeLayout;

.field private companionAd:Lcom/mdotm/android/vast/Companion;

.field private companionImageLayout:Landroid/widget/FrameLayout;

.field private companionImgView:Landroid/widget/ImageView;

.field private companionWebLayout:Landroid/widget/FrameLayout;

.field private companionWebView:Landroid/webkit/WebView;

.field didDismissCalled:Z

.field private durationTextView:Landroid/widget/TextView;

.field private iconCreativesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iconImage:Landroid/widget/ImageView;

.field private iconTimer:Ljava/util/Timer;

.field private impressionString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

.field private interstitialListenerId:J

.field private isRewarded:Z

.field private isShowingCompanionImage:Z

.field private isShownIcon:Z

.field private isVideoClickable:Z

.field private mHandler:Landroid/os/Handler;

.field private mVideoView:Lcom/mdotm/android/vast/VastVideoView;

.field private reward:Ljava/lang/String;

.field private rewardCallbackCalled:Z

.field private tempParams:Landroid/widget/FrameLayout$LayoutParams;

.field private tempRelative:Landroid/widget/FrameLayout;

.field private tempRelativeAdded:Z

.field private timeRunning:J

.field private videoLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isCompletedPlaying:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    .line 57
    iput-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->didDismissCalled:Z

    .line 73
    iput-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isVideoClickable:Z

    .line 75
    iput-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->rewardCallbackCalled:Z

    .line 78
    iput-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShownIcon:Z

    .line 81
    iput v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->angle:I

    .line 84
    iput-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempRelativeAdded:Z

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    return v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    return-void
.end method

.method static synthetic access$10(Lcom/mdotm/android/vast/VastInterstitialActivity;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getCounterOffsetinNumeric(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempRelativeAdded:Z

    return v0
.end method

.method static synthetic access$12(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempRelativeAdded:Z

    return-void
.end method

.method static synthetic access$13(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$16(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/VastVideoView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    return v0
.end method

.method static synthetic access$18(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/vast/VastAd;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    return-object v0
.end method

.method static synthetic access$19(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->showCompanionAfterLinear()V

    return-void
.end method

.method static synthetic access$2(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->clicked()V

    return-void
.end method

.method static synthetic access$20(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isRewarded:Z

    return v0
.end method

.method static synthetic access$21()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isCompletedPlaying:Z

    return v0
.end method

.method static synthetic access$22(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    return-object v0
.end method

.method static synthetic access$23(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->reward:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->rewardCallbackCalled:Z

    return-void
.end method

.method static synthetic access$25(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->rewardCallbackCalled:Z

    return v0
.end method

.method static synthetic access$26(Z)V
    .locals 0

    .prologue
    .line 65
    sput-boolean p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isCompletedPlaying:Z

    return-void
.end method

.method static synthetic access$27(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isVideoClickable:Z

    return v0
.end method

.method static synthetic access$28(Lcom/mdotm/android/vast/VastInterstitialActivity;)J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->timeRunning:J

    return-wide v0
.end method

.method static synthetic access$29(Lcom/mdotm/android/vast/VastInterstitialActivity;J)V
    .locals 1

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->timeRunning:J

    return-void
.end method

.method static synthetic access$3(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShownIcon:Z

    return v0
.end method

.method static synthetic access$31(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShownIcon:Z

    return-void
.end method

.method static synthetic access$32(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconCreativesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$33(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    return-void
.end method

.method static synthetic access$5(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mdotm/android/vast/VastInterstitialActivity;Lcom/mdotm/android/view/MdotMDecrementCounterView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->circularView:Lcom/mdotm/android/view/MdotMDecrementCounterView;

    return-void
.end method

.method static synthetic access$7(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->videoLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/view/MdotMDecrementCounterView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->circularView:Lcom/mdotm/android/view/MdotMDecrementCounterView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempRelative:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private clicked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 776
    const-string v0, "  Ad clicked  "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickTrack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickTrack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickTrack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 780
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickTrack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 788
    :goto_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 822
    :goto_2
    return-void

    .line 781
    :cond_1
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v3

    .line 782
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickTrack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 781
    invoke-virtual {v3, v0, p0}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 780
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity$9;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;Ljava/lang/String;)V

    .line 817
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->start()V

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 820
    :cond_3
    const-string v0, "selected ads landing url is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getCloseButtonView()Landroid/widget/RelativeLayout;
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x4

    const/4 v5, -0x1

    const/4 v10, 0x6

    const/4 v6, 0x0

    .line 452
    const/16 v3, 0x2c

    .line 453
    const/4 v2, 0x0

    .line 454
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v4

    .line 455
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    .line 456
    const/4 v1, 0x0

    .line 457
    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 466
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    .line 467
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 471
    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 472
    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 475
    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAIcAAACHCAYAAAA850oKAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDE0IDc5LjE1Njc5NywgMjAxNC8wOC8yMC0wOTo1MzowMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0M2QTk3ODQ5RjBDMTFFNDk1NEZCNDc0OEYwQTY1QjAiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0M2QTk3ODM5RjBDMTFFNDk1NEZCNDc0OEYwQTY1QjAiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo3Mjg4OEFFNTEyRDUxMUUwOEJDRTkxRUFFNEY5M0MxNiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo3Mjg4OEFFNjEyRDUxMUUwOEJDRTkxRUFFNEY5M0MxNiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtHLAlcAABnxSURBVHja7J17dFNV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"

    .line 476
    invoke-virtual {p0, v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 477
    if-eqz v1, :cond_4

    .line 479
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "CloseBtnArry"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    array-length v2, v1

    const/4 v5, 0x1

    if-lt v2, v5, :cond_4

    .line 483
    int-to-double v6, v3

    const/4 v2, 0x0

    :try_start_0
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v8

    mul-double/2addr v2, v6

    double-to-int v1, v2

    .line 484
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CloseBtnsize"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 491
    invoke-direct {p0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v1

    .line 490
    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 493
    if-eqz v0, :cond_1

    const-string v1, "topleft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 495
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 511
    :goto_2
    invoke-direct {p0, v10}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v0

    invoke-direct {p0, v10}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v1

    invoke-direct {p0, v10}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v3

    invoke-direct {p0, v10}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v5

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 512
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    new-instance v0, Lcom/mdotm/android/vast/VastInterstitialActivity$6;

    invoke-direct {v0, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$6;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 543
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    return-object v0

    .line 459
    :pswitch_0
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/LinearAd;

    .line 460
    iget-object v2, v0, Lcom/mdotm/android/vast/LinearAd;->closeBtnSize:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 461
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->closeBtnSize:Ljava/lang/String;

    .line 462
    :cond_0
    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->closeBtnLocation:Ljava/lang/String;

    goto/16 :goto_0

    .line 485
    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v3

    .line 486
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Number format exe"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "bottomleft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 499
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 500
    const-string v0, "close btn bottom left"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 502
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "bottomright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 504
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_2

    .line 507
    :cond_3
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 508
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_2

    .line 485
    :catch_1
    move-exception v2

    goto :goto_3

    :cond_4
    move v1, v3

    goto/16 :goto_1

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getCounterOffsetinNumeric(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 907
    .line 908
    if-eqz p1, :cond_0

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "counterOffsetString"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    const-string v1, "[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 916
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    .line 917
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 916
    add-int/2addr v0, v2

    .line 919
    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v1, v2

    .line 916
    add-int/2addr v0, v1

    .line 923
    :cond_0
    return v0
.end method

.method private getPixels(I)I
    .locals 3

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scale = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result px = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    return v0
.end method

.method private getVideoLayout()Landroid/widget/FrameLayout;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v8, 0x6

    .line 607
    const-string v0, "getVideoLayout"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 609
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 612
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 613
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$7;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$7;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 634
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 636
    const/4 v1, -0x2

    .line 634
    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 637
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 638
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v10, :cond_0

    .line 640
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 643
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 645
    const-string v1, "landscape"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/vast/VastVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0, v9}, Lcom/mdotm/android/vast/VastVideoView;->setZOrderMediaOverlay(Z)V

    .line 649
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 651
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 653
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    .line 654
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/LinearAd;

    .line 655
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconImagebyteArray:[B

    if-eqz v1, :cond_5

    .line 656
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconImage:Landroid/widget/ImageView;

    .line 657
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 658
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v1

    .line 659
    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconWidth:I

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v5}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v5

    .line 657
    invoke-direct {v4, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 661
    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v1

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v5

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v6

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v7

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "ICON POSITION"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 664
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    const-string v5, "[0-9]*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    const-string v5, "[0-9]*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 665
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    const-string v5, "[0-9]*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    :cond_1
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v1

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v5

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v6

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v7

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 667
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    const-string v5, "[0-9]*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v1

    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v5

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v6

    invoke-direct {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v7

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 684
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconImagebyteArray:[B

    if-eqz v1, :cond_3

    .line 687
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconImagebyteArray:[B

    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconImagebyteArray:[B

    array-length v5, v5

    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 688
    iget-object v5, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 690
    :cond_3
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconImage:Landroid/widget/ImageView;

    new-instance v5, Lcom/mdotm/android/vast/VastInterstitialActivity$8;

    invoke-direct {v5, p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity$8;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;Lcom/mdotm/android/vast/LinearAd;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconDuration:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "icon duration"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconDuration:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconDuration:Ljava/lang/String;

    .line 721
    const-string v5, "[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 724
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconDuration:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 725
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0xe10

    .line 726
    aget-object v6, v1, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    .line 725
    add-int/2addr v5, v6

    .line 728
    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v1, v6

    .line 725
    add-int/2addr v1, v5

    .line 733
    :goto_1
    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconOffset:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "icon iconOffset"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    iget-object v6, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v6, v6, Lcom/mdotm/android/vast/VastIcons;->iconOffset:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconOffset:Ljava/lang/String;

    .line 738
    const-string v6, "[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 741
    iget-object v5, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v5, v5, Lcom/mdotm/android/vast/VastIcons;->iconOffset:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 742
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    .line 743
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    .line 742
    add-int/2addr v2, v6

    .line 745
    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v5, v6

    .line 742
    add-int/2addr v2, v5

    .line 749
    :cond_4
    iget-object v5, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconImage:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 750
    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v0, v0, Lcom/mdotm/android/vast/VastIcons;->iconCreativeView:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconCreativesList:Ljava/util/ArrayList;

    .line 751
    invoke-direct {p0, v1, v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->setTimer(II)V

    .line 753
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    :cond_5
    return-object v3

    .line 671
    :cond_6
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    const-string v5, "left"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    const-string v5, "top"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 672
    const/16 v1, 0x33

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 673
    :cond_7
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    const-string v5, "left"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    const-string v5, "bottom"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 674
    const/16 v1, 0x53

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 675
    :cond_8
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    const-string v5, "right"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    const-string v5, "top"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 676
    const/16 v1, 0x35

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 677
    :cond_9
    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    const-string v5, "right"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    const-string v5, "bottom"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    const/16 v1, 0x55

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 682
    :cond_a
    const/16 v1, 0x55

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto/16 :goto_1
.end method

.method private setTimer(II)V
    .locals 6

    .prologue
    .line 856
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    .line 857
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/mdotm/android/vast/VastInterstitialActivity$10;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;II)V

    .line 904
    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    .line 860
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 905
    return-void
.end method

.method private showCompanionAfterLinear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 835
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v1, v1, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    if-nez v1, :cond_0

    sget-object v1, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 836
    :cond_0
    iput-boolean v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    .line 837
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->resetAdClickAndTrackURLS()V

    .line 838
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->videoLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 839
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v1, v1, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    if-eqz v1, :cond_2

    .line 840
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    move v1, v0

    .line 845
    :goto_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v0, v0, Lcom/mdotm/android/vast/Companion;->companionCreativeViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 854
    :goto_2
    return-void

    .line 841
    :cond_2
    sget-object v1, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 842
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :cond_3
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    .line 847
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v0, v0, Lcom/mdotm/android/vast/Companion;->companionCreativeViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 846
    invoke-virtual {v2, v0, p0}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 845
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 852
    :cond_4
    iput-boolean v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    goto :goto_2
.end method


# virtual methods
.method public StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 566
    .line 567
    const/4 v0, 0x0

    .line 565
    :try_start_0
    invoke-static {p1, v0}, Lcom/mdotm/android/utils/MdotMBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 568
    const/4 v1, 0x0

    .line 569
    array-length v2, v0

    .line 568
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 573
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adClicked()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    .line 373
    const-string v0, "clicked on ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onClick()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->stopVideo()V

    .line 382
    :cond_1
    return-void
.end method

.method public changeCloseBtnSize()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public decrementCounter(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 317
    const-string v0, "reward ad counter decrement"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v7, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mdotm/android/vast/VastInterstitialActivity$5;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method public getViewable()Z
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public leaveApplication()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 389
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 415
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 91
    const-string v0, "onCreate is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mHandler:Landroid/os/Handler;

    .line 97
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    const-string v1, "response"

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/VastAd;

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    .line 99
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isRewarded"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isRewarded:Z

    .line 102
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "reward"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->reward:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    const-string v2, "InterstitialActionListenerId"

    .line 103
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "listener id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 107
    iget-wide v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    invoke-virtual {v0, v2, v3}, Lcom/mdotm/android/utils/MdotMUtils;->getInterstitialActionListener(J)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    .line 108
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 109
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/Companion;

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isRewarded:Z

    if-eqz v0, :cond_1

    .line 113
    iput-boolean v10, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isVideoClickable:Z

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v0, v0, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    if-nez v0, :cond_2

    sget-object v0, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 115
    iput-boolean v11, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    if-eqz v0, :cond_7

    .line 118
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ScreenOrientation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 119
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->setRequestedOrientation(I)V

    .line 125
    :cond_3
    :goto_0
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const v0, -0xbbbbbc

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getImpression()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->impressionString:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Size ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Vast ad type :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    packed-switch v0, :pswitch_data_0

    .line 262
    const-string v0, "This format is not supported "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 272
    :goto_1
    const-string v0, "onCreate finish"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    return-void

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ScreenOrientation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 121
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mdotm/android/vast/LinearAd;

    .line 144
    invoke-virtual {v2}, Lcom/mdotm/android/vast/LinearAd;->getVideoClicks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v2}, Lcom/mdotm/android/vast/LinearAd;->getVideoClickTrack()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickTrack:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Lcom/mdotm/android/vast/VastVideoView;

    .line 147
    iget-object v5, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->impressionString:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isRewarded:Z

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/mdotm/android/vast/VastVideoView;-><init>(Landroid/content/Context;Lcom/mdotm/android/vast/LinearAd;Lcom/mdotm/android/listener/MdotMAdActionListener;Lcom/mdotm/android/listener/InterstitialVideoListener;Landroid/os/Handler;Ljava/util/ArrayList;Z)V

    .line 146
    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    .line 148
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->videoLayout:Landroid/widget/FrameLayout;

    .line 150
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempRelative:Landroid/widget/FrameLayout;

    .line 152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 153
    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v1

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/16 v3, 0x48

    invoke-direct {p0, v3}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v10}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v3

    invoke-direct {p0, v10}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getPixels(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempRelative:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->tempParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastAd;->liniearAndCompanion:Z

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v0, v0, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    if-eqz v0, :cond_6

    .line 161
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImageLayout:Landroid/widget/FrameLayout;

    .line 162
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const-string v0, "initialize companion view"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImgView:Landroid/widget/ImageView;

    .line 167
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v0, v0, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v1, v1, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    array-length v1, v1

    invoke-static {v0, v10, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImageLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImageLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImgView:Landroid/widget/ImageView;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$1;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 258
    :cond_5
    :goto_2
    invoke-virtual {p0, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 198
    :cond_6
    sget-object v0, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 203
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebLayout:Landroid/widget/FrameLayout;

    .line 204
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    const-string v0, "initialize companion view"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    .line 209
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mdotm/android/vast/VastInterstitialActivity$2;

    invoke-direct {v2, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$2;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 222
    invoke-virtual {v0, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$3;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$3;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionWebLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 247
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 267
    :cond_7
    const-string v0, "Ad response is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    goto/16 :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 359
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 360
    iget-wide v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialListenerId:J

    .line 359
    invoke-virtual {v0, v2, v3}, Lcom/mdotm/android/utils/MdotMUtils;->removeInterstitialActionListener(J)V

    .line 362
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->stopVideo()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 368
    :cond_1
    return-void
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 393
    const-string v0, "onDismiss is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->didDismissCalled:Z

    .line 396
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onDismiss()V

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->finish()V

    .line 404
    return-void

    .line 401
    :cond_0
    const-string v0, "InterstitialActionListener is null. So ignoring the interstitial dismiss callback"

    .line 400
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key down "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    .line 421
    iget-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/VastAd;->liniearAndCompanion:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 422
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastVideoView;->stopVideo()V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->showCompanionAfterLinear()V

    .line 427
    iget-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isRewarded:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/mdotm/android/vast/VastInterstitialActivity;->isCompletedPlaying:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 428
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 429
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->reward:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    .line 431
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->rewardCallbackCalled:Z

    .line 449
    :cond_3
    :goto_0
    return v0

    .line 435
    :cond_4
    iget-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isRewarded:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/mdotm/android/vast/VastInterstitialActivity;->isCompletedPlaying:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->rewardCallbackCalled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 436
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    if-eqz v1, :cond_5

    .line 437
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 438
    :cond_5
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->reward:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    .line 440
    :cond_6
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 442
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 443
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 444
    :cond_7
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 449
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadError()V
    .locals 1

    .prologue
    .line 408
    const-string v0, "Error while loading the ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 410
    return-void
.end method

.method public onMraidRewardClick(Z)V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method public onOpenUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 942
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 291
    const-string v0, "onPause is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 293
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->PauseVideo()V

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->didDismissCalled:Z

    if-nez v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 299
    :cond_1
    return-void
.end method

.method public onPlayError()V
    .locals 1

    .prologue
    .line 599
    const-string v0, "Error while palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onFailed()V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 604
    return-void
.end method

.method public onPlayStop()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 579
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->iconTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 581
    :cond_0
    iput-boolean v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isVideoClickable:Z

    .line 582
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adResponse:Lcom/mdotm/android/vast/VastAd;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastAd;->liniearAndCompanion:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isShowingCompanionImage:Z

    if-nez v0, :cond_1

    .line 583
    const-string v0, "completed playing video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->showCompanionAfterLinear()V

    .line 588
    :cond_1
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isRewarded:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/mdotm/android/vast/VastInterstitialActivity;->isCompletedPlaying:Z

    if-nez v0, :cond_2

    .line 589
    sput-boolean v1, Lcom/mdotm/android/vast/VastInterstitialActivity;->isCompletedPlaying:Z

    .line 590
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->reward:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    .line 591
    const-string v0, "call playback action listners"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked:Z

    .line 280
    invoke-virtual {p0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 285
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 287
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->isReadyToPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mVideoView:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->playVideo()V

    goto :goto_0
.end method

.method public onUseCustomClose(Z)V
    .locals 0

    .prologue
    .line 936
    return-void
.end method

.method public resetAdClickAndTrackURLS()V
    .locals 2

    .prologue
    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    .line 829
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickUrl:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v1, v1, Lcom/mdotm/android/vast/Companion;->companionStaticImageClickThrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->companionAd:Lcom/mdotm/android/vast/Companion;

    iget-object v0, v0, Lcom/mdotm/android/vast/Companion;->companionStaticImageClickTracking:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClickTrack:Ljava/util/ArrayList;

    .line 833
    return-void
.end method

.method public setPlayStart()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "show close button"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$4;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$4;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method
