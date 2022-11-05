.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/Utils$VibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->vibrate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->c:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1466
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->c:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1467
    return-void
.end method

.method public onFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1459
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->c:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->b:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1460
    return-void
.end method

.method public onStarted()V
    .locals 3

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->c:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1453
    return-void
.end method
