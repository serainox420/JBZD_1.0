.class Lcom/facebook/ads/internal/view/d/b/a$a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/util/DisplayMetrics;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->g:Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b/a$a;->a()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b/a$a;->b()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b/a$a;->c()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/a$a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/a$a$1;-><init>(Lcom/facebook/ads/internal/view/d/b/a$a;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/a$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b/a$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b/a$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d/b/a$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/facebook/ads/internal/util/s;->e:Lcom/facebook/ads/internal/util/s;

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/util/u;->a(Landroid/content/Context;Lcom/facebook/ads/internal/util/s;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/a$a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/d/b/a$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/a$a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    const v1, -0x423e37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/a$a;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput-boolean v4, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->g:Z

    new-instance v2, Lcom/facebook/ads/internal/view/d/b/a$a$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/facebook/ads/internal/view/d/b/a$a$2;-><init>(Lcom/facebook/ads/internal/view/d/b/a$a;II)V

    new-instance v3, Lcom/facebook/ads/internal/view/d/b/a$a$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/ads/internal/view/d/b/a$a$3;-><init>(Lcom/facebook/ads/internal/view/d/b/a$a;II)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/d/b/a$a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/d/b/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b/a$a;->d()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/d/b/a$a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a;->f:Landroid/widget/TextView;

    return-object v0
.end method
