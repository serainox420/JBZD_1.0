.class Lcom/video/adsdk/internal/ADJavascriptBridge$5;
.super Ljava/lang/Object;
.source "ADJavascriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADJavascriptBridge;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADJavascriptBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$5;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iput-object p2, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$5;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$5;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$5;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$5;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 312
    iget-object v2, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$5;->val$url:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPageStartingLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method
