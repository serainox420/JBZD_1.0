.class public abstract Lcom/flurry/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/r;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field final d:Lcom/flurry/sdk/dv;

.field e:Z

.field f:Z

.field g:J

.field h:Lcom/flurry/sdk/au;

.field public i:Lcom/flurry/sdk/au;

.field public j:Lcom/flurry/sdk/e;

.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/flurry/sdk/o;->e:Z

    .line 44
    iput-boolean v0, p0, Lcom/flurry/sdk/o;->f:Z

    .line 47
    new-instance v0, Lcom/flurry/sdk/o$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/o$1;-><init>(Lcom/flurry/sdk/o;)V

    iput-object v0, p0, Lcom/flurry/sdk/o;->m:Lcom/flurry/sdk/kh;

    .line 56
    new-instance v0, Lcom/flurry/sdk/o$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/o$2;-><init>(Lcom/flurry/sdk/o;)V

    iput-object v0, p0, Lcom/flurry/sdk/o;->n:Lcom/flurry/sdk/kh;

    .line 73
    new-instance v0, Lcom/flurry/sdk/o$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/o$3;-><init>(Lcom/flurry/sdk/o;)V

    iput-object v0, p0, Lcom/flurry/sdk/o;->o:Lcom/flurry/sdk/kh;

    .line 98
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A session must be started before ad objects may be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fi;->a()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/o;->b:I

    .line 104
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/o;->k:Ljava/lang/ref/WeakReference;

    .line 105
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/o;->l:Ljava/lang/ref/WeakReference;

    .line 106
    iput-object p3, p0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    .line 108
    new-instance v1, Lcom/flurry/sdk/dv;

    invoke-direct {v1, p3}, Lcom/flurry/sdk/dv;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    .line 1224
    iget-object v0, v0, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 110
    invoke-virtual {v0, p1, p0}, Lcom/flurry/sdk/p;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 112
    invoke-direct {p0}, Lcom/flurry/sdk/o;->u()V

    .line 1266
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/o;->n:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 1274
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/o;->o:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/o;J)J
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/flurry/sdk/o;->g:J

    return-wide p1
.end method

.method private u()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/o;->g:J

    .line 258
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/o;->m:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/kh;)V

    .line 259
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/o;->m:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 263
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/flurry/sdk/o;->v()V

    .line 2270
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/o;->n:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 2278
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/o;->o:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 129
    iput-boolean v2, p0, Lcom/flurry/sdk/o;->e:Z

    .line 130
    iput-boolean v2, p0, Lcom/flurry/sdk/o;->f:Z

    .line 132
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 3224
    iget-object v0, v0, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 132
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/p;->b(Landroid/content/Context;Lcom/flurry/sdk/r;)Z

    .line 134
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->b()V

    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->a()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;

    .line 149
    return-void
.end method

.method public final a(Lcom/flurry/sdk/au;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    .line 217
    return-void
.end method

.method public a(Lcom/flurry/sdk/au;JZ)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 231
    const-string v0, "VerifyPackageLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting nextAdUnit...  current cacheSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/y;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12191
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    .line 234
    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->d()V

    .line 235
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->a()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    .line 236
    const-string v0, "VerifyPackageLog"

    const-string v1, "nextAdUnit() cacheSize is empty"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 238
    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 239
    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 240
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 245
    :goto_0
    return-void

    .line 13191
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    .line 243
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->j()Lcom/flurry/sdk/dw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 5

    .prologue
    .line 310
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->a()I

    move-result v0

    .line 313
    if-nez v0, :cond_1

    .line 314
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting ad request from EnsureCacheNotEmpty size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->j()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V

    .line 319
    :cond_1
    sget-object v0, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->s()V

    .line 324
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 11191
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    .line 225
    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->b()V

    .line 226
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 3251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;)V

    .line 156
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/flurry/sdk/o;->v()V

    .line 161
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 165
    .line 3327
    iget-boolean v0, p0, Lcom/flurry/sdk/o;->e:Z

    if-eqz v0, :cond_0

    .line 4206
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 3327
    sget-object v1, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    .line 5079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 3327
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3328
    sget-object v0, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/o;->f()Landroid/content/Context;

    move-result-object v2

    .line 5206
    iget-object v4, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 3328
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 6206
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 3329
    sget-object v1, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    .line 7079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 3329
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/o;->u()V

    .line 167
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/flurry/sdk/o;->b:I

    return v0
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/o;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->a()V

    .line 122
    return-void
.end method

.method public final g()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/flurry/sdk/o;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/flurry/sdk/dv;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    return-object v0
.end method

.method public j()Lcom/flurry/sdk/dw;
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 7221
    iget-object v0, v0, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/z;

    .line 8186
    iget-object v1, p0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    .line 196
    const/4 v2, 0x0

    .line 8211
    iget-object v3, p0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    .line 9075
    iget-object v0, v0, Lcom/flurry/sdk/z$a;->a:Lcom/flurry/sdk/dw;

    .line 196
    return-object v0
.end method

.method public k()Lcom/flurry/sdk/y;
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 9221
    iget-object v0, v0, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/z;

    .line 10186
    iget-object v1, p0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    .line 201
    const/4 v2, 0x0

    .line 10211
    iget-object v3, p0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    .line 11079
    iget-object v0, v0, Lcom/flurry/sdk/z$a;->b:Lcom/flurry/sdk/y;

    .line 201
    return-object v0
.end method

.method public final l()Lcom/flurry/sdk/au;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    return-object v0
.end method

.method public final m()Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;

    return-object v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->c()V

    .line 250
    return-void
.end method

.method protected final o()V
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Lcom/flurry/sdk/ly;->b()V

    .line 288
    iget-object v0, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets before display"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 13251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 292
    iget-object v1, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)Z

    .line 294
    :cond_0
    return-void
.end method

.method protected final p()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    .line 299
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method protected final r()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 335
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->b()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session Id not created yet. Delaying the fetch until session is created."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/o;->f:Z

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_0
    sget-object v0, Lcom/flurry/sdk/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetching ad now for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14191
    iget-object v0, p0, Lcom/flurry/sdk/o;->d:Lcom/flurry/sdk/dv;

    .line 341
    invoke-virtual {p0}, Lcom/flurry/sdk/o;->j()Lcom/flurry/sdk/dw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/o;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    goto :goto_0
.end method

.method protected final s()V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/o;->e:Z

    .line 14206
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 347
    sget-object v1, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    .line 15079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->c(Ljava/lang/String;)V

    .line 348
    return-void
.end method
