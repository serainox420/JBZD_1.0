.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/j$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:F

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/text/a;

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    .line 74
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    .line 76
    sget-object v0, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/text/a;

    .line 77
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    .line 78
    return-void
.end method

.method private a(IF)V
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    .line 162
    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method private getUserCaptionFontScaleV19()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 255
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0
.end method

.method private getUserCaptionStyleV19()Lcom/google/android/exoplayer2/text/a;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 262
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/a;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 128
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    .line 129
    :goto_0
    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 130
    return-void

    .line 128
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public a(FZ)V
    .locals 1

    .prologue
    .line 154
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(IF)V

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 83
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 186
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lcom/google/android/exoplayer2/text/a;

    move-result-object v0

    .line 186
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/a;)V

    .line 188
    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    if-nez v1, :cond_1

    move v11, v0

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getTop()I

    move-result v1

    .line 226
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getBottom()I

    move-result v2

    .line 229
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingLeft()I

    move-result v4

    add-int v7, v3, v4

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingTop()I

    move-result v3

    add-int v8, v1, v3

    .line 231
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingRight()I

    move-result v4

    add-int v9, v3, v4

    .line 232
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingBottom()I

    move-result v3

    sub-int v10, v2, v3

    .line 233
    if-le v10, v8, :cond_0

    if-gt v9, v7, :cond_2

    .line 249
    :cond_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v11, v1

    goto :goto_0

    .line 238
    :cond_2
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 240
    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-lez v1, :cond_0

    move v12, v0

    .line 245
    :goto_2
    if-ge v12, v11, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/b;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/text/a;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/ui/a;->a(Lcom/google/android/exoplayer2/text/b;ZLcom/google/android/exoplayer2/text/a;FFLandroid/graphics/Canvas;IIII)V

    .line 245
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2

    .line 238
    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    if-nez v4, :cond_4

    sub-int v1, v10, v8

    :goto_3
    int-to-float v1, v1

    mul-float v4, v3, v1

    goto :goto_1

    :cond_4
    sub-int v1, v2, v1

    goto :goto_3
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    if-ne v0, p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    .line 96
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    new-instance v2, Lcom/google/android/exoplayer2/ui/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ui/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(FZ)V

    .line 142
    return-void
.end method

.method public setStyle(Lcom/google/android/exoplayer2/text/a;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/text/a;

    if-ne v0, p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/text/a;

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method
