.class public final Lcom/flurry/sdk/es;
.super Lcom/flurry/sdk/eq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/es$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/flurry/sdk/eq;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/ku$a;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    return-object v0
.end method

.method public final a(Lcom/flurry/sdk/es$a;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    invoke-static {}, Lcom/flurry/sdk/ef;->b()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?oauth_callback=%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    iput-object v1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 3072
    :goto_0
    sget-object v1, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    .line 3144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 4027
    const/16 v1, 0x4e20

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 41
    const-string v1, "Content-Type"

    invoke-static {}, Lcom/flurry/sdk/er;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/flurry/sdk/lh;

    invoke-direct {v1}, Lcom/flurry/sdk/lh;-><init>()V

    .line 4045
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 43
    new-instance v1, Lcom/flurry/sdk/lh;

    invoke-direct {v1}, Lcom/flurry/sdk/lh;-><init>()V

    .line 5041
    iput-object v1, v0, Lcom/flurry/sdk/ks;->c:Lcom/flurry/sdk/lg;

    .line 46
    sget-object v1, Lcom/flurry/sdk/es;->a:Lcom/flurry/sdk/el;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/ks;Lcom/flurry/sdk/el;)V

    .line 48
    new-instance v1, Lcom/flurry/sdk/es$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/es$1;-><init>(Lcom/flurry/sdk/es;Lcom/flurry/sdk/es$a;)V

    .line 5049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 67
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 68
    return-void

    .line 2077
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ef;->b()Ljava/lang/String;

    move-result-object v1

    .line 2136
    iput-object v1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/flurry/sdk/ef;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
