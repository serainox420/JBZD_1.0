.class final Landroid/support/v7/media/g$d;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/m$a;
.implements Landroid/support/v7/media/o$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/g$d$a;,
        Landroid/support/v7/media/g$d$d;,
        Landroid/support/v7/media/g$d$b;,
        Landroid/support/v7/media/g$d$c;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/g;",
            ">;>;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v7/media/n$c;

.field final d:Landroid/support/v7/media/g$d$a;

.field final e:Landroid/support/v7/media/o;

.field f:Landroid/support/v7/media/g$g;

.field g:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/f/i",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/g$e;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/g$d$d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/support/v7/media/g$d$c;

.field private final m:Landroid/support/v4/c/a/a;

.field private final n:Z

.field private o:Landroid/support/v7/media/m;

.field private p:Landroid/support/v7/media/g$g;

.field private q:Landroid/support/v7/media/g$g;

.field private r:Landroid/support/v7/media/c$d;

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/media/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/support/v7/media/b;

.field private u:Landroid/support/v7/media/g$d$b;

.field private v:Landroid/support/v4/media/session/MediaSessionCompat;

.field private w:Landroid/support/v4/media/session/MediaSessionCompat$e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    .line 1926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    .line 1927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->i:Ljava/util/Map;

    .line 1928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    .line 1929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->k:Ljava/util/ArrayList;

    .line 1931
    new-instance v0, Landroid/support/v7/media/n$c;

    invoke-direct {v0}, Landroid/support/v7/media/n$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    .line 1933
    new-instance v0, Landroid/support/v7/media/g$d$c;

    invoke-direct {v0, p0}, Landroid/support/v7/media/g$d$c;-><init>(Landroid/support/v7/media/g$d;)V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->l:Landroid/support/v7/media/g$d$c;

    .line 1934
    new-instance v0, Landroid/support/v7/media/g$d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/media/g$d$a;-><init>(Landroid/support/v7/media/g$d;)V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    .line 1946
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    .line 1951
    new-instance v0, Landroid/support/v7/media/g$d$1;

    invoke-direct {v0, p0}, Landroid/support/v7/media/g$d$1;-><init>(Landroid/support/v7/media/g$d;)V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->w:Landroid/support/v4/media/session/MediaSessionCompat$e;

    .line 1966
    iput-object p1, p0, Landroid/support/v7/media/g$d;->a:Landroid/content/Context;

    .line 1967
    invoke-static {p1}, Landroid/support/v4/c/a/a;->a(Landroid/content/Context;)Landroid/support/v4/c/a/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/g$d;->m:Landroid/support/v4/c/a/a;

    .line 1968
    const-string v0, "activity"

    .line 1969
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1968
    invoke-static {v0}, Landroid/support/v4/app/f;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/g$d;->n:Z

    .line 1975
    invoke-static {p1, p0}, Landroid/support/v7/media/o;->a(Landroid/content/Context;Landroid/support/v7/media/o$f;)Landroid/support/v7/media/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    .line 1976
    iget-object v0, p0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/c;)V

    .line 1977
    return-void
.end method

.method private a(Landroid/support/v7/media/g$g;Landroid/support/v7/media/a;)I
    .locals 4

    .prologue
    .line 2381
    invoke-virtual {p1, p2}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/a;)I

    move-result v0

    .line 2382
    if-eqz v0, :cond_5

    .line 2383
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 2384
    sget-boolean v1, Landroid/support/v7/media/g;->a:Z

    if-eqz v1, :cond_0

    .line 2385
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v2, 0x103

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2390
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 2391
    sget-boolean v1, Landroid/support/v7/media/g;->a:Z

    if-eqz v1, :cond_2

    .line 2392
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route volume changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_2
    iget-object v1, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v2, 0x104

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2397
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    .line 2398
    sget-boolean v1, Landroid/support/v7/media/g;->a:Z

    if-eqz v1, :cond_4

    .line 2399
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route presentation display changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_4
    iget-object v1, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v2, 0x105

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2406
    :cond_5
    return v0
