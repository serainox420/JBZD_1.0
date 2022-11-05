.class Lcom/openx/sdk/browser/BrowserControls$6;
.super Ljava/lang/Object;
.source "BrowserControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/browser/BrowserControls;->bindEventListeners()V
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
    .line 138
    iput-object p1, p0, Lcom/openx/sdk/browser/BrowserControls$6;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls$6;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v1}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$6;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/sdk/browser/BrowserControlsEventsListener;->getCurrentURL()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    if-nez v0, :cond_1

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls$6;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-virtual {v1, v0}, Lcom/openx/sdk/browser/BrowserControls;->openURLInExternalBrowser(Ljava/lang/String;)V

    goto :goto_0
.end method
