.class Lcom/smartadserver/android/library/controller/mraid/f$1;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/f;->playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/f;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;Lcom/smartadserver/android/library/ui/SASVideoView;)Lcom/smartadserver/android/library/ui/SASVideoView;

    .line 208
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 210
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/mraid/f;->c(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->a()V

    .line 213
    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->e(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v0

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->f(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->g(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v0

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->h(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v3

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    const-string v0, "SASMRAIDVideoController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create video view with params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/mraid/f;->g(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/mraid/f;->h(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/mraid/f;->e(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/mraid/f;->f(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 223
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->c(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 227
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->c(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v3, v3, Lcom/smartadserver/android/library/controller/mraid/f;->d:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 229
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v3, v3, Lcom/smartadserver/android/library/controller/mraid/f;->c:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 230
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v3, v3, Lcom/smartadserver/android/library/controller/mraid/f;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 231
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->i(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/d;->removeView(Landroid/view/View;)V

    .line 233
    const/4 v0, -0x1

    .line 234
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->j(Lcom/smartadserver/android/library/controller/mraid/f;)[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->j(Lcom/smartadserver/android/library/controller/mraid/f;)[I

    move-result-object v3

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    .line 237
    :cond_2
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->b(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v3

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/mraid/f;->i(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/smartadserver/android/library/ui/d;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/f;->e(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v3

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/mraid/f;->f(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->setZOrderOnTop(Z)V

    .line 244
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->i(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v2}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->k(Lcom/smartadserver/android/library/controller/mraid/f;)V

    .line 247
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->l(Lcom/smartadserver/android/library/controller/mraid/f;)V

    .line 248
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->m(Lcom/smartadserver/android/library/controller/mraid/f;)V

    .line 250
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v4}, Lcom/smartadserver/android/library/controller/mraid/f;->e(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v4

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v5}, Lcom/smartadserver/android/library/controller/mraid/f;->f(Lcom/smartadserver/android/library/controller/mraid/f;)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$1;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/f;->c:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method
