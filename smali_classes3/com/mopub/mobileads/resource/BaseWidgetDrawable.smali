.class public abstract Lcom/mopub/mobileads/resource/BaseWidgetDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BaseWidgetDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, p4, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 15
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 16
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
