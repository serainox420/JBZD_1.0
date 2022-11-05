.class public final Lcom/google/android/exoplayer2/source/b/h;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/b/a/e$c;
.implements Lcom/google/android/exoplayer2/source/g;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/source/b/d;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/source/a$a;

.field private e:Lcom/google/android/exoplayer2/source/b/a/e;

.field private f:Lcom/google/android/exoplayer2/source/g$a;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/b/d;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/h;->a:Landroid/net/Uri;

    .line 71
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/h;->b:Lcom/google/android/exoplayer2/source/b/d;

    .line 72
    iput p3, p0, Lcom/google/android/exoplayer2/source/b/h;->c:I

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/source/a$a;

    invoke-direct {v0, p4, p5}, Lcom/google/android/exoplayer2/source/a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->d:Lcom/google/android/exoplayer2/source/a$a;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 6

    .prologue
    .line 63
    new-instance v2, Lcom/google/android/exoplayer2/source/b/b;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/b/b;-><init>(Lcom/google/android/exoplayer2/upstream/e$a;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/b/h;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/b/d;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
    .locals 6

    .prologue
    .line 56
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/b/h;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 58
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/f;
    .locals 9

    .prologue
    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/source/b/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/h;->b:Lcom/google/android/exoplayer2/source/b/d;

    iget v3, p0, Lcom/google/android/exoplayer2/source/b/h;->c:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/h;->d:Lcom/google/android/exoplayer2/source/a$a;

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/b/g;-><init>(Lcom/google/android/exoplayer2/source/b/a/e;Lcom/google/android/exoplayer2/source/b/d;ILcom/google/android/exoplayer2/source/a$a;Lcom/google/android/exoplayer2/upstream/b;J)V

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e;->d()V

    .line 88
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/source/b/a/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/h;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/h;->b:Lcom/google/android/exoplayer2/source/b/d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/h;->d:Lcom/google/android/exoplayer2/source/a$a;

    iget v4, p0, Lcom/google/android/exoplayer2/source/b/h;->c:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/b/a/e;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/b/d;Lcom/google/android/exoplayer2/source/a$a;ILcom/google/android/exoplayer2/source/b/a/e$c;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    .line 81
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/b/h;->f:Lcom/google/android/exoplayer2/source/g$a;

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e;->a()V

    .line 83
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/b;)V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 114
    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/b/a/b;->b:J

    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/b/a/e;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    add-long/2addr v2, v6

    .line 118
    :goto_0
    iget-object v6, p1, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    .line 119
    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 120
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v0, v4

    :goto_1
    move-wide v8, v0

    .line 123
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-nez v0, :cond_1

    move v11, v10

    :cond_1
    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/k;-><init>(JJJJZZ)V

    .line 132
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->f:Lcom/google/android/exoplayer2/source/g$a;

    new-instance v2, Lcom/google/android/exoplayer2/source/b/e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    .line 133
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/b/a/e;->b()Lcom/google/android/exoplayer2/source/b/a/a;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplayer2/source/b/e;-><init>(Lcom/google/android/exoplayer2/source/b/a/a;Lcom/google/android/exoplayer2/source/b/a/b;)V

    .line 132
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    .line 134
    return-void

    :cond_2
    move-wide v2, v0

    .line 116
    goto :goto_0

    .line 121
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/a/b$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/a/b$a;->d:J

    goto :goto_1

    .line 126
    :cond_4
    cmp-long v0, v8, v0

    if-nez v0, :cond_5

    move-wide v8, v4

    .line 129
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/k;-><init>(JJJJZZ)V

    goto :goto_2
.end method

.method public a(Lcom/google/android/exoplayer2/source/f;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/exoplayer2/source/b/g;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/b/g;->b()V

    .line 100
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/a/e;->c()V

    .line 106
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/h;->e:Lcom/google/android/exoplayer2/source/b/a/e;

    .line 108
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/h;->f:Lcom/google/android/exoplayer2/source/g$a;

    .line 109
    return-void
.end method
