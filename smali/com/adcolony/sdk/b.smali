.class Lcom/adcolony/sdk/b;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field c:Lcom/adcolony/sdk/c;

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Lcom/adcolony/sdk/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/adcolony/sdk/b;->a:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/b;->b:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/adcolony/sdk/b;->d:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    iput-object v0, p0, Lcom/adcolony/sdk/b;->k:Lcom/adcolony/sdk/f;

    .line 177
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/av;

    .line 183
    iget-boolean v2, v0, Lcom/adcolony/sdk/av;->b:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/adcolony/sdk/av;->e()Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/b;->k:Lcom/adcolony/sdk/f;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/adcolony/sdk/b;->k:Lcom/adcolony/sdk/f;

    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->a()V

    .line 193
    :cond_2
    return-void
.end method

.method a(Lcom/adcolony/sdk/z;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 358
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 359
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->g:Z

    if-eqz v0, :cond_2

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/h;->d(Lcom/adcolony/sdk/z;)V

    .line 366
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    iget-object v0, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 368
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    iget-object v0, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 369
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    iput-object v4, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    .line 372
    :cond_3
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->i:Z

    if-nez v0, :cond_4

    .line 374
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->finish()V

    .line 377
    :cond_4
    iput-boolean v2, p0, Lcom/adcolony/sdk/b;->g:Z

    .line 379
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 380
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 382
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/h;->D:Z

    .line 385
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 386
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v2, v2, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 387
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_close"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 390
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-object v4, v0, Lcom/adcolony/sdk/h;->q:Lcom/adcolony/sdk/c;

    .line 391
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-object v4, v0, Lcom/adcolony/sdk/h;->s:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 392
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-object v4, v0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 395
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/av;

    .line 222
    iget-boolean v2, v0, Lcom/adcolony/sdk/av;->b:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    iget-boolean v2, v2, Lcom/adcolony/sdk/k;->c:Z

    if-nez v2, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/adcolony/sdk/av;->d()Z

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/b;->k:Lcom/adcolony/sdk/f;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/adcolony/sdk/b;->k:Lcom/adcolony/sdk/f;

    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->b()V

    .line 232
    :cond_2
    return-void
.end method

.method c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method d()V
    .locals 5

    .prologue
    .line 322
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/c;->s:Z

    .line 323
    invoke-static {}, Lcom/adcolony/sdk/au;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/c;->s:Z

    .line 328
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->l()I

    move-result v1

    .line 329
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->j:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->m()I

    move-result v0

    invoke-static {}, Lcom/adcolony/sdk/au;->e()I

    move-result v2

    sub-int/2addr v0, v2

    .line 331
    :goto_0
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 335
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 336
    const-string v3, "screen_width"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 337
    const-string v3, "screen_height"

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 338
    const-string v3, "ad_session_id"

    iget-object v4, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v4, v4, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    const-string v3, "id"

    iget-object v4, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v4, v4, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 341
    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iput v1, v3, Lcom/adcolony/sdk/c;->j:I

    .line 343
    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iput v0, v1, Lcom/adcolony/sdk/c;->k:I

    .line 345
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "AdContainer.on_orientation_change"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v1, v3, v2}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 347
    :cond_1
    return-void

    .line 329
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->m()I

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 313
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v2, v2, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_back_button"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 316
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->d()V

    .line 301
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x800

    const/16 v2, 0x400

    const/4 v3, 0x7

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->q:Lcom/adcolony/sdk/c;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->finish()V

    .line 155
    :goto_0
    return-void

    .line 61
    :cond_1
    iput-boolean v1, p0, Lcom/adcolony/sdk/b;->i:Z

    .line 64
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->q:Lcom/adcolony/sdk/c;

    iput-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iput-boolean v1, v0, Lcom/adcolony/sdk/c;->s:Z

    .line 68
    invoke-static {}, Lcom/adcolony/sdk/au;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iput-boolean v4, v0, Lcom/adcolony/sdk/c;->s:Z

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/adcolony/sdk/b;->e:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v0, v0, Lcom/adcolony/sdk/c;->l:I

    iput v0, p0, Lcom/adcolony/sdk/b;->f:I

    .line 76
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    iput-object v0, p0, Lcom/adcolony/sdk/b;->k:Lcom/adcolony/sdk/f;

    .line 79
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMultiWindowEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->j:Z

    .line 80
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->j:Z

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 83
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 91
    :goto_1
    invoke-virtual {p0, v4}, Lcom/adcolony/sdk/b;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 98
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "AdSession.finish_fullscreen_ad"

    new-instance v2, Lcom/adcolony/sdk/b$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/b$1;-><init>(Lcom/adcolony/sdk/b;)V

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "AdSession.finish_fullscreen_ad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 118
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/b;->setRequestedOrientation(I)V

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->r:Z

    if-nez v0, :cond_6

    .line 140
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 141
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v2, v2, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    const-string v1, "screen_width"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v2, v2, Lcom/adcolony/sdk/c;->j:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 143
    const-string v1, "screen_height"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v2, v2, Lcom/adcolony/sdk/c;->k:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 145
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v2, "AdSession.on_fullscreen_ad_started"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 146
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_fullscreen_ad_started"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 148
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iput-boolean v4, v0, Lcom/adcolony/sdk/c;->r:Z

    goto/16 :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_1

    .line 122
    :cond_5
    iget v0, p0, Lcom/adcolony/sdk/b;->d:I

    packed-switch v0, :pswitch_data_0

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->setRequestedOrientation(I)V

    goto :goto_2

    .line 125
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/b;->setRequestedOrientation(I)V

    goto :goto_2

    .line 129
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->setRequestedOrientation(I)V

    goto :goto_2

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->d()V

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->g:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/adcolony/sdk/au;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->s:Z

    if-nez v0, :cond_0

    .line 283
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 284
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget-object v2, v2, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->i:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    .line 165
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->a()V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 204
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->d()V

    .line 206
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->b()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    .line 208
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 252
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->b()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Activity is active but window does not have focus, pausing."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 259
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->a()V

    goto :goto_0
.end method
