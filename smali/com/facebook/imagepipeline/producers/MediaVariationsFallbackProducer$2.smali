.class Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

# interfaces
.implements Lbolts/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/h",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

.field final synthetic val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field final synthetic val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

.field final synthetic val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$sortedVariants:Ljava/util/List;

.field final synthetic val$variantsIndex:I


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILcom/facebook/imagepipeline/request/ImageRequest;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    iput p8, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    iput-object p9, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p10, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->then(Lbolts/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/i;)Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/i",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 260
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$200(Lbolts/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v2, "MediaVariationsFallbackProducer"

    invoke-interface {v0, v1, v2, v11}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 262
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    move v2, v9

    .line 324
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 325
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 328
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/MediaVariations;->getMediaId()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$000(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 330
    :cond_1
    return-object v11

    .line 264
    :cond_2
    invoke-virtual {p1}, Lbolts/i;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v3, "MediaVariationsFallbackProducer"

    invoke-virtual {p1}, Lbolts/i;->g()Ljava/lang/Exception;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4, v11}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 269
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/MediaVariations;->getMediaId()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$000(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p1}, Lbolts/i;->f()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 273
    if-eqz v6, :cond_6

    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/MediaVariations;->shouldForceRequestForSpecifiedUri()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    iget v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    .line 276
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 277
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$300(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v5, v2

    .line 278
    :goto_1
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v10, "MediaVariationsFallbackProducer"

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    .line 285
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 286
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/MediaVariations;->getSource()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-static/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZILjava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 278
    invoke-interface {v7, v8, v10, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    if-eqz v5, :cond_4

    .line 290
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, v6, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 293
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 295
    if-eqz v5, :cond_0

    move v2, v9

    goto/16 :goto_0

    :cond_5
    move v5, v9

    .line 275
    goto :goto_1

    .line 296
    :cond_6
    iget v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    .line 299
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    iget v6, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$400(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move v2, v9

    .line 308
    goto/16 :goto_0

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v10, "MediaVariationsFallbackProducer"

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    .line 317
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 318
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/MediaVariations;->getSource()Ljava/lang/String;

    move-result-object v7

    move v5, v9

    move v8, v9

    .line 313
    invoke-static/range {v3 .. v8}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZILjava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 310
    invoke-interface {v0, v1, v10, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
