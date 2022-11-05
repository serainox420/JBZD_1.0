.class Lcom/loopme/common/VideoLoader$3;
.super Ljava/lang/Object;
.source "VideoLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/common/VideoLoader;->preloadVideo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/common/VideoLoader;

.field final synthetic val$partPreload:Z


# direct methods
.method constructor <init>(Lcom/loopme/common/VideoLoader;Z)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/loopme/common/VideoLoader$3;->this$0:Lcom/loopme/common/VideoLoader;

    iput-boolean p2, p0, Lcom/loopme/common/VideoLoader$3;->val$partPreload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/loopme/common/VideoLoader$3;->this$0:Lcom/loopme/common/VideoLoader;

    iget-object v1, p0, Lcom/loopme/common/VideoLoader$3;->this$0:Lcom/loopme/common/VideoLoader;

    invoke-static {v1}, Lcom/loopme/common/VideoLoader;->access$100(Lcom/loopme/common/VideoLoader;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loopme/common/VideoLoader$3;->val$partPreload:Z

    invoke-static {v0, v1, v2}, Lcom/loopme/common/VideoLoader;->access$200(Lcom/loopme/common/VideoLoader;Ljava/lang/String;Z)V

    .line 265
    return-void
.end method
