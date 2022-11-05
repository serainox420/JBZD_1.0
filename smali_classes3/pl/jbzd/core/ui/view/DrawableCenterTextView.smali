.class public Lpl/jbzd/core/ui/view/DrawableCenterTextView;
.super Lpl/jbzd/core/ui/view/TextView;
.source "DrawableCenterTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lpl/jbzd/core/ui/view/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lpl/jbzd/core/ui/view/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/DrawableCenterTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 31
    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 33
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/DrawableCenterTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/DrawableCenterTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 36
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/DrawableCenterTextView;->getCompoundDrawablePadding()I

    move-result v3

    .line 39
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 45
    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v3

    add-float/2addr v0, v1

    .line 46
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/DrawableCenterTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    :cond_1
    invoke-super {p0, p1}, Lpl/jbzd/core/ui/view/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    return-void

    .line 42
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method
