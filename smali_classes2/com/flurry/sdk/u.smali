.class public Lcom/flurry/sdk/u;
.super Lcom/flurry/sdk/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/u$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field public k:Lcom/flurry/sdk/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/flurry/sdk/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/u;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/flurry/sdk/o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/u;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6143
    invoke-static {}, Lcom/flurry/sdk/ly;->b()V

    .line 6145
    monitor-enter p0

    .line 6146
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6147
    monitor-exit p0

    .line 6213
    :goto_0
    return-void

    .line 6149
    :cond_0
    sget-object v0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    .line 6150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6152
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "render interstitial ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6154
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->f()Landroid/content/Context;

    move-result-object v2

    .line 6157
    if-eqz v2, :cond_1

    instance-of v0, v2, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6158
    :cond_1
    sget-object v0, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto :goto_0

    .line 6150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6282
    :cond_2
    iget-object v4, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    .line 6164
    if-nez v4, :cond_3

    .line 6165
    sget-object v0, Lcom/flurry/sdk/bb;->c:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto :goto_0

    .line 6170
    :cond_3
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6171
    sget-object v0, Lcom/flurry/sdk/bb;->x:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto :goto_0

    .line 6176
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 7079
    iget-boolean v0, v0, Lcom/flurry/sdk/jr;->b:Z

    .line 6176
    if-nez v0, :cond_5

    .line 6177
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/u;->l:Ljava/lang/String;

    const-string v3, "There is no network connectivity (ad will not display)"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6179
    const-string v0, "errorCode"

    sget-object v3, Lcom/flurry/sdk/bb;->b:Lcom/flurry/sdk/bb;

    .line 8040
    iget v3, v3, Lcom/flurry/sdk/bb;->z:I

    .line 6179
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6180
    sget-object v0, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    goto :goto_0

    .line 9078
    :cond_5
    iget-object v0, v4, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 10058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 6186
    if-nez v0, :cond_6

    .line 6187
    sget-object v0, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto :goto_0

    .line 6192
    :cond_6
    iget v1, v0, Lcom/flurry/sdk/cs;->h:I

    if-ne v1, v5, :cond_7

    .line 6193
    sget-object v0, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 6198
    :cond_7
    sget-object v1, Lcom/flurry/sdk/cu;->c:Lcom/flurry/sdk/cu;

    iget-object v2, v0, Lcom/flurry/sdk/cs;->a:Lcom/flurry/sdk/cu;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6199
    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 6211
    :cond_8
    invoke-static {}, Lcom/flurry/sdk/fi;->b()Lcom/flurry/sdk/dg;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/sdk/cs;->y:Lcom/flurry/sdk/dg;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6212
    sget-object v0, Lcom/flurry/sdk/bb;->s:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 6216
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->o()V

    .line 6218
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$3;-><init>(Lcom/flurry/sdk/u;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/u;)V
    .locals 3

    .prologue
    .line 10227
    invoke-static {}, Lcom/flurry/sdk/ly;->a()V

    .line 10231
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->p()V

    .line 10233
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/hm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->f()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/flurry/sdk/hm;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/hl;

    move-result-object v0

    .line 10234
    if-eqz v0, :cond_0

    .line 10235
    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->a()V

    .line 10238
    :cond_0
    sget-object v0, Lcom/flurry/sdk/u;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterstitialAdObject rendered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10239
    invoke-static {p0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/flurry/sdk/o;->a()V

    .line 50
    return-void
.end method

.method protected final a(Lcom/flurry/sdk/d;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/d;)V

    .line 77
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$1;-><init>(Lcom/flurry/sdk/u;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 97
    :cond_1
    return-void

    .line 82
    :cond_2
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 86
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final j()Lcom/flurry/sdk/dw;
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 1221
    iget-object v0, v0, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/z;

    .line 2186
    iget-object v1, p0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/flurry/sdk/fi;->b()Lcom/flurry/sdk/dg;

    move-result-object v2

    .line 2211
    iget-object v3, p0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    .line 3075
    iget-object v0, v0, Lcom/flurry/sdk/z$a;->a:Lcom/flurry/sdk/dw;

    .line 55
    return-object v0
.end method

.method public final k()Lcom/flurry/sdk/y;
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 3221
    iget-object v0, v0, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/z;

    .line 4186
    iget-object v1, p0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/flurry/sdk/fi;->b()Lcom/flurry/sdk/dg;

    move-result-object v2

    .line 4211
    iget-object v3, p0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    .line 5079
    iget-object v0, v0, Lcom/flurry/sdk/z$a;->b:Lcom/flurry/sdk/y;

    .line 61
    return-object v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 5206
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 70
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    goto :goto_0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    monitor-exit p0

    .line 105
    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final v()V
    .locals 3

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->r()V

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/flurry/sdk/u;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterstitialAdObject fetched: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;)V

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 115
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
