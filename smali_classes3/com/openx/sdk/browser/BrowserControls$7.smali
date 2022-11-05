.class Lcom/openx/sdk/browser/BrowserControls$7;
.super Ljava/lang/Object;
.source "BrowserControls.java"

# interfaces
.implements Lcom/openx/sdk/event/OXMEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/browser/BrowserControls;->setCloseEventListener()V
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
    .line 221
    iput-object p1, p0, Lcom/openx/sdk/browser/BrowserControls$7;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPerform(Lcom/openx/sdk/event/OXMEvent;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$7;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-virtual {v0}, Lcom/openx/sdk/browser/BrowserControls;->dispose()V

    .line 226
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$7;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$7;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openx/sdk/event/OXMEvent;->getArgs()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/sdk/browser/BrowserControlsEventsListener;->setCreatorOfView(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$7;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/sdk/browser/BrowserControlsEventsListener;->closeBrowser()V

    .line 231
    :cond_0
    return-void
.end method
