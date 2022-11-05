.class final Lcom/loopme/debugging/LiveDebug$3;
.super Ljava/lang/Object;
.source "LiveDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/debugging/LiveDebug;->sendToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->access$400()Lcom/loopme/debugging/LogDbHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send to server"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->access$600()Ljava/util/Map;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/loopme/debugging/HttpUtils;->postDataToServer(Ljava/util/Map;)V

    .line 95
    :cond_0
    return-void
.end method
