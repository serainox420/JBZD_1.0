.class public Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;
.super Landroid/widget/ImageView;
.source "SASCloseButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/SASCloseButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseButtonImageView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->a()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->a()V

    .line 142
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    sget-object v1, Lcom/smartadserver/android/library/f/a;->a:Landroid/graphics/Bitmap;

    .line 146
    sget-object v0, Lcom/smartadserver/android/library/f/a;->b:Landroid/graphics/Bitmap;

    .line 151
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {p0, v6}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setBackgroundColor(I)V

    .line 175
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 176
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40600000    # 3.5f

    div-float/2addr v2, v3

    .line 178
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 180
    int-to-float v4, v3

    mul-float/2addr v4, v2

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 181
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 183
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v0

    .line 187
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 188
    if-nez v0, :cond_2

    .line 189
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    :goto_1
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setPadding(IIII)V

    .line 196
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getCloseButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getCloseButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 160
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 161
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 163
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 164
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 166
    new-array v3, v7, [I

    const v4, 0x101009e

    aput v4, v3, v6

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 191
    :cond_2
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    sget-object v0, Lcom/smartadserver/android/library/f/a;->i:Landroid/graphics/Bitmap;

    .line 203
    sget-boolean v1, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v1, :cond_0

    .line 204
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 206
    const/16 v2, 0x80

    const/16 v3, 0xff

    const/16 v4, 0xa5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 208
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 210
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 211
    int-to-float v2, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 212
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 213
    if-nez v0, :cond_1

    .line 214
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setPadding(IIII)V

    .line 221
    return-void

    .line 216
    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
