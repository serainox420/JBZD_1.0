.class public Lcom/facebook/ads/internal/view/a/c;
.super Landroid/widget/LinearLayout;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/c;->a()V

    return-void
.end method

.method private a()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/high16 v5, -0x1000000

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v4}, Lcom/facebook/ads/internal/view/a/c;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/ads/internal/view/a/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/a/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getPadlockDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/util/s;->b:Lcom/facebook/ads/internal/util/s;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/u;->b(Landroid/content/Context;Lcom/facebook/ads/internal/util/s;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->c:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public setSubtitle(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    const-string v3, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/c;->getPadlockDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
