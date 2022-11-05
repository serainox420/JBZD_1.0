.class public Lcom/smartadserver/android/library/ui/SASVideoView;
.super Landroid/widget/VideoView;
.source "SASVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/ui/SASVideoView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/media/AudioManager;

.field private e:I

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smartadserver/android/library/ui/SASVideoView$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 27
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 28
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 42
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->e()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 27
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 28
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 47
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->e()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 27
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 28
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 52
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->e()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASVideoView;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40c00000    # 6.0f

    .line 214
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 219
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40200000    # 2.5f

    div-float/2addr v1, v2

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    .line 227
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    invoke-virtual {v5, p3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    invoke-virtual {v5, p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 232
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 235
    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASVideoView;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    .line 57
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/smartadserver/android/library/f/a;->d:Landroid/graphics/Bitmap;

    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-static {p1, v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/ProgressBar;
    .locals 4

    .prologue
    const/4 v2, -0x2

    .line 121
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentVolume()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 85
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 86
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 62
    iput p4, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 63
    iput p3, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 65
    new-instance v0, Lcom/smartadserver/android/library/ui/SASVideoView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASVideoView$1;-><init>(Lcom/smartadserver/android/library/ui/SASVideoView;II)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 147
    .line 149
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentVolume()I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/smartadserver/android/library/f/a;->g:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;

    move-result-object v0

    .line 156
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->a()V

    .line 153
    sget-object v0, Lcom/smartadserver/android/library/f/a;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 105
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 110
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 194
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->stopPlayback()V

    .line 195
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->f()V

    .line 196
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->b()V

    goto :goto_0
.end method

.method public getCurrentVolume()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getOnVideoViewVisibilityChangedListener()Lcom/smartadserver/android/library/ui/SASVideoView$a;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASVideoView$a;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnVideoViewVisibilityChangedListener(Lcom/smartadserver/android/library/ui/SASVideoView$a;)V

    .line 181
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    .line 182
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 170
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASVideoView$a;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASVideoView$a;->a(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public setMutedVolume(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 118
    return-void
.end method

.method public setOnVideoViewVisibilityChangedListener(Lcom/smartadserver/android/library/ui/SASVideoView$a;)V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    .line 90
    return-void
.end method
