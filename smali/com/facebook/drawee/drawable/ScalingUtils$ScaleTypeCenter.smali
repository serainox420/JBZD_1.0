.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeCenter"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 284
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 285
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, p4

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 286
    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 287
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string v0, "center"

    return-object v0
.end method
