.class Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;
.super Ljava/lang/Object;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSBridgeCommon"
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileLoaded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge;->c:Ljava/util/List;

    const-string v2, "filename"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onInjectedScriptsLoaded()V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->b()V

    .line 475
    :cond_2
    return-void
.end method

.method public getActionsQueue()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 445
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    monitor-enter v1

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->b(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->b(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->a:Lcom/millennialmedia/internal/JSBridge;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 450
    monitor-exit v1

    .line 454
    :goto_0
    return-object v0

    .line 452
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useActionsQueue()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 437
    sget-boolean v0, Lcom/millennialmedia/internal/JSBridge;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