.end method

.method static synthetic a(Landroid/support/v7/media/g$d;Landroid/support/v7/media/g$e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1921
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/g$d;->b(Landroid/support/v7/media/g$e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v7/media/g$e;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x2

    .line 2413
    invoke-virtual {p1}, Landroid/support/v7/media/g$e;->c()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 2414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2415
    invoke-direct {p0, v2}, Landroid/support/v7/media/g$d;->c(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 2416
    iget-object v0, p0, Landroid/support/v7/media/g$d;->i:Ljava/util/Map;

    new-instance v1, Landroid/support/v4/f/i;

    invoke-direct {v1, v4, p2}, Landroid/support/v4/f/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 2425
    :goto_0
    return-object v0

    .line 2419
    :cond_0
    const-string v0, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Either "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isn\'t unique in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2422
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s_%d"

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2423
    invoke-direct {p0, v3}, Landroid/support/v7/media/g$d;->c(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 2424
    iget-object v0, p0, Landroid/support/v7/media/g$d;->i:Ljava/util/Map;

    new-instance v1, Landroid/support/v4/f/i;

    invoke-direct {v1, v4, p2}, Landroid/support/v4/f/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 2425
    goto :goto_0

    .line 2421
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/media/g$d$b;)V
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    if-eqz v0, :cond_0

    .line 2669
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d$b;->a()V

    .line 2671
    :cond_0
    iput-object p1, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    .line 2672
    if-eqz p1, :cond_1

    .line 2673
    invoke-direct {p0}, Landroid/support/v7/media/g$d;->h()V

    .line 2675
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/g$d;Z)V
    .locals 0

    .prologue
    .line 1921
    invoke-direct {p0, p1}, Landroid/support/v7/media/g$d;->a(Z)V

    return-void
.end method

.method private a(Landroid/support/v7/media/g$e;Landroid/support/v7/media/d;)V
    .locals 12

    .prologue
    .line 2263
    invoke-virtual {p1, p2}, Landroid/support/v7/media/g$e;->a(Landroid/support/v7/media/d;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2266
    const/4 v4, 0x0

    .line 2267
    const/4 v2, 0x0

    .line 2268
    if-eqz p2, :cond_c

    .line 2269
    invoke-virtual {p2}, Landroid/support/v7/media/d;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2271
    invoke-virtual {p2}, Landroid/support/v7/media/d;->a()Ljava/util/List;

    move-result-object v7

    .line 2272
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2275
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_7

    .line 2279
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/a;

    .line 2280
    invoke-virtual {v0}, Landroid/support/v7/media/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 2281
    invoke-virtual {p1, v3}, Landroid/support/v7/media/g$e;->a(Ljava/lang/String;)I

    move-result v5

    .line 2282
    if-gez v5, :cond_4

    .line 2284
    invoke-direct {p0, p1, v3}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2285
    invoke-virtual {v0}, Landroid/support/v7/media/a;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v5, v1

    .line 2286
    :goto_1
    if-eqz v5, :cond_1

    new-instance v1, Landroid/support/v7/media/g$f;

    invoke-direct {v1, p1, v3, v11}, Landroid/support/v7/media/g$f;-><init>(Landroid/support/v7/media/g$e;Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    :goto_2
    invoke-static {p1}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v11

    add-int/lit8 v3, v4, 0x1

    invoke-interface {v11, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2289
    iget-object v4, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    if-eqz v5, :cond_2

    .line 2292
    new-instance v4, Landroid/support/v4/f/i;

    invoke-direct {v4, v1, v0}, Landroid/support/v4/f/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move v0, v2

    move v1, v3

    .line 2278
    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 2285
    :cond_0
    const/4 v1, 0x0

    move v5, v1

    goto :goto_1

    .line 2286
    :cond_1
    new-instance v1, Landroid/support/v7/media/g$g;

    invoke-direct {v1, p1, v3, v11}, Landroid/support/v7/media/g$g;-><init>(Landroid/support/v7/media/g$e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2294
    :cond_2
    invoke-virtual {v1, v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/a;)I

    .line 2296
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_3

    .line 2297
    const-string v0, "MediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Route added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v4, 0x101

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    goto :goto_3

    .line 2302
    :cond_4
    if-ge v5, v4, :cond_5

    .line 2303
    const-string v1, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v1, v4

    goto :goto_4

    .line 2307
    :cond_5
    invoke-static {p1}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/g$g;

    .line 2308
    invoke-static {p1}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v11

    add-int/lit8 v3, v4, 0x1

    invoke-static {v11, v5, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 2311
    instance-of v4, v1, Landroid/support/v7/media/g$f;

    if-eqz v4, :cond_6

    .line 2312
    new-instance v4, Landroid/support/v4/f/i;

    invoke-direct {v4, v1, v0}, Landroid/support/v4/f/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v1, v3

    goto :goto_4

    .line 2315
    :cond_6
    invoke-direct {p0, v1, v0}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$g;Landroid/support/v7/media/a;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 2317
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-ne v1, v0, :cond_12

    .line 2318
    const/4 v0, 0x1

    move v1, v3

    goto/16 :goto_4

    .line 2325
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/i;

    .line 2326
    iget-object v1, v0, Landroid/support/v4/f/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/media/g$g;

    .line 2327
    iget-object v0, v0, Landroid/support/v4/f/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/media/a;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/a;)I

    .line 2328
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_8

    .line 2329
    const-string v0, "MediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_8
    iget-object v0, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v5, 0x101

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    goto :goto_5

    .line 2333
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/i;

    .line 2334
    iget-object v1, v0, Landroid/support/v4/f/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/media/g$g;

    .line 2335
    iget-object v0, v0, Landroid/support/v4/f/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/media/a;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$g;Landroid/support/v7/media/a;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 2336
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-ne v1, v0, :cond_a

    .line 2337
    const/4 v2, 0x1

    goto :goto_6

    .line 2342
    :cond_b
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring invalid provider descriptor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_c
    invoke-static {p1}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-lt v1, v4, :cond_d

    .line 2349
    invoke-static {p1}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2350
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/a;)I

    .line 2352
    iget-object v3, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2347
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 2356
    :cond_d
    invoke-direct {p0, v2}, Landroid/support/v7/media/g$d;->a(Z)V

    .line 2363
    invoke-static {p1}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-lt v1, v4, :cond_f

    .line 2364
    invoke-static {p1}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2365
    sget-boolean v2, Landroid/support/v7/media/g;->a:Z

    if-eqz v2, :cond_e

    .line 2366
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Route removed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_e
    iget-object v2, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v3, 0x102

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2363
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    .line 2372
    :cond_f
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_10

    .line 2373
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_10
    iget-object v0, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v1, 0x203

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2377
    :cond_11
    return-void

    :cond_12
    move v0, v2

    move v1, v3

    goto/16 :goto_4
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2447
    iget-object v0, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2448
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iput-object v3, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    .line 2452
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2453
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2454
    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->d(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2455
    iput-object v0, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    .line 2456
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found default route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/g$d;->q:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/media/g$d;->q:Landroid/support/v7/media/g$g;

    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2464
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing the bluetooth route because it is no longer selectable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/g$d;->q:Landroid/support/v7/media/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iput-object v3, p0, Landroid/support/v7/media/g$d;->q:Landroid/support/v7/media/g$g;

    .line 2468
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/g$d;->q:Landroid/support/v7/media/g$g;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2469
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2470
    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->b(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2471
    iput-object v0, p0, Landroid/support/v7/media/g$d;->q:Landroid/support/v7/media/g$g;

    .line 2472
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found bluetooth route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/g$d;->q:Landroid/support/v7/media/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :cond_5
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2480
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-direct {p0, v3, v4}, Landroid/support/v7/media/g$d;->d(Landroid/support/v7/media/g$g;I)V

    .line 2485
    :cond_6
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-nez v0, :cond_8

    .line 2489
    invoke-virtual {p0}, Landroid/support/v7/media/g$d;->f()Landroid/support/v7/media/g$g;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/media/g$d;->d(Landroid/support/v7/media/g$g;I)V

    .line 2527
    :cond_7
    :goto_0
    return-void

    .line 2491
    :cond_8
    if-eqz p1, :cond_7

    .line 2494
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    instance-of v0, v0, Landroid/support/v7/media/g$f;

    if-eqz v0, :cond_d

    .line 2495
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    check-cast v0, Landroid/support/v7/media/g$f;

    invoke-virtual {v0}, Landroid/support/v7/media/g$f;->a()Ljava/util/List;

    move-result-object v1

    .line 2497
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2498
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2499
    invoke-static {v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2502
    :cond_9
    iget-object v0, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    .line 2503
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2504
    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2505
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2507
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/c$d;

    .line 2508
    invoke-virtual {v0}, Landroid/support/v7/media/c$d;->c()V

    .line 2509
    invoke-virtual {v0}, Landroid/support/v7/media/c$d;->a()V

    .line 2510
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2514
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2515
    iget-object v2, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-static {v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2516
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v2

    .line 2518
    invoke-static {v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-static {v4}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v4

    .line 2517
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/media/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/c$d;

    move-result-object v2

    .line 2519
    invoke-virtual {v2}, Landroid/support/v7/media/c$d;->b()V

    .line 2520
    iget-object v3, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-static {v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2525
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/media/g$d;->h()V

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v7/media/g$e;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2441
    invoke-virtual {p1}, Landroid/support/v7/media/g$e;->c()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2442
    iget-object v1, p0, Landroid/support/v7/media/g$d;->i:Ljava/util/Map;

    new-instance v2, Landroid/support/v4/f/i;

    invoke-direct {v2, v0, p2}, Landroid/support/v4/f/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/support/v7/media/g$g;)Z
    .locals 2

    .prologue
    .line 2545
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 2546
    invoke-virtual {p1, v0}, Landroid/support/v7/media/g$g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 2547
    invoke-virtual {p1, v0}, Landroid/support/v7/media/g$g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/support/v7/media/c;)I
    .locals 3

    .prologue
    .line 2252
    iget-object v0, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2253
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2254
    iget-object v0, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$e;

    invoke-static {v0}, Landroid/support/v7/media/g$e;->a(Landroid/support/v7/media/g$e;)Landroid/support/v7/media/c;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 2258
    :goto_1
    return v0

    .line 2253
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2258
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private c(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2687
    iget-object v0, p0, Landroid/support/v7/media/g$d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2688
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2689
    iget-object v0, p0, Landroid/support/v7/media/g$d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$d$d;

    .line 2690
    invoke-virtual {v0}, Landroid/support/v7/media/g$d$d;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 2694
    :goto_1
    return v0

    .line 2688
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2694
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2431
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2432
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2433
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    invoke-static {v0}, Landroid/support/v7/media/g$g;->b(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2437
    :goto_1
    return v0

    .line 2432
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2437
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private c(Landroid/support/v7/media/g$g;)Z
    .locals 1

    .prologue
    .line 2553
    iget-object v0, p1, Landroid/support/v7/media/g$g;->a:Landroid/support/v7/media/a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/media/g$g;->c(Landroid/support/v7/media/g$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/support/v7/media/g$g;I)V
    .locals 5

    .prologue
    .line 2563
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-eq v0, p1, :cond_7

    .line 2564
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_3

    .line 2565
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_0

    .line 2566
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route unselected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v1, 0x107

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;I)V

    .line 2571
    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    if-eqz v0, :cond_1

    .line 2572
    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/c$d;->a(I)V

    .line 2573
    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    invoke-virtual {v0}, Landroid/support/v7/media/c$d;->a()V

    .line 2574
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    .line 2576
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2577
    iget-object v0, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/c$d;

    .line 2578
    invoke-virtual {v0, p2}, Landroid/support/v7/media/c$d;->a(I)V

    .line 2579
    invoke-virtual {v0}, Landroid/support/v7/media/c$d;->a()V

    goto :goto_0

    .line 2581
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2585
    :cond_3
    iput-object p1, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    .line 2587
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_6

    .line 2588
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    .line 2589
    invoke-static {p1}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v1

    .line 2588
    invoke-virtual {v0, v1}, Landroid/support/v7/media/c;->a(Ljava/lang/String;)Landroid/support/v7/media/c$d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    .line 2590
    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    if-eqz v0, :cond_4

    .line 2591
    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    invoke-virtual {v0}, Landroid/support/v7/media/c$d;->b()V

    .line 2593
    :cond_4
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_5

    .line 2594
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_5
    iget-object v0, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v1, 0x106

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2598
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    instance-of v0, v0, Landroid/support/v7/media/g$f;

    if-eqz v0, :cond_6

    .line 2599
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    check-cast v0, Landroid/support/v7/media/g$f;

    invoke-virtual {v0}, Landroid/support/v7/media/g$f;->a()Ljava/util/List;

    move-result-object v0

    .line 2600
    iget-object v1, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2601
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2603
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v2

    .line 2604
    invoke-static {v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-static {v4}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v4

    .line 2603
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/media/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/c$d;

    move-result-object v2

    .line 2605
    invoke-virtual {v2}, Landroid/support/v7/media/c$d;->b()V

    .line 2606
    iget-object v3, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-static {v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2611
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/media/g$d;->h()V

    .line 2613
    :cond_7
    return-void
.end method

.method private d(Landroid/support/v7/media/g$g;)Z
    .locals 2

    .prologue
    .line 2557
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    if-ne v0, v1, :cond_0

    .line 2558
    invoke-static {p1}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT_ROUTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2698
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_3

    .line 2699
    iget-object v0, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->q()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/n$c;->a:I

    .line 2700
    iget-object v0, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->r()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/n$c;->b:I

    .line 2701
    iget-object v0, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->p()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/n$c;->c:I

    .line 2702
    iget-object v0, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->m()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/n$c;->d:I

    .line 2703
    iget-object v0, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget-object v2, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->l()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/n$c;->e:I

    .line 2705
    iget-object v0, p0, Landroid/support/v7/media/g$d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 2706
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2707
    iget-object v0, p0, Landroid/support/v7/media/g$d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$d$d;

    .line 2708
    invoke-virtual {v0}, Landroid/support/v7/media/g$d$d;->c()V

    .line 2706
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2710
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    if-eqz v0, :cond_1

    .line 2711
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    invoke-virtual {p0}, Landroid/support/v7/media/g$d;->c()Landroid/support/v7/media/g$g;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 2713
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d$b;->a()V

    .line 2730
    :cond_1
    :goto_1
    return-void

    .line 2717
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget v0, v0, Landroid/support/v7/media/n$c;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2719
    const/4 v0, 0x2

    .line 2721
    :goto_2
    iget-object v1, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    iget-object v2, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget v2, v2, Landroid/support/v7/media/n$c;->b:I

    iget-object v3, p0, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget v3, v3, Landroid/support/v7/media/n$c;->a:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/media/g$d$b;->a(III)V

    goto :goto_1

    .line 2726
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    if-eqz v0, :cond_1

    .line 2727
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d$b;->a()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v7/media/g$g;
    .locals 3

    .prologue
    .line 2052
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2053
    invoke-static {v0}, Landroid/support/v7/media/g$g;->b(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Landroid/support/v7/media/g;
    .locals 3

    .prologue
    .line 1989
    iget-object v0, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    .line 1990
    iget-object v0, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g;

    .line 1991
    if-nez v0, :cond_0

    .line 1992
    iget-object v0, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 1993
    :cond_0
    iget-object v2, v0, Landroid/support/v7/media/g;->c:Landroid/content/Context;

    if-ne v2, p1, :cond_2

    .line 1999
    :goto_1
    return-object v0

    .line 1997
    :cond_1
    new-instance v0, Landroid/support/v7/media/g;

    invoke-direct {v0, p1}, Landroid/support/v7/media/g;-><init>(Landroid/content/Context;)V

    .line 1998
    iget-object v1, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1982
    new-instance v0, Landroid/support/v7/media/m;

    iget-object v1, p0, Landroid/support/v7/media/g$d;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/support/v7/media/m;-><init>(Landroid/content/Context;Landroid/support/v7/media/m$a;)V

    iput-object v0, p0, Landroid/support/v7/media/g$d;->o:Landroid/support/v7/media/m;

    .line 1984
    iget-object v0, p0, Landroid/support/v7/media/g$d;->o:Landroid/support/v7/media/m;

    invoke-virtual {v0}, Landroid/support/v7/media/m;->a()V

    .line 1985
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2

    .prologue
    .line 2649
    iput-object p1, p0, Landroid/support/v7/media/g$d;->v:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 2651
    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v7/media/g$d$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/g$d$b;-><init>(Landroid/support/v7/media/g$d;Landroid/support/v4/media/session/MediaSessionCompat;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$d$b;)V

    .line 2665
    :cond_0
    :goto_1
    return-void

    .line 2651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2652
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2653
    iget-object v0, p0, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_3

    .line 2654
    iget-object v0, p0, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/g$d;->b(Ljava/lang/Object;)V

    .line 2655
    iget-object v0, p0, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/g$d;->w:Landroid/support/v4/media/session/MediaSessionCompat$e;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Landroid/support/v4/media/session/MediaSessionCompat$e;)V

    .line 2657
    :cond_3
    iput-object p1, p0, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2658
    if-eqz p1, :cond_0

    .line 2659
    iget-object v0, p0, Landroid/support/v7/media/g$d;->w:Landroid/support/v4/media/session/MediaSessionCompat$e;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/MediaSessionCompat$e;)V

    .line 2660
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2661
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/g$d;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Landroid/support/v7/media/c;)V
    .locals 4

    .prologue
    .line 2203
    invoke-direct {p0, p1}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/c;)I

    move-result v0

    .line 2204
    if-gez v0, :cond_1

    .line 2206
    new-instance v0, Landroid/support/v7/media/g$e;

    invoke-direct {v0, p1}, Landroid/support/v7/media/g$e;-><init>(Landroid/support/v7/media/c;)V

    .line 2207
    iget-object v1, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    sget-boolean v1, Landroid/support/v7/media/g;->a:Z

    if-eqz v1, :cond_0

    .line 2209
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2213
    invoke-virtual {p1}, Landroid/support/v7/media/c;->f()Landroid/support/v7/media/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$e;Landroid/support/v7/media/d;)V

    .line 2215
    iget-object v0, p0, Landroid/support/v7/media/g$d;->l:Landroid/support/v7/media/g$d$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/c$a;)V

    .line 2217
    iget-object v0, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/b;)V

    .line 2219
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/media/c;Landroid/support/v7/media/d;)V
    .locals 2

    .prologue
    .line 2243
    invoke-direct {p0, p1}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/c;)I

    move-result v0

    .line 2244
    if-ltz v0, :cond_0

    .line 2246
    iget-object v1, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$e;

    .line 2247
    invoke-direct {p0, v0, p2}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$e;Landroid/support/v7/media/d;)V

    .line 2249
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/media/g$g;)V
    .locals 1

    .prologue
    .line 2095
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;I)V

    .line 2096
    return-void
.end method

.method public a(Landroid/support/v7/media/g$g;I)V
    .locals 2

    .prologue
    .line 2035
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    if-eqz v0, :cond_1

    .line 2036
    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/c$d;->b(I)V

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    iget-object v0, p0, Landroid/support/v7/media/g$d;->s:Ljava/util/Map;

    invoke-static {p1}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/g$g;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/c$d;

    .line 2039
    if-eqz v0, :cond_0

    .line 2040
    invoke-virtual {v0, p2}, Landroid/support/v7/media/c$d;->b(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2629
    invoke-direct {p0, p1}, Landroid/support/v7/media/g$d;->c(Ljava/lang/Object;)I

    move-result v0

    .line 2630
    if-gez v0, :cond_0

    .line 2631
    new-instance v0, Landroid/support/v7/media/g$d$d;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/g$d$d;-><init>(Landroid/support/v7/media/g$d;Ljava/lang/Object;)V

    .line 2632
    iget-object v1, p0, Landroid/support/v7/media/g$d;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/media/f;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2111
    invoke-virtual {p1}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2134
    :goto_0
    return v0

    .line 2116
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/media/g$d;->n:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 2117
    goto :goto_0

    .line 2121
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 2122
    :goto_1
    if-ge v3, v4, :cond_4

    .line 2123
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2124
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_3

    .line 2125
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->o()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2122
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2128
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 2129
    goto :goto_0

    :cond_4
    move v0, v1

    .line 2134
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Landroid/support/v7/media/g$g;
    .locals 2

    .prologue
    .line 2617
    iget-object v0, p0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/c;)I

    move-result v0

    .line 2618
    if-ltz v0, :cond_0

    .line 2619
    iget-object v1, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$e;

    .line 2620
    invoke-virtual {v0, p1}, Landroid/support/v7/media/g$e;->a(Ljava/lang/String;)I

    move-result v1

    .line 2621
    if-ltz v1, :cond_0

    .line 2622
    invoke-static {v0}, Landroid/support/v7/media/g$e;->b(Landroid/support/v7/media/g$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2625
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2061
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Landroid/support/v7/media/c;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2223
    invoke-direct {p0, p1}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/c;)I

    move-result v1

    .line 2224
    if-ltz v1, :cond_1

    .line 2226
    invoke-virtual {p1, v2}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/c$a;)V

    .line 2228
    invoke-virtual {p1, v2}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/b;)V

    .line 2230
    iget-object v0, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$e;

    .line 2231
    invoke-direct {p0, v0, v2}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$e;Landroid/support/v7/media/d;)V

    .line 2233
    sget-boolean v2, Landroid/support/v7/media/g;->a:Z

    if-eqz v2, :cond_0

    .line 2234
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/g$d;->d:Landroid/support/v7/media/g$d$a;

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/media/g$d$a;->a(ILjava/lang/Object;)V

    .line 2237
    iget-object v0, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2239
    :cond_1
    return-void
