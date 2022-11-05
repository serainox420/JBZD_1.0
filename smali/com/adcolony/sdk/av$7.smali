.class Lcom/adcolony/sdk/av$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/av;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/av;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/av;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide v12, 0x408f400000000000L    # 1000.0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 537
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;J)J

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-boolean v0, v0, Lcom/adcolony/sdk/av;->b:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 540
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-boolean v0, v0, Lcom/adcolony/sdk/av;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->b(Lcom/adcolony/sdk/av;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    :goto_1
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v0, v0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 547
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->c(Lcom/adcolony/sdk/av;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/adcolony/sdk/a;->o:Z

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;J)J

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0, v11}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;Z)Z

    .line 553
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, v1, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v12

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;D)D

    .line 554
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, v1, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v12

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/av;->b(Lcom/adcolony/sdk/av;D)D

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->c(Lcom/adcolony/sdk/av;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->d(Lcom/adcolony/sdk/av;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/adcolony/sdk/a;->o:Z

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->e(Lcom/adcolony/sdk/av;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    .line 561
    sget-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v1, "getCurrentPosition() not working, firing AdSession.on_error"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 562
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->f(Lcom/adcolony/sdk/av;)V

    .line 571
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->g(Lcom/adcolony/sdk/av;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 573
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->h(Lcom/adcolony/sdk/av;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 575
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    const-wide v2, 0x4076800000000000L    # 360.0

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->i(Lcom/adcolony/sdk/av;)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;F)F

    .line 578
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->j(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->j(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->k(Lcom/adcolony/sdk/av;)F

    move-result v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v9, v9, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 580
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->j(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 581
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->j(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 582
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->j(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->k(Lcom/adcolony/sdk/av;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 583
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->l(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 584
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->k(Lcom/adcolony/sdk/av;)F

    move-result v0

    mul-float/2addr v0, v8

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/high16 v0, 0x40c00000    # 6.0f

    .line 585
    :goto_3
    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    const/high16 v0, 0x40800000    # 4.0f

    .line 586
    :cond_4
    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->l(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 587
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->l(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->k(Lcom/adcolony/sdk/av;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v9, v9, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 588
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->l(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 591
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 592
    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->j(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "0123456789"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v10, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 593
    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/adcolony/sdk/av;->b(Lcom/adcolony/sdk/av;F)F

    .line 596
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 598
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/av$7$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/av$7$1;-><init>(Lcom/adcolony/sdk/av$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 612
    :cond_5
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0, v10}, Lcom/adcolony/sdk/av;->c(Lcom/adcolony/sdk/av;Z)Z

    .line 615
    :cond_6
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->i(Lcom/adcolony/sdk/av;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->e(Lcom/adcolony/sdk/av;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;I)I

    .line 616
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->m(Lcom/adcolony/sdk/av;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/av;->c(Lcom/adcolony/sdk/av;F)F

    .line 617
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->m(Lcom/adcolony/sdk/av;)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/av;->d(Lcom/adcolony/sdk/av;F)F

    .line 618
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->r(Lcom/adcolony/sdk/av;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->p(Lcom/adcolony/sdk/av;)F

    move-result v1

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->m(Lcom/adcolony/sdk/av;)F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->q(Lcom/adcolony/sdk/av;)F

    move-result v2

    iget-object v3, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v3}, Lcom/adcolony/sdk/av;->m(Lcom/adcolony/sdk/av;)F

    move-result v3

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v3}, Lcom/adcolony/sdk/av;->p(Lcom/adcolony/sdk/av;)F

    move-result v3

    iget-object v4, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v4}, Lcom/adcolony/sdk/av;->m(Lcom/adcolony/sdk/av;)F

    move-result v4

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v4}, Lcom/adcolony/sdk/av;->q(Lcom/adcolony/sdk/av;)F

    move-result v4

    iget-object v5, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v5}, Lcom/adcolony/sdk/av;->m(Lcom/adcolony/sdk/av;)F

    move-result v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 621
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->s(Lcom/adcolony/sdk/av;)F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->i(Lcom/adcolony/sdk/av;)D

    move-result-wide v4

    iget-object v1, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v1}, Lcom/adcolony/sdk/av;->e(Lcom/adcolony/sdk/av;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/adcolony/sdk/av;->e(Lcom/adcolony/sdk/av;F)F

    .line 625
    :cond_7
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->t(Lcom/adcolony/sdk/av;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-boolean v0, v0, Lcom/adcolony/sdk/av;->b:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 628
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->u(Lcom/adcolony/sdk/av;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->v(Lcom/adcolony/sdk/av;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 629
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->u(Lcom/adcolony/sdk/av;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->n(Lcom/adcolony/sdk/av;)Lcom/adcolony/sdk/c;

    move-result-object v2

    iget v2, v2, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 630
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->u(Lcom/adcolony/sdk/av;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->w(Lcom/adcolony/sdk/av;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 631
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->u(Lcom/adcolony/sdk/av;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "elapsed"

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->e(Lcom/adcolony/sdk/av;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 632
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->u(Lcom/adcolony/sdk/av;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "duration"

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->i(Lcom/adcolony/sdk/av;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 634
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "VideoView.on_progress"

    iget-object v2, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v2}, Lcom/adcolony/sdk/av;->n(Lcom/adcolony/sdk/av;)Lcom/adcolony/sdk/c;

    move-result-object v2

    iget v2, v2, Lcom/adcolony/sdk/c;->l:I

    iget-object v3, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v3}, Lcom/adcolony/sdk/av;->u(Lcom/adcolony/sdk/av;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 638
    :cond_8
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-boolean v0, v0, Lcom/adcolony/sdk/av;->c:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 640
    :cond_9
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iput-boolean v10, v0, Lcom/adcolony/sdk/av;->c:Z

    .line 641
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-virtual {v0}, Lcom/adcolony/sdk/av;->c()V

    goto/16 :goto_1

    .line 566
    :cond_a
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0, v11}, Lcom/adcolony/sdk/av;->b(Lcom/adcolony/sdk/av;Z)Z

    goto/16 :goto_2

    .line 584
    :cond_b
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->k(Lcom/adcolony/sdk/av;)F

    move-result v0

    mul-float/2addr v0, v8

    goto/16 :goto_3

    .line 646
    :cond_c
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 650
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0}, Lcom/adcolony/sdk/av;->f(Lcom/adcolony/sdk/av;)V

    .line 651
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "InterruptedException in ADCVideoView\'s update thread."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto/16 :goto_0

    .line 656
    :cond_d
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    iget-boolean v0, v0, Lcom/adcolony/sdk/av;->c:Z

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/adcolony/sdk/av$7;->a:Lcom/adcolony/sdk/av;

    invoke-virtual {v0}, Lcom/adcolony/sdk/av;->c()V

    goto/16 :goto_1
.end method
