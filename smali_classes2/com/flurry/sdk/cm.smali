.class public final Lcom/flurry/sdk/cm;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lcom/flurry/sdk/cm;->a:Z

    .line 24
    iput-boolean v0, p0, Lcom/flurry/sdk/cm;->b:Z

    .line 25
    iput-boolean v0, p0, Lcom/flurry/sdk/cm;->c:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final setDefaultLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/flurry/sdk/cm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 66
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 67
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 69
    invoke-virtual {p1, v2, v1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 72
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 73
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iput-boolean v3, p0, Lcom/flurry/sdk/cm;->a:Z

    .line 2052
    new-instance v0, Lcom/flurry/sdk/hi;

    invoke-direct {v0}, Lcom/flurry/sdk/hi;-><init>()V

    .line 2053
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->g()V

    .line 2274
    iget-object v0, v0, Lcom/flurry/sdk/hi;->a:Landroid/graphics/Bitmap;

    .line 2055
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cm;->setFlurryMraidImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2057
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/cm;->setBackgroundColor(I)V

    .line 1086
    iput-boolean v3, p0, Lcom/flurry/sdk/cm;->a:Z

    .line 80
    return-void
.end method

.method public final setFlurryBackgroundColor(I)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cm;->setBackgroundColor(I)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cm;->b:Z

    .line 40
    return-void
.end method

.method public final setFlurryMraidImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cm;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cm;->c:Z

    .line 47
    return-void
.end method
