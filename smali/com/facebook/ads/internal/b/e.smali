.class public Lcom/facebook/ads/internal/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;Landroid/content/Context;)D
    .locals 6

    const-wide/16 v0, 0x0

    invoke-static {p1}, Lcom/facebook/ads/internal/b/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/internal/b/e;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/internal/b/e;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/b/e;->a(Ljava/util/Vector;)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/facebook/ads/internal/b/e;->a(Ljava/util/Vector;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v0, v1

    div-double v0, v2, v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Vector;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/lit8 v0, v6, 0x2

    new-array v7, v0, [I

    mul-int/lit8 v0, v6, 0x2

    new-array v8, v0, [I

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v1, v6, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_0
    if-ge v3, v6, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    add-int/lit8 v9, v5, 0x1

    iget v10, v1, Landroid/graphics/Rect;->left:I

    aput v10, v7, v5

    add-int/lit8 v10, v4, 0x1

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    aput v5, v8, v4

    add-int/lit8 v5, v9, 0x1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    aput v4, v7, v9

    add-int/lit8 v4, v10, 0x1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, v8, v10

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v3}, Lcom/facebook/ads/internal/b/e;->a([II)I

    move-result v3

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v5}, Lcom/facebook/ads/internal/b/e;->a([II)I

    move-result v5

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Lcom/facebook/ads/internal/b/e;->a([II)I

    move-result v9

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v1}, Lcom/facebook/ads/internal/b/e;->a([II)I

    move-result v10

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :goto_2
    if-gt v3, v5, :cond_2

    add-int/lit8 v1, v9, 0x1

    :goto_3
    if-gt v1, v10, :cond_1

    aget-object v11, v0, v3

    const/4 v12, 0x1

    aput-boolean v12, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move v5, v2

    move v1, v2

    :goto_4
    mul-int/lit8 v3, v6, 0x2

    if-ge v5, v3, :cond_6

    move v3, v2

    move v4, v1

    :goto_5
    mul-int/lit8 v1, v6, 0x2

    if-ge v3, v1, :cond_5

    aget-object v1, v0, v5

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_4

    aget v1, v7, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v7, v9

    sub-int/2addr v1, v9

    aget v9, v8, v3

    add-int/lit8 v10, v3, -0x1

    aget v10, v8, v10

    sub-int/2addr v9, v10

    mul-int/2addr v1, v9

    :goto_6
    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    :cond_4
    move v1, v2

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v4

    goto :goto_4

    :cond_6
    return v1
.end method

.method private static a([II)I
    .locals 5

    const/4 v2, 0x0

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_2

    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    aget v3, p0, v0

    if-ne v3, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    aget v3, p0, v0

    if-le v3, p1, :cond_1

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a(Landroid/view/View;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/b/e;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/facebook/ads/internal/b/e;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x400000

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    const/high16 v4, 0x80000

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    :cond_2
    move v1, v3

    :goto_1
    move v4, v1

    :goto_2
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_5
    move v4, v2

    goto :goto_2
.end method

.method private static b(Landroid/view/View;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/facebook/ads/internal/b/e;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/b/e;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
