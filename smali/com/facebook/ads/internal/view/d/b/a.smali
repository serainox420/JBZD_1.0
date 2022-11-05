.class public Lcom/facebook/ads/internal/view/d/b/a;
.super Lcom/facebook/ads/internal/view/d/b/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/d/b/a$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/d/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 10

    const/4 v9, -0x2

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/a$a;

    const-string v2, "AdChoices"

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/facebook/ads/internal/view/d/b/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a;->b:Lcom/facebook/ads/internal/view/d/b/a$a;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0xb2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    aget v3, p4, v5

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v5

    aget v3, p4, v5

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v6

    aget v3, p4, v6

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v7

    aget v3, p4, v6

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v8

    const/4 v3, 0x4

    aget v4, p4, v7

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    aget v4, p4, v7

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x6

    aget v4, p4, v8

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x7

    aget v4, p4, v8

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a;->b:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/d/b/a$a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v2, 0x41900000    # 18.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a;->b:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/d/b/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a;->b:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/d/b/a$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
