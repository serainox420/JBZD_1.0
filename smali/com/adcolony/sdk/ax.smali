.class Lcom/adcolony/sdk/ax;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final ADCOLONY_IAP_ENGAGEMENT_END_CARD:I = 0x0

.field public static final ADCOLONY_IAP_ENGAGEMENT_OVERLAY:I = 0x1


# instance fields
.field a:Lcom/adcolony/sdk/c;

.field b:Lcom/adcolony/sdk/c;

.field c:Lcom/adcolony/sdk/e;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Landroid/widget/ImageView;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:F

.field p:I

.field private q:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/e;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->k:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->l:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->m:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->n:Ljava/lang/String;

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adcolony/sdk/ax;->o:F

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/adcolony/sdk/ax;->p:I

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->q:Ljava/util/concurrent/ExecutorService;

    .line 58
    iput-object p3, p0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    .line 59
    iget-object v0, p3, Lcom/adcolony/sdk/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->n:Ljava/lang/String;

    .line 61
    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "Retrieving container tied to ad session id: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 64
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->j:I

    iget-object v2, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v2, v2, Lcom/adcolony/sdk/c;->k:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ax;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ax;->addView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/adcolony/sdk/ax;->c()V

    .line 70
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 295
    new-instance v0, Lcom/adcolony/sdk/ax$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ax$1;-><init>(Lcom/adcolony/sdk/ax;)V

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/ax;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 358
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 359
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 361
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 127
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 128
    iget-object v0, p0, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 134
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 135
    if-eqz v0, :cond_4

    .line 137
    iget-object v1, v0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    iget-object v1, v1, Lcom/adcolony/sdk/y;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 139
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 143
    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    .line 146
    :cond_3
    iget-object v1, v0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    iget-object v1, v1, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->autoPause()V

    .line 147
    iget-object v0, v0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 151
    :cond_4
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iput-object v4, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    .line 155
    iput-object v4, p0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    .line 156
    invoke-virtual {p0}, Lcom/adcolony/sdk/ax;->removeAllViews()V

    .line 157
    iget-object v0, p0, Lcom/adcolony/sdk/ax;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/adcolony/sdk/ax;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    .line 281
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ax;->j:Landroid/widget/ImageView;

    .line 282
    iget-object v0, p0, Lcom/adcolony/sdk/ax;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adcolony/sdk/ax;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    iget-boolean v2, p0, Lcom/adcolony/sdk/ax;->g:Z

    if-eqz v2, :cond_1

    .line 84
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring subsequent call to destroy()"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v2, :cond_0

    .line 94
    iput-boolean v1, p0, Lcom/adcolony/sdk/ax;->g:Z

    .line 97
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 98
    const-string v0, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    iget-boolean v0, p0, Lcom/adcolony/sdk/ax;->h:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v3, "AdSession.on_native_ad_view_destroyed"

    iget-object v4, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v4, v4, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v3, v4, v2}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 104
    :goto_1
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v2, v2, Lcom/adcolony/sdk/h;->x:Z

    if-eqz v2, :cond_3

    .line 106
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/h;->e(Lcom/adcolony/sdk/z;)V

    :goto_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v3, "AdSession.on_ad_view_destroyed"

    iget-object v4, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v4, v4, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v3, v4, v2}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_2
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/adcolony/sdk/ax;->g:Z

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to getZoneID() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 227
    const-string v0, ""

    .line 229
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ax;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public pause()Z
    .locals 4

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/adcolony/sdk/ax;->g:Z

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to pause() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 242
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 246
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_manual_pause"

    iget-object v3, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resume()Z
    .locals 4

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/adcolony/sdk/ax;->g:Z

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to resume() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 263
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    .line 266
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_manual_resume"

    iget-object v3, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 271
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMuted(Z)Z
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/adcolony/sdk/ax;->g:Z

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to setMuted() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 204
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 207
    :cond_0
    if-eqz p1, :cond_1

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ax;->setVolume(F)Z

    move-result v0

    goto :goto_0

    .line 213
    :cond_1
    iget v0, p0, Lcom/adcolony/sdk/ax;->o:F

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ax;->setVolume(F)Z

    move-result v0

    goto :goto_0
.end method

.method public setVolume(F)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    .line 170
    float-to-double v2, p1

    cmpg-double v1, v2, v6

    if-ltz v1, :cond_0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-boolean v1, p0, Lcom/adcolony/sdk/ax;->g:Z

    if-eqz v1, :cond_2

    .line 177
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to setVolume as view has been destroyed."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 182
    :cond_2
    float-to-double v0, p1

    cmpl-double v0, v0, v6

    if-lez v0, :cond_3

    .line 184
    iput p1, p0, Lcom/adcolony/sdk/ax;->o:F

    .line 187
    :cond_3
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 188
    const-string v0, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    const-string v0, "volume"

    float-to-double v2, p1

    invoke-static {v1, v0, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 191
    new-instance v2, Lcom/adcolony/sdk/z;

    iget-boolean v0, p0, Lcom/adcolony/sdk/ax;->h:Z

    if-eqz v0, :cond_4

    const-string v0, "AdSession.on_native_ad_view_set_volume"

    :goto_1
    iget-object v3, p0, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v2, v0, v3, v1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 192
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    :cond_4
    const-string v0, "AdSession.on_ad_view_destroyed"

    goto :goto_1
.end method
