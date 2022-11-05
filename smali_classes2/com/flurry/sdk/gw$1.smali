.class final Lcom/flurry/sdk/gw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gw;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gw;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 350
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/gw;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnPreparedListener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v3}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    sget-object v1, Lcom/flurry/sdk/gw$b;->c:Lcom/flurry/sdk/gw$b;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;Lcom/flurry/sdk/gw$b;)Lcom/flurry/sdk/gw$b;

    .line 352
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->b(Lcom/flurry/sdk/gw;)I

    move-result v1

    .line 354
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 355
    iget-object v2, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v2, v0}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 356
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->c(Lcom/flurry/sdk/gw;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/gw;->a(I)I

    .line 358
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->d(Lcom/flurry/sdk/gw;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->a()V

    .line 364
    :goto_0
    if-le v1, v4, :cond_2

    .line 365
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gw;->seekTo(I)V

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-static {v1}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gw$a;->a(Ljava/lang/String;)V

    .line 373
    :cond_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->b()V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gw$1;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/gw;->seekTo(I)V

    goto :goto_1
.end method
