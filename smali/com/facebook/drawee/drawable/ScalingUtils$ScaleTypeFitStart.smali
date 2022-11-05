.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitStart"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 203
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 204
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 205
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 206
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 207
    add-float v0, v1, v3

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string v0, "fit_start"

    return-object v0
.end method
