.class Lcom/smaato/soma/s$9;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s;->b()V
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
    .line 368
    iput-object p1, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->c(Lcom/smaato/soma/s;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->g(Lcom/smaato/soma/s;)V

    .line 416
    :cond_0
    :goto_0
    return-object v5

    .line 376
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 377
    iget-object v0, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-virtual {v0}, Lcom/smaato/soma/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 379
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-static {v2}, Lcom/smaato/soma/s;->f(Lcom/smaato/soma/s;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 381
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 382
    iget-object v3, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-virtual {v3, v2}, Lcom/smaato/soma/s;->getLocationOnScreen([I)V

    .line 383
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    .line 384
    invoke-virtual {v4}, Lcom/smaato/soma/s;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v3, v0

    .line 386
    const/4 v3, 0x1

    aget v2, v2, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v0, v0

    aput v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    .line 390
    invoke-static {v4}, Lcom/smaato/soma/s;->f(Lcom/smaato/soma/s;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v0

    .line 387
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 391
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 392
    new-instance v1, Lcom/smaato/soma/s$9$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/s$9$1;-><init>(Lcom/smaato/soma/s$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/smaato/soma/s$9;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
