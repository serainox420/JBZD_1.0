.class public Lcom/millennialmedia/internal/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;,
        Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/millennialmedia/internal/utils/ViewUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static attachView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    return-void
.end method

.method public static attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 359
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 362
    if-eq v0, v1, :cond_2

    .line 363
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v3, "Changing view context to match parent context"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_1
    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 370
    :cond_2
    if-eqz p2, :cond_3

    .line 371
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static convertPixelsToDips(I)I
    .locals 2

    .prologue
    .line 565
    int-to-float v0, p0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static convertPixelsToDips(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 571
    if-nez p0, :cond_1

    .line 572
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to convert for null dimensions"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v0

    .line 580
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 581
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 583
    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 584
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 585
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 586
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 588
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converted dimensions from pixels to dips: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getActivityForView(Landroid/view/View;)Landroid/app/Activity;
    .locals 4

    .prologue
    .line 596
    const/4 v1, 0x0

    .line 598
    if-eqz p0, :cond_2

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 603
    :goto_0
    instance-of v2, v0, Landroid/content/MutableContextWrapper;

    if-eqz v2, :cond_0

    .line 604
    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 607
    :cond_0
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 608
    check-cast v0, Landroid/app/Activity;

    .line 612
    :goto_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found activity <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> for view <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getActivityHashForView(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 417
    const/4 v0, -0x1

    .line 419
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 420
    if-nez v1, :cond_1

    .line 421
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to get activity hash"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found activity hash code <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> for view <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    return v0

    .line 423
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static getContentDimensions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 504
    if-nez p0, :cond_1

    .line 505
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to calculate content dimensions for null view"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 527
    :cond_0
    :goto_0
    return-object p1

    .line 510
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 511
    if-nez v1, :cond_2

    .line 512
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to calculate content for null root view"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 514
    goto :goto_0

    .line 517
    :cond_2
    if-nez p1, :cond_3

    .line 518
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 521
    :cond_3
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 523
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content dimensions for View <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 438
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 442
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 443
    check-cast v0, Landroid/view/ViewGroup;

    .line 447
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found decor view <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> for view <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getParentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 407
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public static getViewDimensionsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 469
    if-nez p0, :cond_1

    .line 470
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to calculate view dimensions for null view"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 p1, 0x0

    .line 493
    :cond_0
    :goto_0
    return-object p1

    .line 475
    :cond_1
    if-nez p1, :cond_2

    .line 476
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 479
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 483
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 484
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 485
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 486
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 487
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 489
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On screen dimensions for View <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getViewDimensionsRelativeToContent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 538
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewDimensionsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_2

    .line 540
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 541
    if-nez v1, :cond_1

    .line 542
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to calculate dimensions for null root view"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x0

    .line 559
    :cond_0
    :goto_0
    return-object v0

    .line 549
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 550
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 551
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 552
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 555
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimensions relative to content for View <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getViewPositionOnScreen(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 457
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 461
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 463
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static isChild(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 396
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 397
    check-cast v0, Landroid/view/ViewGroup;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 397
    goto :goto_0

    :cond_1
    move v0, v1

    .line 400
    goto :goto_0
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 381
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 382
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to remove view from parent, no valid parent view found"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
