.class public Lcom/flurry/sdk/gw;
.super Landroid/widget/VideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gw$a;,
        Lcom/flurry/sdk/gw$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static h:I


# instance fields
.field public b:Landroid/net/Uri;

.field public c:I

.field public d:Lcom/flurry/sdk/gw$b;

.field e:Z

.field public f:Z

.field g:Landroid/media/MediaPlayer$OnPreparedListener;

.field private i:Lcom/flurry/sdk/gw$a;

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/media/AudioManager;

.field private p:Landroid/media/MediaPlayer;

.field private q:Landroid/media/MediaPlayer$OnCompletionListener;

.field private r:Landroid/media/MediaPlayer$OnErrorListener;

.field private final s:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gw;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/flurry/sdk/gw;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gw$a;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/gw;->j:F

    .line 38
    iput-object v2, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    .line 39
    iput v1, p0, Lcom/flurry/sdk/gw;->c:I

    .line 40
    iput v1, p0, Lcom/flurry/sdk/gw;->k:I

    .line 41
    iput v1, p0, Lcom/flurry/sdk/gw;->l:I

    .line 42
    iput v3, p0, Lcom/flurry/sdk/gw;->m:I

    .line 43
    iput v3, p0, Lcom/flurry/sdk/gw;->n:I

    .line 44
    sget-object v0, Lcom/flurry/sdk/gw$b;->a:Lcom/flurry/sdk/gw$b;

    iput-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    .line 46
    iput-object v2, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    .line 47
    iput-object v2, p0, Lcom/flurry/sdk/gw;->p:Landroid/media/MediaPlayer;

    .line 49
    iput-boolean v1, p0, Lcom/flurry/sdk/gw;->e:Z

    .line 50
    iput-boolean v1, p0, Lcom/flurry/sdk/gw;->f:Z

    .line 348
    new-instance v0, Lcom/flurry/sdk/gw$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gw$1;-><init>(Lcom/flurry/sdk/gw;)V

    iput-object v0, p0, Lcom/flurry/sdk/gw;->g:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 377
    new-instance v0, Lcom/flurry/sdk/gw$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gw$2;-><init>(Lcom/flurry/sdk/gw;)V

    iput-object v0, p0, Lcom/flurry/sdk/gw;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 386
    new-instance v0, Lcom/flurry/sdk/gw$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gw$3;-><init>(Lcom/flurry/sdk/gw;)V

    iput-object v0, p0, Lcom/flurry/sdk/gw;->r:Landroid/media/MediaPlayer$OnErrorListener;

    .line 402
    new-instance v0, Lcom/flurry/sdk/gw$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gw$4;-><init>(Lcom/flurry/sdk/gw;)V

    iput-object v0, p0, Lcom/flurry/sdk/gw;->s:Lcom/flurry/sdk/kh;

    .line 96
    iput-object p2, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    .line 97
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gw;->l:I

    .line 1276
    :cond_0
    sget-object v0, Lcom/flurry/sdk/gw$b;->b:Lcom/flurry/sdk/gw$b;

    iput-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    .line 1277
    iput-object p2, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    .line 1279
    invoke-virtual {p0, v4}, Lcom/flurry/sdk/gw;->setFocusable(Z)V

    .line 1280
    invoke-virtual {p0, v4}, Lcom/flurry/sdk/gw;->setFocusableInTouchMode(Z)V

    .line 1281
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->requestFocus()Z

    .line 1282
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->requestLayout()V

    .line 1283
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gw;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/kh;)V

    .line 1285
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 102
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gw;F)F
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/flurry/sdk/gw;->j:F

    return p1
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 25
    sput p0, Lcom/flurry/sdk/gw;->h:I

    return p0
.end method

.method static synthetic a(Lcom/flurry/sdk/gw;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/flurry/sdk/gw;->k:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gw;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gw;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/flurry/sdk/gw;->p:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gw;Lcom/flurry/sdk/gw$b;)Lcom/flurry/sdk/gw$b;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/gw;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/flurry/sdk/gw;->c:I

    return v0
.end method

