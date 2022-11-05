.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeCenterInside"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 309
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 310
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 311
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 312
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 313
    add-float v0, v1, v5

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v5

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 314
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string v0, "center_inside"

    return-object v0
.end method
