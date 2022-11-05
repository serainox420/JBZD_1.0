.class Lcom/openx/dialogs/AdInterstitialDialog$1;
.super Ljava/lang/Object;
.source "AdInterstitialDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdInterstitialDialog;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/dialogs/AdInterstitialDialog;


# direct methods
.method constructor <init>(Lcom/openx/dialogs/AdInterstitialDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/openx/dialogs/AdInterstitialDialog$1;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$1;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    invoke-virtual {v0}, Lcom/openx/dialogs/AdInterstitialDialog;->resetInitialOrientation()V

    .line 71
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$1;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->isMRAID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$1;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onStateChange(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$1;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->detachFromParent()Landroid/view/ViewGroup;

    .line 76
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$1;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdInterstitialDialog;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationManager;->restoreInitialOrientation()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog$1;->this$0:Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdInterstitial;

    .line 82
    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClosed()V

    .line 86
    :cond_1
    return-void
.end method
