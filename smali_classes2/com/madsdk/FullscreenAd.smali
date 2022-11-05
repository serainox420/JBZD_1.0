.class public Lcom/madsdk/FullscreenAd;
.super Landroid/app/DialogFragment;
.source "FullscreenAd.java"


# instance fields
.field private fullScreenDialog:Lcom/madsdk/FullScreenDialog;

.field private isUseCustomClose:Z

.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private listener:Lcom/madsdk/InterstitialAdListener;

.field private mWebView:Lcom/madsdk/AdWebView;

.field private mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addWebView(Lcom/madsdk/AdWebView;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/madsdk/FullscreenAd;->mWebView:Lcom/madsdk/AdWebView;

    .line 39
    iput-object p2, p0, Lcom/madsdk/FullscreenAd;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    iput-boolean p3, p0, Lcom/madsdk/FullscreenAd;->isUseCustomClose:Z

    .line 41
    return-void
.end method

.method public hideButton()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->fullScreenDialog:Lcom/madsdk/FullScreenDialog;

    invoke-virtual {v0}, Lcom/madsdk/FullScreenDialog;->hideButton()V

    .line 49
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/madsdk/FullScreenDialog;

    invoke-virtual {p0}, Lcom/madsdk/FullscreenAd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/madsdk/FullscreenAd;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/madsdk/FullScreenDialog;-><init>(Landroid/content/Context;Lcom/madsdk/javascript/MraidEventsListener;)V

    iput-object v0, p0, Lcom/madsdk/FullscreenAd;->fullScreenDialog:Lcom/madsdk/FullScreenDialog;

    .line 24
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->mWebView:Lcom/madsdk/AdWebView;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/madsdk/FullscreenAd;->dismiss()V

    .line 26
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->fullScreenDialog:Lcom/madsdk/FullScreenDialog;

    iget-object v1, p0, Lcom/madsdk/FullscreenAd;->mWebView:Lcom/madsdk/AdWebView;

    iget-object v2, p0, Lcom/madsdk/FullscreenAd;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/madsdk/FullscreenAd;->isUseCustomClose:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/madsdk/FullScreenDialog;->addWebView(Lcom/madsdk/AdWebView;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 29
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->fullScreenDialog:Lcom/madsdk/FullScreenDialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->listener:Lcom/madsdk/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->listener:Lcom/madsdk/InterstitialAdListener;

    invoke-interface {v0}, Lcom/madsdk/InterstitialAdListener;->onResumeForAd()V

    .line 61
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 66
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->listener:Lcom/madsdk/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->listener:Lcom/madsdk/InterstitialAdListener;

    invoke-interface {v0}, Lcom/madsdk/InterstitialAdListener;->onPauseForAd()V

    .line 69
    :cond_0
    return-void
.end method

.method public removeWebView()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->fullScreenDialog:Lcom/madsdk/FullScreenDialog;

    invoke-virtual {v0}, Lcom/madsdk/FullScreenDialog;->removeWebView()V

    .line 53
    return-void
.end method

.method public setListener(Lcom/madsdk/InterstitialAdListener;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/madsdk/FullscreenAd;->listener:Lcom/madsdk/InterstitialAdListener;

    .line 73
    return-void
.end method

.method public setMraidEventsListener(Lcom/madsdk/javascript/MraidEventsListener;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/madsdk/FullscreenAd;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 34
    return-void
.end method

.method public showButton()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/madsdk/FullscreenAd;->fullScreenDialog:Lcom/madsdk/FullScreenDialog;

    invoke-virtual {v0}, Lcom/madsdk/FullScreenDialog;->showButton()V

    .line 45
    return-void
.end method
