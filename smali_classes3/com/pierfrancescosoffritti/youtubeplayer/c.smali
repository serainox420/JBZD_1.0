.class Lcom/pierfrancescosoffritti/youtubeplayer/c;
.super Ljava/lang/Object;
.source "PlayerControlsWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/pierfrancescosoffritti/youtubeplayer/e$a;


# instance fields
.field private final a:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private h:Z

.field private i:I


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->c:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->d:Z

    .line 44
    iput-boolean v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->e:Z

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->f:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/c$1;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/c$1;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/c;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->g:Ljava/lang/Runnable;

    .line 320
    iput-boolean v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->h:Z

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->i:I

    .line 47
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    .line 49
    const v0, 0x7f1101f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->b:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/pierfrancescosoffritti/youtubeplayer/c;F)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->c(F)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->c:Z

    .line 141
    return-void
.end method

.method private c(F)V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->e:Z

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->d:Z

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->c:Z

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->e()V

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-direct {p0, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->c(F)V

    .line 146
    return-void

    .line 144
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public a(D)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->h:Z

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->i:I

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/pierfrancescosoffritti/youtubeplayer/d;->a(F)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->i:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/pierfrancescosoffritti/youtubeplayer/d;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->i:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    iput v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->i:I

    .line 216
    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x106000d

    invoke-static {v3, v4}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 233
    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->e:Z

    .line 234
    if-ne p1, v0, :cond_2

    .line 235
    :goto_0
    invoke-direct {p0, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a(Z)V

    .line 237
    if-eqz v0, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->e()V

    .line 269
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 234
    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 243
    :cond_4
    invoke-direct {p0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a(Z)V

    .line 244
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->c(F)V

    .line 247
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 256
    iput-boolean v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->e:Z

    .line 259
    :cond_5
    if-ne p1, v3, :cond_1

    .line 260
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v2}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x106000c

    invoke-static {v2, v3}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 261
    iput-boolean v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->e:Z

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->d()V

    .line 113
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->h:Z

    .line 332
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->c:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->i:I

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a(I)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c;->h:Z

    .line 341
    return-void
.end method
