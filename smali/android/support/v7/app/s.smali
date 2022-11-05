.class final Landroid/support/v7/app/s;
.super Ljava/lang/Object;
.source "MediaRouteDialogHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 44
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 46
    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_1

    sget v0, Landroid/support/v7/mediarouter/R$dimen;->mr_dialog_fixed_width_minor:I

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 49
    iget v0, v3, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {v3, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 54
    :goto_2
    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$dimen;->mr_dialog_fixed_width_major:I

    goto :goto_1

    .line 51
    :cond_2
    iget v0, v3, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 52
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    .line 54
    :cond_3
    const/4 v0, -0x2

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 149
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Landroid/widget/ArrayAdapter",
            "<TE;>;)",
            "Ljava/util/HashMap",
            "<TE;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 135
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 136
    add-int v3, v2, v0

    .line 137
    invoke-virtual {p2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 139
    invoke-static {p0, v4}, Landroid/support/v7/app/s;->a(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ListView;",
            "Landroid/widget/ArrayAdapter",
            "<TE;>;)",
            "Ljava/util/HashMap",
            "<TE;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 112
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 113
    add-int v3, v2, v0

    .line 114
    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 116
    new-instance v5, Landroid/graphics/Rect;

    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/List",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 82
    return-object v0
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 97
    return-object v0
.end method
