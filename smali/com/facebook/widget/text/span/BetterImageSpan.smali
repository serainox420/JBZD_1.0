.class public Lcom/facebook/widget/text/span/BetterImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BetterImageSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/text/span/BetterImageSpan$BetterImageSpanAlignment;
    }
.end annotation


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2


# instance fields
.field private final mAlignment:I

.field private mBounds:Landroid/graphics/Rect;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/text/span/BetterImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 73
    iput-object p1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    iput p2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mAlignment:I

    .line 75
    invoke-virtual {p0}, Lcom/facebook/widget/text/span/BetterImageSpan;->updateBounds()V

    .line 76
    return-void
.end method

.method private getOffsetAboveBaseline(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :pswitch_0
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    neg-int v0, v0

    :goto_0
    return v0

    .line 146
    :pswitch_1
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 148
    :pswitch_2
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    .line 149
    iget v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 150
    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static final normalizeAlignment(I)I
    .locals 1

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 57
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 52
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p9, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 130
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p0, v0}, Lcom/facebook/widget/text/span/BetterImageSpan;->getOffsetAboveBaseline(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    add-int/2addr v0, p7

    .line 131
    int-to-float v1, v0

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    iget-object v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    neg-float v1, p5

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/facebook/widget/text/span/BetterImageSpan;->updateBounds()V

    .line 93
    if-nez p5, :cond_0

    .line 94
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    .line 115
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-direct {p0, p5}, Lcom/facebook/widget/text/span/BetterImageSpan;->getOffsetAboveBaseline(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 98
    iget v1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    add-int/2addr v1, v0

    .line 99
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v0, v2, :cond_1

    .line 100
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 103
    :cond_1
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v0, v2, :cond_2

    .line 104
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 107
    :cond_2
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v1, v0, :cond_3

    .line 108
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 111
    :cond_3
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v1, v0, :cond_4

    .line 112
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 115
    :cond_4
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    goto :goto_0
.end method

.method public updateBounds()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    .line 139
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    .line 140
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    .line 141
    return-void
.end method
