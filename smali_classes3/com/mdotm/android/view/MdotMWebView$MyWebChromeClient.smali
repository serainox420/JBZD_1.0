.class Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MdotMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/view/MdotMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field private mVideoProgressView:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/mdotm/android/view/MdotMWebView;


# direct methods
.method private constructor <init>(Lcom/mdotm/android/view/MdotMWebView;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x28

    const/16 v2, 0xa

    .line 311
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    .line 313
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 314
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 316
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 319
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 320
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->mVideoProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 340
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 292
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$0(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$0(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$1(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMWebView;->access$0(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->access$2(Lcom/mdotm/android/view/MdotMWebView;Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$1(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$4(Lcom/mdotm/android/view/MdotMWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 304
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMWebView;->goBack()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 333
    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 334
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$0(Lcom/mdotm/android/view/MdotMWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$1(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0, p1}, Lcom/mdotm/android/view/MdotMWebView;->access$2(Lcom/mdotm/android/view/MdotMWebView;Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0, p2}, Lcom/mdotm/android/view/MdotMWebView;->access$3(Lcom/mdotm/android/view/MdotMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 286
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$MyWebChromeClient;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$1(Lcom/mdotm/android/view/MdotMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
