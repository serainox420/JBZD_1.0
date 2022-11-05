.class Lcom/loopme/common/VideoLoader$1;
.super Ljava/lang/Object;
.source "VideoLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/common/VideoLoader;->handleVideoPreviewLoaded(ILjava/lang/String;I)V
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
    .line 182
    iput-object p1, p0, Lcom/loopme/common/VideoLoader$1;->this$0:Lcom/loopme/common/VideoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/loopme/common/VideoLoader$1;->this$0:Lcom/loopme/common/VideoLoader;

    invoke-static {v0}, Lcom/loopme/common/VideoLoader;->access$000(Lcom/loopme/common/VideoLoader;)Lcom/loopme/common/VideoLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/loopme/common/VideoLoader$1;->this$0:Lcom/loopme/common/VideoLoader;

    invoke-static {v0}, Lcom/loopme/common/VideoLoader;->access$000(Lcom/loopme/common/VideoLoader;)Lcom/loopme/common/VideoLoader$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/common/VideoLoader$1;->this$0:Lcom/loopme/common/VideoLoader;

    invoke-static {v1}, Lcom/loopme/common/VideoLoader;->access$100(Lcom/loopme/common/VideoLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loopme/common/VideoLoader$Callback;->onPreviewLoaded(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method
