.class Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;
.super Landroid/view/animation/Animation;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Point;

.field final synthetic b:I

.field final synthetic c:Lcom/millennialmedia/internal/adcontrollers/LightboxController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/graphics/Point;I)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->c:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->a:Landroid/graphics/Point;

    iput p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 484
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 487
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->c:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->c(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/video/LightboxView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 488
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$5;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    goto :goto_0
.end method
