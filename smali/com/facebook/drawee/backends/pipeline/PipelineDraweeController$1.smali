.class Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController$1;
.super Ljava/lang/Object;
.source "PipelineDraweeController.java"

# interfaces
.implements Lcom/facebook/drawee/backends/pipeline/DrawableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController$1;->this$0:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDrawable(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 79
    instance-of v0, p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 81
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController$1;->this$0:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 82
    invoke-static {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->access$000(Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;)Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/OrientedDrawable;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/drawable/OrientedDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController$1;->this$0:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-static {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->access$100(Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController$1;->this$0:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-static {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->access$100(Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;->create(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsImageType(Lcom/facebook/imagepipeline/image/CloseableImage;)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method
