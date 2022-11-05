.class final Landroid/support/v7/app/t;
.super Ljava/lang/Object;
.source "MediaRouterThemeHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)F
    .locals 4

    .prologue
    .line 88
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    if-eqz p1, :cond_0

    .line 168
    new-array v0, v3, [I

    aput p2, v0, v2

    .line 169
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 171
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return v0

    .line 176
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 178
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 181
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Context;
    .locals 3

    .prologue
    const/high16 v1, -0x22000000

    .line 61
    invoke-static {p0}, Landroid/support/v7/app/t;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0, p1}, Landroid/support/v7/app/t;->c(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 63
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light:I

    .line 74
    :goto_0
    sget v1, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v1}, Landroid/support/v7/app/t;->b(Landroid/content/Context;I)I

    move-result v2

    .line 75
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 76
    if-eqz v2, :cond_3

    .line 77
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 79
    :goto_1
    return-object v0

    .line 65
    :cond_0
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light_DarkControlPanel:I

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v7/app/t;->c(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 69
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_LightControlPanel:I

    goto :goto_0

    .line 71
    :cond_2
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter:I

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v7/app/t;->c(Landroid/content/Context;I)I

    move-result v1

    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    invoke-static {v1, v0}, Landroid/support/v4/b/a;->a(II)I

    move-result v0

    .line 144
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->a(I)V

    .line 145
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 117
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-static {p0, v2, v0}, Landroid/support/v7/app/t;->a(Landroid/content/Context;II)I

    move-result v0

    .line 119
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v2, v1}, Landroid/support/v7/app/t;->a(Landroid/content/Context;II)I

    move-result v1

    .line 121
    if-eqz p3, :cond_0

    invoke-static {p0, v2}, Landroid/support/v7/app/t;->c(Landroid/content/Context;I)I

    move-result v2

    const/high16 v3, -0x22000000

    if-ne v2, v3, :cond_0

    .line 125
    const/4 v1, -0x1

    .line 127
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    return-void

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 104
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-static {p0, v6, v0}, Landroid/support/v7/app/t;->a(Landroid/content/Context;II)I

    move-result v0

    .line 106
    const v1, 0x1010031

    invoke-static {p0, v6, v1}, Landroid/support/v7/app/t;->a(Landroid/content/Context;II)I

    move-result v1

    .line 108
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->b(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 110
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-static {p0, v6, v0}, Landroid/support/v7/app/t;->a(Landroid/content/Context;II)I

    move-result v0

    .line 112
    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 94
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-static {p0, p1, v1}, Landroid/support/v7/app/t;->a(Landroid/content/Context;II)I

    move-result v1

    .line 96
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->b(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x22000000

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 160
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 149
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 155
    :goto_0
    return p1

    .line 152
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 155
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method
