.class public Landroid/support/v7/app/OverlayListView$a;
.super Ljava/lang/Object;
.source "OverlayListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/OverlayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/OverlayListView$a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/BitmapDrawable;

.field private b:F

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/view/animation/Interpolator;

.field private e:J

.field private f:Landroid/graphics/Rect;

.field private g:I

.field private h:F

.field private i:F

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Landroid/support/v7/app/OverlayListView$a$a;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Landroid/support/v7/app/OverlayListView$a;->b:F

    .line 108
    iput v0, p0, Landroid/support/v7/app/OverlayListView$a;->h:F

    .line 109
    iput v0, p0, Landroid/support/v7/app/OverlayListView$a;->i:F

    .line 116
    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    iput-object p2, p0, Landroid/support/v7/app/OverlayListView$a;->f:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->c:Landroid/graphics/Rect;

    .line 119
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Landroid/support/v7/app/OverlayListView$a;->b:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 121
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$a;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public a(FF)Landroid/support/v7/app/OverlayListView$a;
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Landroid/support/v7/app/OverlayListView$a;->h:F

    .line 153
    iput p2, p0, Landroid/support/v7/app/OverlayListView$a;->i:F

    .line 154
    return-object p0
.end method

.method public a(I)Landroid/support/v7/app/OverlayListView$a;
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Landroid/support/v7/app/OverlayListView$a;->g:I

    .line 165
    return-object p0
.end method

.method public a(J)Landroid/support/v7/app/OverlayListView$a;
    .locals 1

    .prologue
    .line 175
    iput-wide p1, p0, Landroid/support/v7/app/OverlayListView$a;->e:J

    .line 176
    return-object p0
.end method

.method public a(Landroid/support/v7/app/OverlayListView$a$a;)Landroid/support/v7/app/OverlayListView$a;
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$a;->m:Landroid/support/v7/app/OverlayListView$a$a;

    .line 198
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$a;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$a;->d:Landroid/view/animation/Interpolator;

    .line 187
    return-object p0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 207
    iput-wide p1, p0, Landroid/support/v7/app/OverlayListView$a;->j:J

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$a;->k:Z

    .line 209
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/support/v7/app/OverlayListView$a;->k:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$a;->k:Z

    .line 216
    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$a;->l:Z

    .line 217
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->m:Landroid/support/v7/app/OverlayListView$a$a;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->m:Landroid/support/v7/app/OverlayListView$a$a;

    invoke-interface {v0}, Landroid/support/v7/app/OverlayListView$a$a;->a()V

    .line 220
    :cond_0
    return-void
.end method

.method public c(J)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 228
    iget-boolean v1, p0, Landroid/support/v7/app/OverlayListView$a;->l:Z

    if-eqz v1, :cond_0

    .line 252
    :goto_0
    return v3

    .line 231
    :cond_0
    iget-wide v4, p0, Landroid/support/v7/app/OverlayListView$a;->j:J

    sub-long v4, p1, v4

    long-to-float v1, v4

    iget-wide v4, p0, Landroid/support/v7/app/OverlayListView$a;->e:J

    long-to-float v4, v4

    div-float/2addr v1, v4

    .line 232
    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 233
    iget-boolean v4, p0, Landroid/support/v7/app/OverlayListView$a;->k:Z

    if-nez v4, :cond_5

    .line 236
    :goto_1
    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$a;->d:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    move v1, v0

    .line 238
    :goto_2
    iget v4, p0, Landroid/support/v7/app/OverlayListView$a;->g:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 239
    iget-object v5, p0, Landroid/support/v7/app/OverlayListView$a;->c:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v7/app/OverlayListView$a;->f:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 240
    iget-object v5, p0, Landroid/support/v7/app/OverlayListView$a;->c:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v7/app/OverlayListView$a;->f:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v6

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 241
    iget v4, p0, Landroid/support/v7/app/OverlayListView$a;->h:F

    iget v5, p0, Landroid/support/v7/app/OverlayListView$a;->i:F

    iget v6, p0, Landroid/support/v7/app/OverlayListView$a;->h:F

    sub-float/2addr v5, v6

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    iput v1, p0, Landroid/support/v7/app/OverlayListView$a;->b:F

    .line 242
    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$a;->c:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget v4, p0, Landroid/support/v7/app/OverlayListView$a;->b:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 244
    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/support/v7/app/OverlayListView$a;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/OverlayListView$a;->k:Z

    if-eqz v1, :cond_2

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_2

    .line 247
    iput-boolean v2, p0, Landroid/support/v7/app/OverlayListView$a;->l:Z

    .line 248
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->m:Landroid/support/v7/app/OverlayListView$a$a;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$a;->m:Landroid/support/v7/app/OverlayListView$a$a;

    invoke-interface {v0}, Landroid/support/v7/app/OverlayListView$a$a;->a()V

    .line 252
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/OverlayListView$a;->l:Z

    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    move v3, v0

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$a;->d:Landroid/view/animation/Interpolator;

    .line 237
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_2

    :cond_4
    move v0, v3

    .line 252
    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method
