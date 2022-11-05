.class public final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SimpleExoPlayerView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;

.field private final e:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

.field private final g:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

.field private final h:Landroid/widget/FrameLayout;

.field private i:Lcom/google/android/exoplayer2/m;

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/Bitmap;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    sget v6, Lcom/google/android/exoplayer2/R$layout;->exo_simple_player_view:I

    .line 204
    const/4 v5, 0x1

    .line 205
    const/4 v4, 0x0

    .line 206
    const/4 v3, 0x1

    .line 207
    const/4 v2, 0x1

    .line 208
    const/4 v1, 0x0

    .line 209
    const/16 v0, 0x1388

    .line 210
    if-eqz p2, :cond_9

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget-object v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, p2, v8, v9, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 214
    :try_start_0
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_player_layout_id:I

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 216
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_use_artwork:I

    invoke-virtual {v7, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 217
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_default_artwork:I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 219
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_use_controller:I

    invoke-virtual {v7, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 220
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_surface_type:I

    invoke-virtual {v7, v8, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 221
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_resize_mode:I

    invoke-virtual {v7, v8, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 222
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_show_timeout:I

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 225
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move v11, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v11

    .line 229
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    .line 231
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setDescendantFocusability(I)V

    .line 234
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_content_frame:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 240
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_shutter:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 244
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v7, -0x1

    invoke-direct {v2, v0, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 246
    const/4 v0, 0x2

    if-ne v3, v0, :cond_3

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    .line 255
    :goto_2
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Landroid/widget/FrameLayout;

    .line 258
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_artwork:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    .line 259
    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->k:Z

    .line 260
    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->l:Landroid/graphics/Bitmap;

    .line 265
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_subtitles:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->b()V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    .line 272
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_controller_placeholder:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 273
    if-eqz v2, :cond_6

    .line 276
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 279
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 280
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 285
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_7

    :goto_5
    iput v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->m:I

    .line 286
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    .line 287
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a()V

    .line 288
    return-void

    .line 225
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 246
    :cond_3
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 251
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    goto/16 :goto_2

    .line 259
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 283
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    goto :goto_4

    .line 285
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 286
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    move v11, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v11

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 652
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 563
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    if-nez v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m;->a()I

    move-result v0

    .line 567
    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    .line 568
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    .line 569
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getShowTimeoutMs()I

    move-result v3

    if-gtz v3, :cond_5

    .line 570
    :goto_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setShowTimeoutMs(I)V

    .line 571
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 568
    goto :goto_1

    :cond_5
    move v2, v1

    .line 569
    goto :goto_2

    .line 570
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->m:I

    goto :goto_3
.end method

.method private a(Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 627
    if-eqz p1, :cond_1

    .line 628
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 629
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 630
    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 631
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_0

    .line 632
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 635
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    const/4 v0, 0x1

    .line 639
    :cond_1
    return v0
.end method

.method private a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 615
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 616
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    .line 617
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v3, :cond_1

    .line 618
    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->d:[B

    .line 619
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 620
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 623
    :cond_0
    return v2

    .line 615
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m;->f()Lcom/google/android/exoplayer2/b/g;

    move-result-object v3

    move v0, v1

    .line 581
    :goto_1
    iget v2, v3, Lcom/google/android/exoplayer2/b/g;->a:I

    if-ge v0, v2, :cond_3

    .line 582
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/m;->a(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 585
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c()V

    goto :goto_0

    .line 581
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->k:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 595
    :goto_2
    iget v2, v3, Lcom/google/android/exoplayer2/b/g;->a:I

    if-ge v0, v2, :cond_7

    .line 596
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v4

    .line 597
    if-eqz v4, :cond_6

    move v2, v1

    .line 598
    :goto_3
    invoke-interface {v4}, Lcom/google/android/exoplayer2/b/f;->e()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 599
    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/b/f;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 600
    if-eqz v5, :cond_5

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 598
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 595
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 606
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->l:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    .line 442
    :cond_0
    return-void
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->m:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/m;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    return-object v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->k:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 542
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    :cond_0
    const/4 v0, 0x0

    .line 550
    :goto_0
    return v0

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    goto :goto_0

    .line 548
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 555
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    if-nez v1, :cond_1

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    .line 558
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    goto :goto_0
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 465
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->m:I

    .line 466
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;)V

    .line 476
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultArtwork(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->l:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 383
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->l:Landroid/graphics/Bitmap;

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b()V

    .line 386
    :cond_0
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setFastForwardIncrementMs(I)V

    .line 507
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/m;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    if-ne v0, p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/text/j$a;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m$b;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/d$a;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;)V

    .line 314
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    .line 315
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/d;)V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_3
    if-eqz p1, :cond_6

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/TextureView;)V

    .line 327
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m$b;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/d$a;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/text/j$a;)V

    .line 330
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    .line 331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b()V

    goto :goto_0

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/SurfaceView;)V

    goto :goto_1

    .line 333
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a()V

    .line 334
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c()V

    goto :goto_0
.end method

.method public setResizeMode(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 346
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRewindIncrementMs(I)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRewindIncrementMs(I)V

    .line 497
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSeekDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;)V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setSeekDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;)V

    .line 487
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseArtwork(Z)V
    .locals 1

    .prologue
    .line 361
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 362
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->k:Z

    if-eq v0, p1, :cond_1

    .line 363
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->k:Z

    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b()V

    .line 366
    :cond_1
    return-void

    .line 361
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseController(Z)V
    .locals 2

    .prologue
    .line 402
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 403
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    if-ne v0, p1, :cond_3

    .line 413
    :cond_1
    :goto_1
    return-void

    .line 402
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :cond_3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->j:Z

    .line 407
    if-eqz p1, :cond_4

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/d;)V

    goto :goto_1

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/d;)V

    goto :goto_1
.end method
