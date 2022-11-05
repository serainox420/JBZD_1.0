.class Lcom/smartadserver/android/library/ui/a$d;
.super Landroid/media/MediaPlayer;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field final synthetic g:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$d;->g:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 174
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->a:Z

    .line 175
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->b:Z

    .line 178
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->c:Z

    .line 179
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->d:Z

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a$d;->e:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a$d;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/ui/a$1;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a$d;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a$d;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a$d;->b()V

    return-void
.end method

.method private b()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a$d;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a$d;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$d;->g:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Z)V

    .line 238
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$d;->g:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/a$d$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$d$1;-><init>(Lcom/smartadserver/android/library/ui/a$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a$d;->c()V

    .line 233
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 234
    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->b:Z

    .line 215
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 216
    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->b:Z

    .line 221
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 222
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 264
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->d:Z

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a$d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a$d;->e:Ljava/lang/String;

    .line 209
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 210
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a$d;->a:Z

    .line 250
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$d;->c:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/a$d;->seekTo(I)V

    .line 252
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/a$d;->c:Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$d;->g:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Z)V

    .line 256
    :cond_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 257
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a$d;->c()V

    .line 227
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 228
    return-void
.end method
