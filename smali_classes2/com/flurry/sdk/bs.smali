.class public abstract Lcom/flurry/sdk/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hc;
.implements Lcom/flurry/sdk/hm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/sdk/gz;
.end method

.method public final a(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/hl;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 34
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v6

    .line 48
    :goto_0
    return-object v0

    .line 1115
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->a()Ljava/lang/String;

    move-result-object v1

    .line 1116
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->b()Ljava/util/List;

    move-result-object v2

    .line 1117
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->c()Ljava/util/List;

    move-result-object v3

    .line 1142
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->h()Ljava/util/List;

    move-result-object v4

    .line 1119
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->d()Ljava/util/List;

    move-result-object v5

    .line 1120
    new-instance v0, Lcom/flurry/sdk/bv;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/bv;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2076
    if-nez p1, :cond_2

    .line 2077
    const/4 v0, 0x0

    .line 39
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v6

    .line 40
    goto :goto_0

    .line 2111
    :cond_2
    new-instance v1, Lcom/flurry/sdk/bq;

    invoke-direct {v1}, Lcom/flurry/sdk/bq;-><init>()V

    .line 2085
    invoke-interface {v1, p1, v0}, Lcom/flurry/sdk/br;->a(Landroid/content/Context;Lcom/flurry/sdk/bv;)Z

    move-result v0

    goto :goto_1

    .line 2170
    :cond_3
    invoke-static {p1}, Lcom/flurry/sdk/lv;->c(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    if-nez v0, :cond_4

    move-object v0, v6

    .line 45
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/bs;->a(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)Lcom/flurry/sdk/hl;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)Lcom/flurry/sdk/hl;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final b(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/gz;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 53
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v6

    .line 72
    :goto_0
    return-object v0

    .line 3125
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->a()Ljava/lang/String;

    move-result-object v1

    .line 3126
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->e()Ljava/util/List;

    move-result-object v2

    .line 3127
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->f()Ljava/util/List;

    move-result-object v3

    .line 3154
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->h()Ljava/util/List;

    move-result-object v4

    .line 3129
    new-instance v0, Lcom/flurry/sdk/bv;

    .line 3130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/bv;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4090
    if-nez p1, :cond_2

    .line 4091
    const/4 v0, 0x0

    .line 58
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v6

    .line 59
    goto :goto_0

    .line 4111
    :cond_2
    new-instance v1, Lcom/flurry/sdk/bq;

    invoke-direct {v1}, Lcom/flurry/sdk/bq;-><init>()V

    .line 4099
    invoke-interface {v1, p1, v0}, Lcom/flurry/sdk/br;->a(Landroid/content/Context;Lcom/flurry/sdk/bv;)Z

    move-result v0

    goto :goto_1

    .line 4170
    :cond_3
    invoke-static {p1}, Lcom/flurry/sdk/lv;->c(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    if-nez v0, :cond_4

    move-object v0, v6

    .line 64
    goto :goto_0

    .line 67
    :cond_4
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    .line 6078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 7058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 67
    invoke-static {v1}, Lcom/flurry/sdk/fi;->a(Lcom/flurry/sdk/cs;)Lcom/flurry/android/AdCreative;

    move-result-object v1

    .line 68
    if-nez v1, :cond_5

    move-object v0, v6

    .line 69
    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/flurry/sdk/bs;->a(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/sdk/gz;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bo;",
            ">;"
        }
    .end annotation
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bo;",
            ">;"
        }
    .end annotation
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/flurry/sdk/bs;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
