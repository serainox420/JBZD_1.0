.class Lcom/openx/sdk/browser/BrowserControls$5;
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
    .line 126
    iput-object p1, p0, Lcom/openx/sdk/browser/BrowserControls$5;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$5;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls$5;->this$0:Lcom/openx/sdk/browser/BrowserControls;

    invoke-static {v0}, Lcom/openx/sdk/browser/BrowserControls;->access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/sdk/browser/BrowserControlsEventsListener;->onRelaod()V

    .line 134
    :cond_0
    return-void
.end method