.method static synthetic c(Lcom/flurry/sdk/gw;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/gw;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/flurry/sdk/gw;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/gw;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/flurry/sdk/gw;->k:I

    return v0
.end method

.method static synthetic g(Lcom/flurry/sdk/gw;)F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/flurry/sdk/gw;->j:F

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/flurry/sdk/gw;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/gw;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gw;->h:I

    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/gw;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gw;->e:Z

    .line 178
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 181
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 183
    if-lez v0, :cond_0

    .line 184
    sput v0, Lcom/flurry/sdk/gw;->h:I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gw;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/gw;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 193
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gw;->e:Z

    .line 194
    return-void
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    sget-object v4, Lcom/flurry/sdk/gw$b;->f:Lcom/flurry/sdk/gw$b;

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/gw$b;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 211
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 208
    goto :goto_0

    :cond_1
    move v1, v2

    .line 211
    goto :goto_1
.end method

.method public final d()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    sget-object v4, Lcom/flurry/sdk/gw$b;->e:Lcom/flurry/sdk/gw$b;

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/gw$b;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 218
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 215
    goto :goto_0

    :cond_1
    move v1, v2

    .line 218
    goto :goto_1
.end method

.method final e()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gw;->setFocusable(Z)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gw;->setFocusableInTouchMode(Z)V

    .line 1341
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1343
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->pause()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gw;->p:Landroid/media/MediaPlayer;

    .line 257
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gw;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 258
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->pause()V

    .line 266
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->e()V

    .line 267
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 433
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 435
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gw;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 441
    return-void
.end method

.method public getCurrentPosition()I
    .locals 5

    .prologue
    const/high16 v0, -0x80000000

    .line 450
    .line 452
    :try_start_0
    invoke-super {p0}, Landroid/widget/VideoView;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 453
    if-nez v1, :cond_0

    .line 462
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 456
    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    sget-object v2, Lcom/flurry/sdk/gw;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaPlayer current position issue: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOffsetStartTime()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x3

    return v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVolume()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/flurry/sdk/gw;->o:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/flurry/sdk/gw;->h:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 445
    invoke-super {p0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Landroid/widget/VideoView;->onAttachedToWindow()V

    .line 2323
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/flurry/sdk/gw;->g:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gw;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2327
    iget-object v0, p0, Lcom/flurry/sdk/gw;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gw;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2328
    iget-object v0, p0, Lcom/flurry/sdk/gw;->r:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gw;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2329
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->pause()V

    .line 2398
    iget-object v0, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2331
    :goto_0
    if-eqz v0, :cond_2

    .line 2332
    iget-object v0, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gw;->setVideoURI(Landroid/net/Uri;)V

    .line 2336
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->requestFocus()Z

    .line 298
    :cond_0
    :goto_2
    return-void

    .line 2398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2334
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gw;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/flurry/sdk/gw;->k:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    iget v1, p0, Lcom/flurry/sdk/gw;->k:I

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gw$a;->e(I)V

    .line 305
    :cond_0
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    .line 306
    invoke-virtual {p0}, Lcom/flurry/sdk/gw;->pause()V

    .line 307
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 467
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    .line 468
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 469
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 471
    iget-object v2, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/flurry/sdk/gw;->m:I

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/flurry/sdk/gw;->n:I

    if-eq v1, v2, :cond_0

    .line 472
    iput v0, p0, Lcom/flurry/sdk/gw;->m:I

    .line 473
    iput v1, p0, Lcom/flurry/sdk/gw;->n:I

    .line 474
    iget-object v2, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    invoke-interface {v2, v0, v1}, Lcom/flurry/sdk/gw$a;->a(II)V

    .line 476
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gw;->f:Z

    .line 481
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowFocusChanged(Z)V

    .line 313
    if-nez p1, :cond_0

    .line 314
    iget v0, p0, Lcom/flurry/sdk/gw;->k:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    iget v1, p0, Lcom/flurry/sdk/gw;->k:I

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gw$a;->d(I)V

    .line 316
    iget-object v0, p0, Lcom/flurry/sdk/gw;->i:Lcom/flurry/sdk/gw$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gw$a;->m()V

    .line 319
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 146
    sget-object v0, Lcom/flurry/sdk/gw$b;->e:Lcom/flurry/sdk/gw$b;

    iput-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    .line 147
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/VideoView;->resume()V

    .line 158
    sget-object v0, Lcom/flurry/sdk/gw$b;->d:Lcom/flurry/sdk/gw$b;

    iput-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    .line 159
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 152
    sget-object v0, Lcom/flurry/sdk/gw$b;->d:Lcom/flurry/sdk/gw$b;

    iput-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    .line 153
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/VideoView;->suspend()V

    .line 164
    sget-object v0, Lcom/flurry/sdk/gw$b;->g:Lcom/flurry/sdk/gw$b;

    iput-object v0, p0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    .line 165
    return-void
.end method
