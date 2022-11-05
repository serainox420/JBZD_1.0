.class public Lcom/smartadserver/android/library/ui/SASPlayerActivity;
.super Landroid/app/Activity;
.source "SASPlayerActivity.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field public d:Landroid/media/MediaPlayer$OnCompletionListener;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout$LayoutParams;

.field private g:Lcom/smartadserver/android/library/ui/SASVideoView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

.field private k:Landroid/widget/ProgressBar;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    new-instance v0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity$4;-><init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity$5;-><init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->b:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;-><init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->c:Landroid/view/View$OnClickListener;

    .line 219
    new-instance v0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;-><init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->d:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/ui/SASVideoView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/smartadserver/android/library/f/a;->h:Landroid/graphics/Bitmap;

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->h:Landroid/widget/ImageView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->b(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->i:Landroid/widget/ImageView;

    .line 183
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->n:I

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->d()V

    .line 189
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->o:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->h:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/f/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->start()V

    .line 239
    return-void
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->l:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->h:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/f/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->pause()V

    .line 247
    return-void
.end method

.method static synthetic f(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->m:I

    return v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 253
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 255
    int-to-float v0, v2

    int-to-float v4, v3

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->h()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    :goto_0
    if-eqz v0, :cond_1

    .line 258
    iput v2, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->l:I

    .line 259
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->l:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->h()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->m:I

    .line 260
    iput v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->n:I

    .line 268
    :goto_1
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->m:I

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->o:I

    .line 269
    return-void

    :cond_0
    move v0, v1

    .line 255
    goto :goto_0

    .line 263
    :cond_1
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->m:I

    .line 264
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->m:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->h()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->l:I

    .line 265
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->l:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->n:I

    goto :goto_1
.end method

.method static synthetic g(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic h(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e()V

    return-void
.end method

.method static synthetic j(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->d()V

    return-void
.end method

.method static synthetic k(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v1, 0x400

    const/4 v3, -0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 68
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string v1, "isCloseButtonVisible"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->q:Z

    .line 72
    new-instance v1, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity$1;-><init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 86
    const-string v1, "videoConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    .line 88
    new-instance v0, Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    .line 89
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity$2;-><init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 98
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->d:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity$3;-><init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 108
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 109
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->a()V

    .line 113
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 120
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->f()V

    .line 122
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k:Landroid/widget/ProgressBar;

    .line 123
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->b()V

    .line 128
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->q:Z

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a()V

    .line 130
    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentVolume()I

    move-result v0

    .line 274
    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setMutedVolume(I)V

    .line 276
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->i:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/f/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setMutedVolume(I)V

    .line 281
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->i:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/f/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->p:I

    .line 158
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->stopPlayback()V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j:Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->d()V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->g:Lcom/smartadserver/android/library/ui/SASVideoView;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->p:I

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->seekTo(I)V

    .line 173
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->e()V

    goto :goto_0
.end method
