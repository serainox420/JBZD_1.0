.class abstract Lcom/adcolony/sdk/bi;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/bi$c;,
        Lcom/adcolony/sdk/bi$b;,
        Lcom/adcolony/sdk/bi$a;,
        Lcom/adcolony/sdk/bi$g;,
        Lcom/adcolony/sdk/bi$e;,
        Lcom/adcolony/sdk/bi$f;,
        Lcom/adcolony/sdk/bi$d;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "command"

.field static final b:Ljava/lang/String; = "catalogPage"

.field static final c:Ljava/lang/String; = "openedFromToast"

.field static final d:Ljava/lang/String; = "source_id"

.field static final e:Ljava/lang/String; = "close"

.field static final f:Ljava/lang/String; = "redemptionResult"

.field static final g:Ljava/lang/String; = "redemptionError"

.field static final h:Ljava/lang/String; = "packageComplete"

.field static final i:Ljava/lang/String; = "displayType"

.field static final j:Ljava/lang/String; = "coordinates"

.field static final k:Ljava/lang/String; = "x"

.field static final l:Ljava/lang/String; = "y"

.field static final m:Ljava/lang/String; = "enabled"

.field static final n:Ljava/lang/String; = "callbackId"


# instance fields
.field A:Z

.field B:Landroid/widget/ImageView;

.field C:Landroid/widget/FrameLayout$LayoutParams;

.field D:Landroid/webkit/WebSettings;

.field E:Lcom/adcolony/sdk/bi$d;

.field F:Lcom/adcolony/sdk/bi$f;

.field G:Lcom/adcolony/sdk/bi$e;

.field H:Lcom/adcolony/sdk/by;

.field I:Lcom/adcolony/sdk/bu;

.field J:Ljava/lang/Boolean;

.field K:I

.field L:Ljava/lang/String;

.field o:Z

.field p:I

.field q:Landroid/webkit/WebView;

.field r:Ljava/lang/String;

.field s:J

.field t:J

.field u:J

.field v:I

.field w:Landroid/widget/FrameLayout;

.field x:Landroid/widget/LinearLayout;

.field y:I

.field z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-boolean v2, p0, Lcom/adcolony/sdk/bi;->o:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->r:Ljava/lang/String;

    .line 69
    const/16 v0, 0xc8

    iput v0, p0, Lcom/adcolony/sdk/bi;->v:I

    .line 78
    sget-object v0, Lcom/adcolony/sdk/bi$d;->a:Lcom/adcolony/sdk/bi$d;

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    .line 79
    sget-object v0, Lcom/adcolony/sdk/bi$f;->a:Lcom/adcolony/sdk/bi$f;

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    .line 80
    new-instance v0, Lcom/adcolony/sdk/bi$e;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bi$e;-><init>(Lcom/adcolony/sdk/bi;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->G:Lcom/adcolony/sdk/bi$e;

    .line 81
    new-instance v0, Lcom/adcolony/sdk/by;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->H:Lcom/adcolony/sdk/by;

    .line 82
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->I:Lcom/adcolony/sdk/bu;

    .line 83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->J:Ljava/lang/Boolean;

    .line 84
    iput v2, p0, Lcom/adcolony/sdk/bi;->K:I

    .line 102
    const-string v0, "<!DOCTYPE html><html><head><title>Page Title</title><style>html, body {height: 100%;margin: 0;padding: 0;width: 100%;background-color:lightgrey;}body {display: table;}.err-msg-group {text-align: center;display: table-cell;vertical-align: middle;}</style></head><body><div class=\"err-msg-group\"><h3>Unable to Connect to Server</h3><p>Please try again later.</p></div></body></html>"

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->L:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/bi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adcolony/sdk/bi;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->I:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bi$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bi$1;-><init>(Lcom/adcolony/sdk/bi;I)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 148
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->I:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bi$4;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bi$4;-><init>(Lcom/adcolony/sdk/bi;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 495
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/bi;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bi;->a(I)V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 157
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    const-string v1, "catalog"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    const-string v1, "catalog"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    const-string v2, "catalog"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bi;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    array-length v2, v0

    if-ne v2, v3, :cond_2

    .line 168
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/adcolony/sdk/co;->k(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    :cond_2
    const-string v2, "device_id"

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->ar()Lcom/adcolony/sdk/bo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "consumer_key"

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "sdk_version"

    const-string v3, "3.0.7"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/adcolony/sdk/co;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v0, ""

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->I:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bi$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bi$3;-><init>(Lcom/adcolony/sdk/bi;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 360
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method a(ILorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bi$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/adcolony/sdk/bi$5;-><init>(Lcom/adcolony/sdk/bi;Lorg/json/JSONArray;I)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 533
    return-void
.end method

.method a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/adcolony/sdk/bi$2;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/adcolony/sdk/bi$2;-><init>(Lcom/adcolony/sdk/bi;Lcom/adcolony/sdk/bq;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:finishServerRewardTransaction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 518
    :cond_0
    return-void
.end method

.method abstract a(ZLjava/lang/String;)V
.end method

.method abstract b()V
.end method

.method b(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 498
    if-eqz p2, :cond_0

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/adcolony/sdk/bi;->a(ZLjava/lang/String;)V

    .line 501
    if-eqz p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:updateDigitalRedemptionStatus(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method abstract c()V
.end method

.method abstract d()Ljava/lang/String;
.end method

.method e()V
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bi$6;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bi$6;-><init>(Lcom/adcolony/sdk/bi;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 545
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->I:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bi$7;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bi$7;-><init>(Lcom/adcolony/sdk/bi;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 576
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->I:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bi$8;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bi$8;-><init>(Lcom/adcolony/sdk/bi;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 604
    return-void
.end method

.method public injectCallbackResult(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->a(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 405
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 374
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "back button pressed"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    const-string v2, "catalog"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    const-string v1, "javascript:handleBackButton()"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "non-yvolver page"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 381
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "go back was called"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 383
    iget-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 365
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0, v5}, Lcom/adcolony/sdk/bi;->requestWindowFeature(I)Z

    .line 207
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    .line 208
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->x:Landroid/widget/LinearLayout;

    .line 209
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 212
    iget-object v1, p0, Lcom/adcolony/sdk/bi;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 216
    iget-object v1, p0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 217
    iget-object v1, p0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adcolony/sdk/bi;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object v1, p0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/bi;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/bi;->s:J

    .line 221
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCatalogMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adcolony/sdk/bi;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/adcolony/sdk/bi;->p:I

    .line 226
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bm;->F()Z

    move-result v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/bi;->setRequestedOrientation(I)V

    .line 229
    iget v1, p0, Lcom/adcolony/sdk/bi;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Overlay Orientation == LANDSCAPE"

    invoke-static {v1, v2, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    iget-object v1, p0, Lcom/adcolony/sdk/bi;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 237
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 238
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 239
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 240
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 241
    const/16 v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 243
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 245
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    .line 246
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 247
    invoke-direct {p0}, Lcom/adcolony/sdk/bi;->i()V

    .line 249
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/bi;->a(Landroid/os/Bundle;)V

    .line 250
    return-void

    .line 232
    :cond_1
    iget v1, p0, Lcom/adcolony/sdk/bi;->p:I

    if-ne v1, v5, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Overlay Orientation == PORTRAIT"

    invoke-static {v1, v2, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    iget-object v1, p0, Lcom/adcolony/sdk/bi;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/bi;->setIntent(Landroid/content/Intent;)V

    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/bi;->a(Landroid/os/Bundle;)V

    .line 394
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 370
    return-void
.end method
