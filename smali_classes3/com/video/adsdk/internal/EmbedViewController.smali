.class public Lcom/video/adsdk/internal/EmbedViewController;
.super Ljava/lang/Object;
.source "EmbedViewController.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/JavascriptBridgeListener;
.implements Lcom/video/adsdk/interfaces/VideoBridgeListener;


# instance fields
.field private advertisingIsFinished:Z

.field private embeddedView:Landroid/view/View;

.field private parentGroup:Landroid/view/ViewGroup;

.field private videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getEmbeddedView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->embeddedView:Landroid/view/View;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->embeddedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/video/adsdk/internal/EmbedViewController;)Lcom/video/adsdk/interfaces/VideoBridge;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    return-object v0
.end method

.method static synthetic access$200(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->parentGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/video/adsdk/internal/EmbedViewController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/video/adsdk/internal/EmbedViewController;->parentGroup:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private finishAdvertising()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->shutdown()V

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->advertisingIsFinished:Z

    .line 81
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/VideoBridge;->removeListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V

    .line 82
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->addListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    new-instance v1, Lcom/video/adsdk/internal/EmbedViewController$2;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/EmbedViewController$2;-><init>(Lcom/video/adsdk/internal/EmbedViewController;)V

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    iget-boolean v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->advertisingIsFinished:Z

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingDidHide()V

    .line 109
    :cond_1
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wasMovieClicked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->movieClick()V

    .line 112
    :cond_2
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public displayAdvertising()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->advertisingIsFinished:Z

    .line 30
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getVideoBridge()Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 31
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/VideoBridge;->addListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V

    .line 32
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->addListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V

    .line 33
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    new-instance v1, Lcom/video/adsdk/internal/EmbedViewController$1;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/EmbedViewController$1;-><init>(Lcom/video/adsdk/internal/EmbedViewController;)V

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->play()V

    .line 49
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onFinish(I)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/video/adsdk/internal/EmbedViewController;->finishAdvertising()V

    .line 130
    return-void
.end method

.method public onOpenURLInBrowser(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onPageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onPageLoaded(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onPageStartingLoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onPageTimeOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onPlayMovie(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onPrefetchURL(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onSetBackgroundColor(I)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onShowDialog(Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/video/adsdk/internal/EmbedViewController;->embeddedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "javaScript dialog"

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/video/adsdk/internal/EmbedViewController$3;

    invoke-direct {v2, p0, p2}, Lcom/video/adsdk/internal/EmbedViewController$3;-><init>(Lcom/video/adsdk/internal/EmbedViewController;Landroid/webkit/JsResult;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    return-void
.end method

.method public onShowSkip()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onSkipButtonClicked()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/video/adsdk/internal/EmbedViewController;->finishAdvertising()V

    .line 68
    return-void
.end method

.method public onTrack(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onVideoIsComplete()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/video/adsdk/internal/EmbedViewController;->finishAdvertising()V

    .line 58
    return-void
.end method

.method public onVideoIsReadyToPlay(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;I)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onVideoPlaybackError(II)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/video/adsdk/internal/EmbedViewController;->finishAdvertising()V

    .line 73
    return-void
.end method

.method public onVideoReportsCurrentState(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
