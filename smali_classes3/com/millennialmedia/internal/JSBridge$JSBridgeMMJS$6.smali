.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->httpGet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->a:Ljava/lang/String;

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->b:I

    iput-object p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1662
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->a:Ljava/lang/String;

    iget v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->b:I

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 1664
    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->c:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1669
    :goto_0
    return-void

    .line 1667
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->c:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http request failed with response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
