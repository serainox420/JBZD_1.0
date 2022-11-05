.class public Lcom/smartadserver/android/library/e/a/c;
.super Ljava/lang/Object;
.source "SASHttpAdElementProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/e/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/smartadserver/android/library/e/a/a;

.field private c:Lorg/apache/http/client/HttpClient;

.field private d:Landroid/content/Context;

.field private e:Lcom/smartadserver/android/library/a/a;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/smartadserver/android/library/e/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/e/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/e/a/c;->f:Z

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->g:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/e/a/c;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/a/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->e:Lcom/smartadserver/android/library/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/a/a;)Lcom/smartadserver/android/library/a/a;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smartadserver/android/library/e/a/c;->e:Lcom/smartadserver/android/library/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/e/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smartadserver/android/library/e/a/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 281
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->b:Lcom/smartadserver/android/library/e/a/a;

    invoke-virtual {v0, p1, p4}, Lcom/smartadserver/android/library/e/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    .line 283
    new-instance v0, Lcom/smartadserver/android/library/a/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/e/a/c;->b:Lcom/smartadserver/android/library/e/a/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/e/a/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->e:Lcom/smartadserver/android/library/a/a;

    .line 285
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->c:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->e:Lcom/smartadserver/android/library/a/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/e/a/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 291
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/e/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Will load ad at URL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/e/a/c;->f:Z

    .line 297
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->g:Ljava/lang/String;

    .line 299
    iget-object v7, p0, Lcom/smartadserver/android/library/e/a/c;->e:Lcom/smartadserver/android/library/a/a;

    new-instance v0, Lcom/smartadserver/android/library/e/a/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v4, v2

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/e/a/c$a;-><init>(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/ui/SASAdView$a;Ljava/lang/String;J)V

    invoke-virtual {v7, v6, v0}, Lcom/smartadserver/android/library/a/a;->a(Lorg/apache/http/client/methods/HttpPost;Lcom/smartadserver/android/library/a/b;)V

    .line 300
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/e/a/c;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/smartadserver/android/library/e/a/c;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 368
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    .line 370
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/e/a/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/e/a/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/e/a/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->b:Lcom/smartadserver/android/library/e/a/a;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/smartadserver/android/library/e/a/c;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->b:Lcom/smartadserver/android/library/e/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/e/a/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 261
    invoke-direct {p0, p2}, Lcom/smartadserver/android/library/e/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    invoke-direct {p0, p2, p6, p7, p8}, Lcom/smartadserver/android/library/e/a/c;->a(Ljava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;)V

    .line 267
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->b:Lcom/smartadserver/android/library/e/a/a;

    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/smartadserver/android/library/e/a/a;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/smartadserver/android/library/e/a/c;->d:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/smartadserver/android/library/e/a/b;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/e/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->b:Lcom/smartadserver/android/library/e/a/a;

    .line 64
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/smartadserver/android/library/e/a/c;->f:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->e:Lcom/smartadserver/android/library/a/a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c;->e:Lcom/smartadserver/android/library/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/a/a;->c()V

    .line 97
    :cond_0
    return-void
.end method
