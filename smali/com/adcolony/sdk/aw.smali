.class Lcom/adcolony/sdk/aw;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/aw$a;
    }
.end annotation


# instance fields
.field a:I

.field public b:Z

.field c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lorg/json/JSONArray;

.field private u:Lorg/json/JSONObject;

.field private v:Lcom/adcolony/sdk/c;

.field private w:Lcom/adcolony/sdk/z;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->f:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->g:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->i:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->j:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->t:Lorg/json/JSONArray;

    .line 65
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->u:Lorg/json/JSONObject;

    .line 98
    iput p2, p0, Lcom/adcolony/sdk/aw;->a:I

    .line 99
    iput-boolean p3, p0, Lcom/adcolony/sdk/aw;->b:Z

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;IILcom/adcolony/sdk/c;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->f:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->g:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->i:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->j:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->t:Lorg/json/JSONArray;

    .line 65
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->u:Lorg/json/JSONObject;

    .line 83
    iput-object p2, p0, Lcom/adcolony/sdk/aw;->w:Lcom/adcolony/sdk/z;

    .line 84
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/z;IILcom/adcolony/sdk/c;)V

    .line 85
    invoke-virtual {p0}, Lcom/adcolony/sdk/aw;->e()V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/aw;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/adcolony/sdk/aw;->k:I

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/aw;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adcolony/sdk/aw;->t:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/aw;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/adcolony/sdk/aw;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/aw;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/adcolony/sdk/aw;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method static synthetic d(Lcom/adcolony/sdk/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/adcolony/sdk/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/adcolony/sdk/aw;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->t:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic g(Lcom/adcolony/sdk/aw;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/adcolony/sdk/aw;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/adcolony/sdk/aw;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/adcolony/sdk/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/adcolony/sdk/aw;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->s:Z

    return v0
.end method

.method static synthetic l(Lcom/adcolony/sdk/aw;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->u:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic m(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/z;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->w:Lcom/adcolony/sdk/z;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/adcolony/sdk/aw;->a:I

    return v0
.end method

.method a(Lcom/adcolony/sdk/z;IILcom/adcolony/sdk/c;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 504
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    .line 506
    :cond_0
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "base_url"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->g:Ljava/lang/String;

    .line 507
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "custom_js"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->f:Ljava/lang/String;

    .line 508
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "ad_session_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->h:Ljava/lang/String;

    .line 509
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "info"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->u:Lorg/json/JSONObject;

    .line 510
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "mraid_filepath"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->j:Ljava/lang/String;

    .line 514
    iget-boolean v1, p0, Lcom/adcolony/sdk/aw;->b:Z

    if-nez v1, :cond_1

    .line 518
    :try_start_0
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/n;

    iget-object v2, p0, Lcom/adcolony/sdk/aw;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/adcolony/sdk/n;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->i:Ljava/lang/String;

    .line 519
    const-string v1, "bridge.os_name\\s*=\\s*\"\"\\s*;"

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bridge.os_name = \"\";\nvar ADC_DEVICE_INFO = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/aw;->u:Lorg/json/JSONObject;

    .line 521
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    iget-object v3, p0, Lcom/adcolony/sdk/aw;->i:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/aw;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :cond_1
    :goto_0
    iput p2, p0, Lcom/adcolony/sdk/aw;->k:I

    .line 537
    iput-object p4, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    .line 539
    if-ltz p3, :cond_4

    .line 541
    iput p3, p0, Lcom/adcolony/sdk/aw;->a:I

    .line 549
    :goto_1
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "width"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/aw;->n:I

    .line 550
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/aw;->o:I

    .line 551
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "x"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/aw;->l:I

    .line 552
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "y"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/aw;->m:I

    .line 554
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "enable_messages"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/adcolony/sdk/aw;->q:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/adcolony/sdk/aw;->p:Z

    .line 555
    return-void

    .line 524
    :catch_0
    move-exception v1

    .line 527
    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v2, "Could not load MRAID from filepath: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/aw;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 529
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 530
    const-string v2, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/aw;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 532
    new-instance v2, Lcom/adcolony/sdk/z;

    const-string v3, "AdSession.on_error"

    iget v4, p4, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v2, v3, v4, v1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0

    .line 545
    :cond_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/aw;->f()V

    goto :goto_1
.end method

.method a(Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V
    .locals 1

    .prologue
    .line 490
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/z;IILcom/adcolony/sdk/c;)V

    .line 491
    invoke-virtual {p0}, Lcom/adcolony/sdk/aw;->g()V

    .line 492
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->c:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to execute_js as WebView has been destroyed."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/aw;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 618
    iget-object v1, p0, Lcom/adcolony/sdk/aw;->t:Lorg/json/JSONArray;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->t:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 621
    monitor-exit v1

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(ZLcom/adcolony/sdk/z;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 173
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->w:Lcom/adcolony/sdk/z;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/adcolony/sdk/aw;->w:Lcom/adcolony/sdk/z;

    .line 174
    :cond_0
    iput-boolean p1, p0, Lcom/adcolony/sdk/aw;->q:Z

    .line 175
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->w:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "is_display_module"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/aw;->b:Z

    .line 176
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "filepath"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/adcolony/sdk/aw;->e:Ljava/lang/String;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    .line 189
    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "info"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/aw;->u:Lorg/json/JSONObject;

    .line 190
    iput-boolean v3, p0, Lcom/adcolony/sdk/aw;->p:Z

    .line 193
    :cond_1
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/aw;->setFocusable(Z)V

    .line 194
    invoke-virtual {p0, v5}, Lcom/adcolony/sdk/aw;->setHorizontalScrollBarEnabled(Z)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/adcolony/sdk/aw;->setVerticalScrollBarEnabled(Z)V

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 199
    invoke-static {v3}, Lcom/adcolony/sdk/aw;->setWebContentsDebuggingEnabled(Z)V

    .line 203
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/aw$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/aw$1;-><init>(Lcom/adcolony/sdk/aw;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 242
    invoke-virtual {p0}, Lcom/adcolony/sdk/aw;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 244
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 245
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 246
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 250
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 253
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_4

    .line 255
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 256
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 262
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 264
    new-instance v0, Lcom/adcolony/sdk/aw$2;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/aw$2;-><init>(Lcom/adcolony/sdk/aw;)V

    .line 332
    :goto_0
    new-instance v1, Lcom/adcolony/sdk/aw$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/aw$4;-><init>(Lcom/adcolony/sdk/aw;)V

    const-string v2, "NativeLayer"

    invoke-virtual {p0, v1, v2}, Lcom/adcolony/sdk/aw;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 354
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->b:Z

    if-eqz v0, :cond_c

    .line 356
    const-string v2, ""

    .line 361
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/adcolony/sdk/aw;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 370
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_b

    .line 375
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v3, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    .line 389
    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v3, "Failed to find or open display module at URL: "

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    iget-object v3, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    const-string v3, " with error: "

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 393
    :goto_2
    iget-object v1, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    const-string v3, "text/html"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/aw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_3
    if-nez p1, :cond_5

    .line 407
    invoke-virtual {p0}, Lcom/adcolony/sdk/aw;->f()V

    .line 408
    invoke-virtual {p0}, Lcom/adcolony/sdk/aw;->g()V

    .line 412
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->p:Z

    if-eqz v0, :cond_7

    .line 415
    :cond_6
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/ab;->a(Lcom/adcolony/sdk/ad;)Lcom/adcolony/sdk/ad;

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 421
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->a(Ljava/lang/String;)V

    .line 423
    :cond_8
    return-void

    .line 301
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 303
    new-instance v0, Lcom/adcolony/sdk/aw$3;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/aw$3;-><init>(Lcom/adcolony/sdk/aw;)V

    goto/16 :goto_0

    .line 328
    :cond_a
    new-instance v0, Lcom/adcolony/sdk/aw$a;

    invoke-direct {v0, p0, v4}, Lcom/adcolony/sdk/aw$a;-><init>(Lcom/adcolony/sdk/aw;Lcom/adcolony/sdk/aw$1;)V

    goto/16 :goto_0

    .line 378
    :cond_b
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "var\\s*ADC_DEVICE_INFO\\s*=\\s*null\\s*;"

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "var ADC_DEVICE_INFO = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/adcolony/sdk/aw;->w:Lcom/adcolony/sdk/z;

    iget-object v5, v5, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "info"

    .line 383
    invoke-static {v5, v6}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "metadata"

    invoke-static {v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    .line 395
    :cond_c
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 397
    :cond_d
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 401
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v1, "data"

    :goto_4
    if-eqz p1, :cond_10

    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string v3, "text/html"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/aw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    iget-object v1, p0, Lcom/adcolony/sdk/aw;->g:Ljava/lang/String;

    goto :goto_4

    :cond_10
    iget-object v2, p0, Lcom/adcolony/sdk/aw;->d:Ljava/lang/String;

    goto :goto_5
.end method

.method a(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/aw;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "container_id"

    .line 147
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    .line 148
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method b(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 564
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/aw;->l:I

    .line 565
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/aw;->m:I

    .line 566
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/aw;->n:I

    .line 567
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/aw;->o:I

    .line 569
    invoke-virtual {p0}, Lcom/adcolony/sdk/aw;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 570
    iget v1, p0, Lcom/adcolony/sdk/aw;->l:I

    iget v2, p0, Lcom/adcolony/sdk/aw;->m:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 571
    iget v1, p0, Lcom/adcolony/sdk/aw;->n:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 572
    iget v1, p0, Lcom/adcolony/sdk/aw;->o:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 573
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->q:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 578
    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 579
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/aw;->a:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 580
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 582
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 638
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->r:Z

    if-eqz v0, :cond_0

    .line 640
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/aw$8;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/aw$8;-><init>(Lcom/adcolony/sdk/aw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 664
    :cond_0
    return-void
.end method

.method c(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 592
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 593
    if-eqz v0, :cond_1

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->setVisibility(I)V

    .line 602
    :goto_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/aw;->q:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 605
    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 606
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/aw;->a:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 607
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 609
    :cond_0
    return-void

    .line 599
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/aw;->a(ZLcom/adcolony/sdk/z;)V

    .line 162
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 430
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "WebView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/aw$5;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/aw$5;-><init>(Lcom/adcolony/sdk/aw;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "WebView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/aw$6;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/aw$6;-><init>(Lcom/adcolony/sdk/aw;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "WebView.execute_js"

    new-instance v2, Lcom/adcolony/sdk/aw$7;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/aw$7;-><init>(Lcom/adcolony/sdk/aw;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "WebView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "WebView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "WebView.execute_js"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 473
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aw;->setVisibility(I)V

    .line 474
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/aw;->n:I

    iget v2, p0, Lcom/adcolony/sdk/aw;->o:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 475
    iget v1, p0, Lcom/adcolony/sdk/aw;->l:I

    iget v2, p0, Lcom/adcolony/sdk/aw;->m:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 476
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 477
    iget-object v1, p0, Lcom/adcolony/sdk/aw;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    return-void
.end method
