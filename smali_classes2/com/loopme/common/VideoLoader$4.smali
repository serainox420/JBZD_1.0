.class Lcom/loopme/common/VideoLoader$4;
.super Ljava/lang/Object;
.source "VideoLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/common/VideoLoader;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/common/VideoLoader;


# direct methods
.method constructor <init>(Lcom/loopme/common/VideoLoader;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/loopme/common/VideoLoader$4;->this$0:Lcom/loopme/common/VideoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcom/loopme/common/VideoLoader;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/loopme/common/VideoLoader$4;->this$0:Lcom/loopme/common/VideoLoader;

    invoke-static {v0}, Lcom/loopme/common/VideoLoader;->access$400(Lcom/loopme/common/VideoLoader;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 278
    return-void
.end method
