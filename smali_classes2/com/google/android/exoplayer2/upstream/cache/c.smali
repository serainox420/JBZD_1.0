.class public final Lcom/google/android/exoplayer2/upstream/cache/c;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/e$a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Lcom/google/android/exoplayer2/upstream/e$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/e$a;

.field private final d:Lcom/google/android/exoplayer2/upstream/d$a;

.field private final e:I

.field private final f:Lcom/google/android/exoplayer2/upstream/cache/b$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/e$a;IJ)V
    .locals 8

    .prologue
    .line 48
    new-instance v3, Lcom/google/android/exoplayer2/upstream/n;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/n;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/a;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/upstream/d$a;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/upstream/d$a;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->c:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 62
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:Lcom/google/android/exoplayer2/upstream/d$a;

    .line 63
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->e:I

    .line 64
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->f:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    .line 65
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/android/exoplayer2/upstream/e;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/c;->b()Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 7

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->c:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 70
    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:Lcom/google/android/exoplayer2/upstream/d$a;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:Lcom/google/android/exoplayer2/upstream/d$a;

    .line 71
    invoke-interface {v4}, Lcom/google/android/exoplayer2/upstream/d$a;->a()Lcom/google/android/exoplayer2/upstream/d;

    move-result-object v4

    :goto_0
    iget v5, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->e:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->f:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/d;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
