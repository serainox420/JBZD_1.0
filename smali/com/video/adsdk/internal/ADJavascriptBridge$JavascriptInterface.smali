.class Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;
.super Ljava/lang/Object;
.source "ADJavascriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/internal/ADJavascriptBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADJavascriptBridge;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized _SetBackgroundColorOfNativePlayer(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    const-string v0, "js->native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_SetBackgroundColorOfNativePlayer() color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

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

    .line 116
    invoke-interface {v0, p1}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onSetBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized _nativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    const-string v0, "js->native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_nativeCall() action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "playMovie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    invoke-static {v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->access$000(Lcom/video/adsdk/internal/ADJavascriptBridge;)V

    .line 64
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 65
    invoke-interface {v0, p2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPlayMovie(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_0
    :try_start_1
    const-string v0, "display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 69
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onDisplay()V

    goto :goto_1

    .line 71
    :cond_1
    const-string v0, "finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onFinish(I)V

    goto :goto_2

    .line 75
    :cond_2
    const-string v0, "track"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 77
    invoke-interface {v0, p2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onTrack(Ljava/lang/String;)V

    goto :goto_3

    .line 79
    :cond_3
    const-string v0, "showSkip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 81
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onShowSkip()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 84
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public _nativeLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 96
    const-string v0, "js->native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_nativeLog() params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public declared-synchronized _nativePrefetchCall(Ljava/lang/String;J)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    const-string v0, "js->native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_nativePrefetchCall() url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

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

    .line 55
    invoke-interface {v0, p1, p2, p3}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPrefetchURL(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public jsError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 106
    const-string v0, "js->native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsError() message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failingUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

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

    .line 108
    const/4 v2, -0x8

    invoke-interface {v0, v2, p1, p2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPageError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public openURL(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 88
    const-string v0, "js->native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openURL() url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inAppBrowser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

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

    .line 90
    invoke-interface {v0, p1, p2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onOpenURLInBrowser(Ljava/lang/String;Z)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public showHTML(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 101
    const-string v0, "js->native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHTML() html:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
