.class Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;
.super Ljava/lang/Object;
.source "SplitCachesByImageSizeDiskCachePolicy.java"

# interfaces
.implements Lbolts/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->createAndStartCacheReadTask(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;
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
        "Lbolts/i",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;

.field final synthetic val$cacheKey:Lcom/facebook/cache/common/CacheKey;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$secondCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->this$0:Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->val$secondCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->val$cacheKey:Lcom/facebook/cache/common/CacheKey;

    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/i;)Lbolts/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/i",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lbolts/i",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->access$000(Lbolts/i;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbolts/i;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->val$secondCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->val$cacheKey:Lcom/facebook/cache/common/CacheKey;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;->then(Lbolts/i;)Lbolts/i;

    move-result-object v0

    return-object v0
.end method
