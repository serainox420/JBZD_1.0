.class Lcom/openx/sdk/browser/BrowserControls$1;
.super Ljava/lang/Object;
.source "BrowserControls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/browser/BrowserControls;->updateNavigationButtonsState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/browser/BrowserControls;


# direct methods
.method constructor <init>(Lcom/openx/sdk/browser/BrowserControls;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/sdk/browser/BrowserControlsEventsListener;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$100(Lcom/openx/sdk/browser/BrowserControls;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_back_active:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/sdk/browser/BrowserControlsEventsListener;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$200(Lcom/openx/sdk/browser/BrowserControls;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_forth_active:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$100(Lcom/openx/sdk/browser/BrowserControls;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_back_inactive:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$1;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$200(Lcom/openx/sdk/browser/BrowserControls;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_forth_inactive:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method
