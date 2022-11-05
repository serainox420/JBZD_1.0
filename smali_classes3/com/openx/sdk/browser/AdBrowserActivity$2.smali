.class Lcom/openx/sdk/browser/AdBrowserActivity$2;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Lcom/openx/sdk/browser/BrowserControlsEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/browser/AdBrowserActivity;->initBrowserControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/browser/AdBrowserActivity;


# direct methods
.method constructor <init>(Lcom/openx/sdk/browser/AdBrowserActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public closeBrowser()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$200(Lcom/openx/sdk/browser/AdBrowserActivity;)Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    new-instance v1, Lcom/openx/sdk/event/OXMEvent;

    sget-object v2, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/openx/sdk/event/OXMEvent;-><init>(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/openx/sdk/event/OXMEventsListener;->fireEvent(Lcom/openx/sdk/event/OXMEvent;)V

    .line 307
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-virtual {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->finish()V

    .line 308
    return-void
.end method

.method public getCurrentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGoBack()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 290
    :cond_0
    return-void
.end method

.method public onGoForward()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 281
    :cond_0
    return-void
.end method

.method public onRelaod()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$2;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$100(Lcom/openx/sdk/browser/AdBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 272
    :cond_0
    return-void
.end method

.method public setCreatorOfView(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method
