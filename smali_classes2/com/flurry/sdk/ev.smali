.class public final Lcom/flurry/sdk/ev;
.super Lcom/flurry/sdk/eq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ev$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/flurry/sdk/eq;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/ev;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/ku$a;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ev$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/ev$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .line 1106
    invoke-static {p1}, Lcom/flurry/sdk/ef;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ev;->d:Ljava/lang/String;

    .line 43
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ev;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/flurry/sdk/ek;

    .line 2083
    iget-object v1, p0, Lcom/flurry/sdk/eq;->c:Ljava/util/Map;

    .line 51
    invoke-direct {v0, v1}, Lcom/flurry/sdk/ek;-><init>(Ljava/util/Map;)V

    .line 52
    invoke-virtual {v0}, Lcom/flurry/sdk/ek;->a()Ljava/lang/String;

    move-result-object v1

    .line 53
    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/ed;->c()Lcom/flurry/sdk/el;

    move-result-object v1

    .line 62
    new-instance v2, Lcom/flurry/sdk/ks;

    invoke-direct {v2}, Lcom/flurry/sdk/ks;-><init>()V

    .line 2102
    iget-object v3, p0, Lcom/flurry/sdk/ev;->d:Ljava/lang/String;

    .line 2136
    iput-object v3, v2, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 3097
    sget-object v3, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    .line 3144
    iput-object v3, v2, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 4037
    iput-object v0, v2, Lcom/flurry/sdk/ks;->b:Ljava/lang/Object;

    .line 5027
    const/16 v3, 0x4e20

    iput v3, v2, Lcom/flurry/sdk/mb;->w:I

    .line 67
    new-instance v3, Lcom/flurry/sdk/lc;

    invoke-direct {v3}, Lcom/flurry/sdk/lc;-><init>()V

    .line 5041
    iput-object v3, v2, Lcom/flurry/sdk/ks;->c:Lcom/flurry/sdk/lg;

    .line 68
    new-instance v3, Lcom/flurry/sdk/lh;

    invoke-direct {v3}, Lcom/flurry/sdk/lh;-><init>()V

    .line 5045
    iput-object v3, v2, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 69
    const-string v3, "Content-Type"

    invoke-static {}, Lcom/flurry/sdk/er;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "Content-Length"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/ev;->a(Lcom/flurry/sdk/ks;Lcom/flurry/sdk/el;)V

    .line 75
    new-instance v0, Lcom/flurry/sdk/ev$1;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/ev$1;-><init>(Lcom/flurry/sdk/ev;Lcom/flurry/sdk/ev$a;)V

    .line 5049
    iput-object v0, v2, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 92
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 93
    return-void

    .line 57
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/ev;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 112
    return-void
.end method
