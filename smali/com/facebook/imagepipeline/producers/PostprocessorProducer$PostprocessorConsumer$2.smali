.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->submitPostprocessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->access$300(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    .line 171
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->access$400(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)Z

    move-result v0

    .line 172
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->access$302(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    .line 173
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->access$502(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Z)Z

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :try_start_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v1, v2, v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->access$600(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->access$700(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V

    .line 184
    return-void

    .line 174
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 180
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v0
.end method
