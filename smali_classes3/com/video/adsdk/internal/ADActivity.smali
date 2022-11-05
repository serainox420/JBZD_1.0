.class public Lcom/video/adsdk/internal/ADActivity;
.super Landroid/app/Activity;
.source "ADActivity.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/JavascriptBridgeListener;
.implements Lcom/video/adsdk/interfaces/PrefetcherListener;
.implements Lcom/video/adsdk/interfaces/VideoBridgeListener;


# static fields
.field public static PARAM_USE_FAKE:Ljava/lang/String;


# instance fields
.field private advertisingIsFinished:Z

.field private useFake:Z

.field private videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

.field private videoProgressDialog:Landroid/app/ProgressDialog;

.field private view:Landroid/widget/RelativeLayout;

.field private webProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USE_FAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/video/adsdk/internal/ADActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/video/adsdk/internal/ADActivity;->PARAM_USE_FAKE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->useFake:Z

    .line 26
    iput-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->advertisingIsFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/video/adsdk/internal/ADActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->finishAdvertising()V

    return-void
.end method

.method static synthetic access$100(Lcom/video/adsdk/internal/ADActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->hideVideoLoader()V

    return-void
.end method

.method static synthetic access$200(Lcom/video/adsdk/internal/ADActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->hideWebLoader()V

    return-void
.end method

.method static synthetic access$300(Lcom/video/adsdk/internal/ADActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->showVideoLoader()V

    return-void
.end method

.method private finishAdvertising()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->shutdown()V

    .line 224
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->advertisingIsFinished:Z

    .line 225
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->finish()V

    .line 226
    return-void
.end method

.method private hideVideoLoader()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    .line 306
    return-void
.end method

.method private hideWebLoader()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    .line 299
    return-void
.end method

.method private showVideoLoader()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    .line 287
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Prefetching video"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 289
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private showWebLoader()V
    .locals 5

    .prologue
    .line 270
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    .line 274
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_1
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 279
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->webProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "empty_progress_dialog"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public fakeOnBackPressed()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->fakeOnFinish()V

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 266
    return-void
.end method

.method public fakeOnCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/video/adsdk/internal/Helper;->createFakeAdVideoView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    .line 233
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADActivity;->setContentView(Landroid/view/View;)V

    .line 237
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/video/adsdk/internal/ADActivity$1;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/ADActivity$1;-><init>(Lcom/video/adsdk/internal/ADActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->raiseFakeVideoPlayEvents(Z)V

    .line 247
    return-void
.end method

.method protected fakeOnFinish()V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->raiseFakeVideoPlayEvents(Z)V

    .line 251
    return-void
.end method

.method protected fakeOnPause()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    return-void
.end method

.method protected fakeOnResume()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 261
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->useFake:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->fakeOnBackPressed()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isClosableByUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->onSkipButtonClicked()V

    .line 135
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->finishAdvertising()V

    goto :goto_0

    .line 138
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/video/adsdk/internal/ADActivity;->PARAM_USE_FAKE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->useFake:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->useFake:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/video/adsdk/internal/ADActivity;->fakeOnCreate(Landroid/os/Bundle;)V

    .line 66
    :goto_1
    return-void

    .line 51
    :cond_0
    iput-boolean v4, p0, Lcom/video/adsdk/internal/ADActivity;->advertisingIsFinished:Z

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    .line 53
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    iget-object v1, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    .line 59
    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getVideoBridge()Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    .line 60
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/VideoBridge;->addListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V

    .line 61
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    .line 62
    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->addListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V

    .line 64
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getPrefetcher()Lcom/video/adsdk/internal/Prefetcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/video/adsdk/internal/Prefetcher;->addPrefetcherListener(Lcom/video/adsdk/interfaces/PrefetcherListener;)V

    .line 65
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->removeListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V

    .line 73
    :cond_0
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getVideoBridge()Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getVideoBridge()Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/VideoBridge;->removeListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V

    .line 76
    :cond_1
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getPrefetcher()Lcom/video/adsdk/internal/Prefetcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getPrefetcher()Lcom/video/adsdk/internal/Prefetcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/video/adsdk/internal/Prefetcher;->removeListener(Lcom/video/adsdk/interfaces/PrefetcherListener;)V

    .line 79
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onFinish(I)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->finishAdvertising()V

    .line 190
    return-void
.end method

.method public onOpenURLInBrowser(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onPageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->hideWebLoader()V

    .line 208
    return-void
.end method

.method public onPageLoaded(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->hideWebLoader()V

    .line 203
    return-void
.end method

.method public onPageStartingLoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->showWebLoader()V

    .line 387
    return-void
.end method

.method public onPageTimeOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->hideWebLoader()V

    .line 213
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->useFake:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->fakeOnPause()V

    .line 111
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_2
    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->advertisingIsFinished:Z

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->advertisingDidHide()V

    .line 106
    :cond_1
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->wasMovieClicked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->movieClick()V

    .line 110
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onPlayMovie(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->hideWebLoader()V

    .line 171
    return-void
.end method

.method public onPrefetchURL(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onPrefetchedFile(Lcom/video/adsdk/internal/ADVideoFile;)V
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lcom/video/adsdk/internal/ADActivity$4;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/ADActivity$4;-><init>(Lcom/video/adsdk/internal/ADActivity;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method public onPrefetchingDidComplete()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/video/adsdk/internal/ADActivity$3;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/ADActivity$3;-><init>(Lcom/video/adsdk/internal/ADActivity;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public onPrefetchingFailed()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->hideVideoLoader()V

    .line 369
    return-void
.end method

.method public onPrefetchingStarted()V
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/video/adsdk/internal/ADActivity$5;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/ADActivity$5;-><init>(Lcom/video/adsdk/internal/ADActivity;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 358
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->onPrefetchingDidComplete()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoProgressDialog:Landroid/app/ProgressDialog;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 364
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 115
    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADActivity;->useFake:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->fakeOnResume()V

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/video/adsdk/internal/ADActivity;->view:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity;->videoBridge:Lcom/video/adsdk/interfaces/VideoBridge;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->play()V

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0
.end method

.method public onSetBackgroundColor(I)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onShowDialog(Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/video/adsdk/internal/ADActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/video/adsdk/internal/ADActivity$2;-><init>(Lcom/video/adsdk/internal/ADActivity;Ljava/lang/String;Landroid/webkit/JsResult;)V

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onShowSkip()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onSkipButtonClicked()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->finishAdvertising()V

    .line 161
    return-void
.end method

.method public onTrack(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onVideoIsComplete()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->finishAdvertising()V

    .line 150
    return-void
.end method

.method public onVideoIsReadyToPlay(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;I)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onVideoPlaybackError(II)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADActivity;->finishAdvertising()V

    .line 166
    return-void
.end method

.method public onVideoReportsCurrentState(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
