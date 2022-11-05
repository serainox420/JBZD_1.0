.class public Lcom/facebook/imagepipeline/bitmaps/ArtBitmapFactory;
.super Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
.source "ArtBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/BitmapPool;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/ArtBitmapFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    .line 45
    return-void
.end method


# virtual methods
.method public createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1, p2, p3}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInByteForBitmap(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/ArtBitmapFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/memory/BitmapPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 63
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->reconfigureBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)V

    .line 64
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/ArtBitmapFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method
