.class Lcom/openx/dialogs/AdExpandedDialog$1;
.super Ljava/lang/Object;
.source "AdExpandedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdExpandedDialog;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/dialogs/AdExpandedDialog;


# direct methods
.method constructor <init>(Lcom/openx/dialogs/AdExpandedDialog;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/openx/dialogs/AdExpandedDialog$1;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/openx/dialogs/AdExpandedDialog$1;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onStateChange(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/openx/dialogs/AdExpandedDialog$1;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdBanner;

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lcom/openx/dialogs/AdExpandedDialog$1;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v1, v1, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->initStartLoading(Lcom/openx/view/WebViewBase;)V

    .line 41
    iget-object v1, p0, Lcom/openx/dialogs/AdExpandedDialog$1;->this$0:Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v1, v1, Lcom/openx/dialogs/AdExpandedDialog;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    invoke-virtual {v1}, Lcom/openx/view/mraid/OrientationManager;->restoreInitialOrientation()V

    .line 43
    invoke-virtual {v0}, Lcom/openx/view/AdBanner;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/openx/view/AdBanner;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClosed()V

    .line 45
    :cond_0
    return-void
.end method
