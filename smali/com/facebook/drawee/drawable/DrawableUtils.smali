.class public Lcom/facebook/drawee/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 28
    instance-of v0, p0, Lcom/facebook/drawee/drawable/CloneableDrawable;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Lcom/facebook/drawee/drawable/CloneableDrawable;

    invoke-interface {p0}, Lcom/facebook/drawee/drawable/CloneableDrawable;->cloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyProperties(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 42
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public static getOpacityFromColor(I)I
    .locals 2

    .prologue
    .line 108
    ushr-int/lit8 v0, p0, 0x18

    .line 109
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v0, -0x1

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    if-nez v0, :cond_1

    .line 112
    const/4 v0, -0x2

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static multiplyColorAlpha(II)I
    .locals 3

    .prologue
    const v2, 0xffffff

    .line 90
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 99
    :goto_0
    return p0

    .line 93
    :cond_0
    if-nez p1, :cond_1

    .line 94
    and-int/2addr p0, v2

    goto :goto_0

    .line 96
    :cond_1
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 97
    ushr-int/lit8 v1, p0, 0x18

    .line 98
    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 99
    shl-int/lit8 v0, v0, 0x18

    and-int v1, p0, v2

    or-int p0, v0, v1

    goto :goto_0
.end method

.method public static setCallbacks(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/TransformCallback;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable$Callback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/drawable/TransformCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 77
    instance-of v0, p0, Lcom/facebook/drawee/drawable/TransformAwareDrawable;

    if-eqz v0, :cond_0

    .line 78
    check-cast p0, Lcom/facebook/drawee/drawable/TransformAwareDrawable;

    invoke-interface {p0, p2}, Lcom/facebook/drawee/drawable/TransformAwareDrawable;->setTransformCallback(Lcom/facebook/drawee/drawable/TransformCallback;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static setDrawableProperties(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/DrawableProperties;)V
    .locals 0

    .prologue
    .line 59
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/drawable/DrawableProperties;->applyTo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
