.class final Lcom/mopub/nativeads/NativeImageHelper$1;
.super Ljava/lang/Object;
.source "NativeImageHelper.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->c:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "Failed to download a native ads image:"

    invoke-static {v0, p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    iget-object v0, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 72
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->c:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper$ImageListener;->onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 61
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->c:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/NativeImageHelper$ImageListener;->onImagesCached()V

    .line 65
    :cond_0
    return-void
.end method
