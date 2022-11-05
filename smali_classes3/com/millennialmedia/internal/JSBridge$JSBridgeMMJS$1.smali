.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->addCalendarEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 946
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    return-void
.end method

.method public onUIDisplayed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 935
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calendar activity started"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    .line 939
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    return-void
.end method
