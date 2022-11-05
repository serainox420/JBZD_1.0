.class Lcom/smartadserver/android/library/ui/SASAdView$35;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;IIIIZZZ)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->a:Ljava/lang/String;

    iput p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->b:I

    iput p4, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->c:I

    iput p5, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->d:I

    iput p6, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->e:I

    iput-boolean p7, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->f:Z

    iput-boolean p8, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->g:Z

    iput-boolean p9, p0, Lcom/smartadserver/android/library/ui/SASAdView$35;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1312
    const/4 v2, 0x0

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    if-eqz v3, :cond_0

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASAdElement;->isOpenClickInApplication()Z

    move-result v2

    .line 1319
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1320
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z

    .line 1323
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, -0x1

    .line 1324
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    const/4 v3, -0x1

    .line 1328
    :goto_1
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v4, v4, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v4, v4, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/d;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    :cond_4
    const/4 v4, 0x1

    .line 1332
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v5

    .line 1333
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v6}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v6

    .line 1334
    const/4 v7, 0x0

    aget v13, v6, v7

    .line 1335
    const/4 v7, 0x1

    aget v14, v6, v7

    .line 1336
    const/4 v7, 0x2

    aget v15, v6, v7

    .line 1337
    const/4 v7, 0x3

    aget v16, v6, v7

    .line 1340
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->b:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->c:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    .line 1452
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->g(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z

    .line 1454
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->v()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveViewToForeground:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1557
    :goto_4
    return-void

    .line 1323
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->b:I

    goto/16 :goto_0

    .line 1324
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->c:I

    goto/16 :goto_1

    .line 1330
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 1345
    :cond_9
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1346
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v6}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/graphics/Rect;

    move-result-object v17

    .line 1348
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v18, v0

    .line 1349
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1350
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->v()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content locationOnScreen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v18, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v18, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v19

    .line 1354
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1355
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1357
    const/4 v5, 0x0

    aget v6, v18, v5

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aput v6, v18, v5

    .line 1358
    const/4 v5, 0x1

    aget v6, v18, v5

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    aput v6, v18, v5

    .line 1360
    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->d:I

    .line 1361
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->e:I

    .line 1365
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->f:Z

    if-eqz v5, :cond_d

    .line 1366
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->e(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v5

    .line 1374
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->g:Z

    if-nez v8, :cond_22

    .line 1376
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1379
    if-lez v2, :cond_a

    .line 1380
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int v11, v13, v15

    sub-int/2addr v10, v11

    int-to-double v10, v10

    int-to-double v0, v2

    move-wide/from16 v20, v0

    div-double v10, v10, v20

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 1382
    :cond_a
    if-lez v3, :cond_21

    .line 1383
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int v11, v14, v16

    sub-int/2addr v10, v11

    int-to-double v10, v10

    int-to-double v0, v3

    move-wide/from16 v20, v0

    div-double v10, v10, v20

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide v10, v8

    .line 1386
    :goto_6
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v10, v8

    if-gez v8, :cond_20

    .line 1388
    if-lez v2, :cond_1f

    .line 1389
    int-to-double v8, v2

    mul-double/2addr v8, v10

    double-to-int v9, v8

    .line 1392
    :goto_7
    if-lez v3, :cond_b

    .line 1393
    int-to-double v2, v3

    mul-double/2addr v2, v10

    double-to-int v3, v2

    .line 1396
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v2

    const-string v8, "Resize properties are wider than max size but offscreen is not allowed => cropping"

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v3

    .line 1400
    :goto_8
    if-lez v9, :cond_1e

    .line 1401
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    aget v3, v18, v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    add-int/2addr v2, v13

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1402
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v15

    sub-int/2addr v3, v9

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x0

    aget v10, v18, v10

    sub-int/2addr v7, v10

    sub-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1404
    :goto_9
    if-lez v8, :cond_1d

    .line 1405
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x1

    aget v10, v18, v10

    add-int/2addr v7, v10

    add-int/2addr v7, v14

    sub-int/2addr v2, v7

    neg-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1406
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, v6, v16

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x1

    aget v10, v18, v10

    add-int/2addr v7, v10

    add-int/2addr v6, v7

    sub-int/2addr v6, v8

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v6, v8

    move v7, v9

    .line 1410
    :goto_a
    iput v7, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1411
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1414
    and-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_e

    .line 1415
    const/16 v6, 0x50

    .line 1416
    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v2, v6

    .line 1424
    :goto_b
    and-int/lit8 v6, v5, 0x4

    if-gtz v6, :cond_c

    if-gez v7, :cond_f

    .line 1426
    :cond_c
    or-int/lit8 v2, v2, 0x3

    .line 1427
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-int/2addr v3, v5

    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1440
    :goto_c
    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1442
    if-eqz v4, :cond_11

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2, v12}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    goto/16 :goto_3

    .line 1369
    :cond_d
    const/4 v5, 0x5

    goto/16 :goto_5

    .line 1419
    :cond_e
    const/16 v6, 0x30

    .line 1420
    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    const/4 v8, 0x1

    aget v8, v18, v8

    sub-int/2addr v2, v8

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v2, v6

    goto :goto_b

    .line 1430
    :cond_f
    and-int/lit8 v5, v5, 0x10

    if-lez v5, :cond_10

    .line 1431
    or-int/lit8 v2, v2, 0x5

    .line 1432
    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_c

    .line 1436
    :cond_10
    or-int/lit8 v2, v2, 0x3

    .line 1437
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    div-int/lit8 v6, v7, 0x2

    sub-int/2addr v5, v6

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_c

    .line 1446
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->f(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->f(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    .line 1464
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->h:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v2

    instance-of v2, v2, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-nez v2, :cond_13

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->h(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    :cond_13
    if-eqz v4, :cond_14

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->i(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1477
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->a:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 1481
    if-eqz v4, :cond_18

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v2, :cond_15

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    .line 1488
    :cond_15
    const/16 v2, 0x8

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1490
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x8

    .line 1492
    :cond_17
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v3, v2}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonVisibility(I)V

    .line 1495
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v2, :cond_19

    .line 1497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1499
    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1500
    new-instance v3, Lcom/smartadserver/android/library/ui/SASAdView$35$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView$35$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$35;Ljava/net/URL;)V

    .line 1527
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :cond_19
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->requestFocus()Z

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->j(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->k(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->setY(F)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->o()V

    .line 1551
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v3, Lcom/smartadserver/android/library/ui/SASAdView$35$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartadserver/android/library/ui/SASAdView$35$2;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$35;)V

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 1490
    :cond_1b
    const/4 v2, 0x0

    goto :goto_d

    .line 1529
    :catch_0
    move-exception v2

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 1533
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    move v2, v6

    move v7, v9

    move v6, v8

    goto/16 :goto_a

    :cond_1e
    move v3, v7

    goto/16 :goto_9

    :cond_1f
    move v9, v2

    goto/16 :goto_7

    :cond_20
    move v8, v3

    move v9, v2

    goto/16 :goto_8

    :cond_21
    move-wide v10, v8

    goto/16 :goto_6

    :cond_22
    move/from16 v22, v6

    move v6, v3

    move v3, v7

    move v7, v2

    move/from16 v2, v22

    goto/16 :goto_a
.end method
