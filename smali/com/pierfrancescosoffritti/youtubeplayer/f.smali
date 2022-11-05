.class public Lcom/pierfrancescosoffritti/youtubeplayer/f;
.super Ljava/lang/Object;
.source "YouTubePlayerBridge.java"


# instance fields
.field private final a:Lcom/pierfrancescosoffritti/youtubeplayer/e;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/pierfrancescosoffritti/youtubeplayer/f;)Lcom/pierfrancescosoffritti/youtubeplayer/e;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    return-object v0
.end method


# virtual methods
.method public currentSeconds(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v2, Lcom/pierfrancescosoffritti/youtubeplayer/f$7;

    invoke-direct {v2, p0, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/f$7;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public onApiChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$6;

    invoke-direct {v1, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/f$6;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$2;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$2;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public onPlaybackQualityChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public onPlaybackRateChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$4;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$4;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public onReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    .line 24
    invoke-interface {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b()V

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public onStateChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public onVideoDuration(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$10;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$10;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public onVideoId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$9;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$9;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public onVideoTitle(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/f$8;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/f$8;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method