.end method

.method public b(Landroid/support/v7/media/g$g;I)V
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Landroid/support/v7/media/g$d;->r:Landroid/support/v7/media/c$d;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/c$d;->c(I)V

    .line 2049
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2637
    invoke-direct {p0, p1}, Landroid/support/v7/media/g$d;->c(Ljava/lang/Object;)I

    move-result v0

    .line 2638
    if-ltz v0, :cond_0

    .line 2639
    iget-object v1, p0, Landroid/support/v7/media/g$d;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$d$d;

    .line 2640
    invoke-virtual {v0}, Landroid/support/v7/media/g$d$d;->b()V

    .line 2642
    :cond_0
    return-void
.end method

.method public c()Landroid/support/v7/media/g$g;
    .locals 2

    .prologue
    .line 2069
    iget-object v0, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    if-nez v0, :cond_0

    .line 2073
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2076
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    return-object v0
.end method

.method public c(Landroid/support/v7/media/g$g;I)V
    .locals 3

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select removed route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :goto_0
    return-void

    .line 2103
    :cond_0
    invoke-static {p1}, Landroid/support/v7/media/g$g;->c(Landroid/support/v7/media/g$g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2104
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select disabled route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2107
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/g$d;->d(Landroid/support/v7/media/g$g;I)V

    goto :goto_0
.end method

.method public d()Landroid/support/v7/media/g$g;
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    if-nez v0, :cond_0

    .line 2088
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2091
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/g$d;->f:Landroid/support/v7/media/g$g;

    return-object v0
.end method

.method public e()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2139
    .line 2141
    new-instance v8, Landroid/support/v7/media/f$a;

    invoke-direct {v8}, Landroid/support/v7/media/f$a;-><init>()V

    .line 2142
    iget-object v0, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v5

    move v4, v5

    :goto_0
    add-int/lit8 v7, v0, -0x1

    if-ltz v7, :cond_5

    .line 2143
    iget-object v0, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g;

    .line 2144
    if-nez v0, :cond_1

    .line 2145
    iget-object v0, p0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    move v0, v7

    .line 2165
    goto :goto_0

    .line 2147
    :cond_1
    iget-object v1, v0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v5

    .line 2148
    :goto_1
    if-ge v6, v9, :cond_0

    .line 2149
    iget-object v1, v0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/g$b;

    .line 2150
    iget-object v10, v1, Landroid/support/v7/media/g$b;->c:Landroid/support/v7/media/f;

    invoke-virtual {v8, v10}, Landroid/support/v7/media/f$a;->a(Landroid/support/v7/media/f;)Landroid/support/v7/media/f$a;

    .line 2151
    iget v10, v1, Landroid/support/v7/media/g$b;->d:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    move v2, v3

    move v4, v3

    .line 2155
    :cond_2
    iget v10, v1, Landroid/support/v7/media/g$b;->d:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_3

    .line 2156
    iget-boolean v10, p0, Landroid/support/v7/media/g$d;->n:Z

    if-nez v10, :cond_3

    move v4, v3

    .line 2160
    :cond_3
    iget v1, v1, Landroid/support/v7/media/g$b;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    move v4, v3

    .line 2148
    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 2166
    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v8}, Landroid/support/v7/media/f$a;->a()Landroid/support/v7/media/f;

    move-result-object v0

    .line 2169
    :goto_2
    iget-object v1, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    .line 2170
    invoke-virtual {v1}, Landroid/support/v7/media/b;->a()Landroid/support/v7/media/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/media/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    .line 2171
    invoke-virtual {v1}, Landroid/support/v7/media/b;->b()Z

    move-result v1

    if-ne v1, v2, :cond_8

    .line 2199
    :cond_6
    return-void

    .line 2166
    :cond_7
    sget-object v0, Landroid/support/v7/media/f;->b:Landroid/support/v7/media/f;

    goto :goto_2

    .line 2174
    :cond_8
    invoke-virtual {v0}, Landroid/support/v7/media/f;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    .line 2176
    iget-object v0, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    if-eqz v0, :cond_6

    .line 2179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    .line 2184
    :goto_3
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_9

    .line 2185
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated discovery request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    iget-boolean v0, p0, Landroid/support/v7/media/g$d;->n:Z

    if-eqz v0, :cond_a

    .line 2188
    const-string v0, "MediaRouter"

    const-string v1, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_a
    iget-object v0, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v5

    .line 2196
    :goto_4
    if-ge v1, v2, :cond_6

    .line 2197
    iget-object v0, p0, Landroid/support/v7/media/g$d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$e;

    invoke-static {v0}, Landroid/support/v7/media/g$e;->a(Landroid/support/v7/media/g$e;)Landroid/support/v7/media/c;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/b;)V

    .line 2196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 2182
    :cond_b
    new-instance v1, Landroid/support/v7/media/b;

    invoke-direct {v1, v0, v2}, Landroid/support/v7/media/b;-><init>(Landroid/support/v7/media/f;Z)V

    iput-object v1, p0, Landroid/support/v7/media/g$d;->t:Landroid/support/v7/media/b;

    goto :goto_3
.end method

.method f()Landroid/support/v7/media/g$g;
    .locals 3

    .prologue
    .line 2534
    iget-object v0, p0, Landroid/support/v7/media/g$d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 2535
    iget-object v2, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    if-eq v0, v2, :cond_0

    .line 2536
    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->b(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2537
    invoke-direct {p0, v0}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2541
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/g$d;->p:Landroid/support/v7/media/g$g;

    goto :goto_0
.end method

.method public g()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Landroid/support/v7/media/g$d;->u:Landroid/support/v7/media/g$d$b;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d$b;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    .line 2683
    :goto_0
    return-object v0

    .line 2680
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/g$d;->v:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 2681
    iget-object v0, p0, Landroid/support/v7/media/g$d;->v:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    goto :goto_0

    .line 2683
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
