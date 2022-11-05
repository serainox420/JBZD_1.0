.class Lcom/smaato/soma/s$7;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/s;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 309
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->c(Lcom/smaato/soma/s;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->d(Lcom/smaato/soma/s;)V

    .line 355
    :goto_0
    return-object v6

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/b/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/b/c;->requestLayout()V

    .line 315
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-virtual {v0, v5}, Lcom/smaato/soma/s;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smaato/soma/b/c;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->e(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smaato/soma/b/b;->setVisibility(I)V

    .line 318
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-virtual {v0}, Lcom/smaato/soma/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 321
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-static {v2}, Lcom/smaato/soma/s;->f(Lcom/smaato/soma/s;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 322
    new-array v2, v4, [I

    .line 323
    iget-object v3, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    invoke-virtual {v3, v2}, Lcom/smaato/soma/s;->getLocationOnScreen([I)V

    .line 324
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    .line 325
    invoke-virtual {v2}, Lcom/smaato/soma/s;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    .line 327
    iget-object v1, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    const-string v2, "translationY"

    new-array v3, v4, [F

    iget-object v4, p0, Lcom/smaato/soma/s$7;->a:Lcom/smaato/soma/s;

    .line 329
    invoke-static {v4}, Lcom/smaato/soma/s;->f(Lcom/smaato/soma/s;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x1

    add-int/lit8 v5, v0, -0x14

    int-to-float v5, v5

    aput v5, v3, v4

    .line 327
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 331
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 332
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 333
    new-instance v2, Lcom/smaato/soma/s$7$1;

    invoke-direct {v2, p0, v0}, Lcom/smaato/soma/s$7$1;-><init>(Lcom/smaato/soma/s$7;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/smaato/soma/s$7;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
