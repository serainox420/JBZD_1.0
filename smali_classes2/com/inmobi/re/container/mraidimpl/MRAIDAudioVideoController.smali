.class public Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;
.super Ljava/lang/Object;
.source "MRAIDAudioVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$7;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field public audioPlayerList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field public audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

.field public videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

.field public videoPlayerList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field public videoValidateWidth:I


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    .line 49
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 575
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V
    .locals 4

    .prologue
    .line 493
    const v0, -0x383cb080    # -99999.0f

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 495
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->isInlineVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    iget v3, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 498
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 500
    iget v3, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    if-ne v3, v1, :cond_1

    iget v3, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    if-ne v3, v1, :cond_1

    .line 501
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 502
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 508
    :goto_0
    const/4 v0, 0x3

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 509
    invoke-virtual {p1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    :cond_0
    return-void

    .line 505
    :cond_1
    iget v0, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 506
    iget v0, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 179
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 180
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v2, "Too many audio players"

    const-string v3, "playAudio"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 221
    :goto_0
    return v0

    .line 185
    :cond_0
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :goto_1
    move v0, v2

    .line 221
    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_5

    .line 194
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    :goto_2
    move v0, v1

    .line 198
    goto :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto :goto_2

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_6

    .line 200
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    move v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v0

    .line 204
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v4, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 206
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, p3, v4}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 209
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v0, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 213
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    goto/16 :goto_1

    .line 218
    :cond_8
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/re/controller/JSController$Dimensions;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 427
    .line 429
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    .line 487
    :goto_0
    return v0

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v2

    .line 440
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 442
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    :cond_2
    sget-object v3, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$7;->a:[I

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 450
    :pswitch_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    .line 451
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V

    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v1

    if-nez v1, :cond_3

    .line 460
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V

    goto :goto_0

    .line 465
    :pswitch_3
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 466
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V

    goto :goto_0

    .line 468
    :cond_4
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto :goto_1

    .line 477
    :cond_5
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 478
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v2, "Request must specify a valid URL"

    const-string v3, "playVideo"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :cond_6
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 482
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v2}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :cond_7
    move v0, v1

    .line 487
    goto/16 :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/util/Hashtable;Lcom/inmobi/re/controller/util/AVPlayer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ">;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 666
    const/4 v1, 0x0

    .line 667
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 668
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 669
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 673
    :goto_0
    if-eqz v0, :cond_1

    .line 674
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const/4 v0, 0x1

    .line 677
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4

    .prologue
    .line 521
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Request must specify a valid URL"

    const-string v2, "playVideo"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->hide()V

    .line 530
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_3
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    .line 537
    if-nez v0, :cond_5

    .line 538
    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, p3, v2}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 543
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 544
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/re/controller/JSController$Dimensions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    :cond_5
    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;
    .locals 2

    .prologue
    .line 226
    monitor-enter p0

    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 232
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;
    .locals 2

    .prologue
    .line 558
    monitor-enter p0

    const/4 v0, 0x0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 564
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hidePlayers()V
    .locals 5

    .prologue
    .line 627
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "MRAIDAudioVideoController: hiding all players"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v0, v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->hide()V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 637
    sget-object v3, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$7;->a:[I

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 644
    :pswitch_1
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    goto :goto_0

    .line 639
    :pswitch_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 640
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 652
    :cond_1
    return-void

    .line 637
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-ne p1, v0, :cond_0

    .line 656
    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-ne p1, v0, :cond_1

    .line 658
    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/util/Hashtable;Lcom/inmobi/re/controller/util/AVPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    :goto_0
    return-void

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/util/Hashtable;Lcom/inmobi/re/controller/util/AVPlayer;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 56
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    .line 59
    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    const-string v1, ""

    .line 65
    :cond_0
    iget-object v2, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p2}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Request must specify a valid URL"

    const-string v2, "playAudio"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_5
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 80
    :cond_6
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 84
    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 85
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v3, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$1;

    invoke-direct {v3, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$1;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 102
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 108
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->requestFocus()Z

    .line 109
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v2, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$2;

    invoke-direct {v2, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$2;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v2, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$3;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$3;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/controller/JSController$PlayerProperties;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setListener(Lcom/inmobi/re/controller/util/AVPlayerListener;)V

    .line 170
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->play()V

    goto/16 :goto_0

    .line 127
    :cond_7
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 243
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    .line 245
    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/inmobi/re/controller/JSController$Dimensions;

    .line 246
    const-string v2, "[InMobi]-[RE]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final dimensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    iget-object v3, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-direct {p0, v3, v2, p2, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/re/controller/JSController$Dimensions;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3, v5}, Lcom/inmobi/re/container/IMWebView;->setBusy(Z)V

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 256
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/re/controller/JSController$Dimensions;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-object v2, v0

    .line 264
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_2

    .line 265
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    iput-boolean v5, v0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    .line 266
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->show()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3, v0, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V

    move-object v2, v0

    goto :goto_1

    .line 270
    :cond_2
    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 273
    invoke-virtual {v2}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance v2, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$4;

    invoke-direct {v2, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$4;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 289
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 296
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->requestFocus()Z

    .line 298
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$5;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$5;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 343
    :goto_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setListener(Lcom/inmobi/re/controller/util/AVPlayerListener;)V

    .line 387
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->play()V

    goto/16 :goto_0

    .line 315
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    iget v4, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 318
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 320
    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v4, v4, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v4, v4, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    if-nez v4, :cond_4

    .line 321
    iget v4, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 322
    iget v1, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 327
    :goto_3
    const/4 v1, 0x3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 328
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 340
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 324
    :cond_4
    iget v4, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v5, v5, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v5, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v5, v5, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 325
    iget v1, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v4, v4, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v4, v4, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    add-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3
.end method

.method public releaseAllPlayers()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 590
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 592
    :try_start_1
    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    sget-boolean v5, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v5}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    :try_start_2
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v5, "Unable to release player"

    invoke-static {v0, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 598
    :catch_1
    move-exception v0

    .line 599
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v3, "IMwebview release all players "

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 604
    iput-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 607
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 608
    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 610
    :try_start_4
    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    sget-boolean v5, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v5}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 608
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 611
    :catch_2
    move-exception v0

    .line 612
    :try_start_5
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v5, "Unable to release player"

    invoke-static {v0, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 616
    :catch_3
    move-exception v0

    .line 617
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v3, "IMwebview release all players "

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    :cond_2
    sput-boolean v2, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 622
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 623
    iput-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 624
    return-void
.end method

.method public validateVideoDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V
    .locals 2

    .prologue
    .line 393
    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    .line 394
    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    .line 395
    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    .line 396
    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    .line 422
    return-void
.end method
