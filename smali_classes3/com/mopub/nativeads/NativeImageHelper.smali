.class public Lcom/mopub/nativeads/NativeImageHelper;
.super Ljava/lang/Object;
.source "NativeImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeImageHelper$ImageListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "Cannot load image into null ImageView"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "Cannot load image with null url"

    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/mopub/nativeads/NativeImageHelper$2;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/NativeImageHelper$2;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p0, v1}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method

.method public static preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/NativeImageHelper$ImageListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object v1

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 53
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 54
    new-instance v3, Lcom/mopub/nativeads/NativeImageHelper$1;

    invoke-direct {v3, v0, v2, p2}, Lcom/mopub/nativeads/NativeImageHelper$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/nativeads/NativeImageHelper$ImageListener;->onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 86
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {v1, v0, v3}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method
