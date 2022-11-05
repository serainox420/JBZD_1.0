.class public abstract Lcom/google/android/exoplayer2/a;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/j;
.implements Lcom/google/android/exoplayer2/k;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/exoplayer2/l;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/exoplayer2/source/i;

.field private f:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->g:Z

    .line 46
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/a;->a:I

    return v0
.end method

.method protected final a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I
    .locals 6

    .prologue
    const/4 v0, -0x4

    .line 282
    iget-object v1, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/source/i;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/i;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I

    move-result v1

    .line 283
    if-ne v1, v0, :cond_3

    .line 284
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a/e;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a;->g:Z

    .line 286
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/a;->h:Z

    if-eqz v1, :cond_0

    .line 296
    :goto_0
    return v0

    .line 286
    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    .line 288
    :cond_1
    iget-wide v2, p2, Lcom/google/android/exoplayer2/a/e;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/a;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/a/e;->c:J

    :cond_2
    :goto_1
    move v0, v1

    .line 296
    goto :goto_0

    .line 289
    :cond_3
    const/4 v0, -0x5

    if-ne v1, v0, :cond_2

    .line 290
    iget-object v0, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    .line 291
    iget-wide v2, v0, Lcom/google/android/exoplayer2/Format;->v:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 292
    iget-wide v2, v0, Lcom/google/android/exoplayer2/Format;->v:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/a;->f:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->a(J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 293
    iput-object v0, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/google/android/exoplayer2/a;->c:I

    .line 61
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->h:Z

    .line 130
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->g:Z

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/a;->a(JZ)V

    .line 132
    return-void
.end method

.method protected a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/l;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/i;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 77
    iget v0, p0, Lcom/google/android/exoplayer2/a;->d:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/a;->b:Lcom/google/android/exoplayer2/l;

    .line 79
    iput v1, p0, Lcom/google/android/exoplayer2/a;->d:I

    .line 80
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/a;->a(Z)V

    .line 81
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/exoplayer2/a;->a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/i;J)V

    .line 82
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/a;->a(JZ)V

    .line 83
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method protected a([Lcom/google/android/exoplayer2/Format;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 190
    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/i;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/source/i;

    .line 97
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a;->g:Z

    .line 98
    iput-wide p3, p0, Lcom/google/android/exoplayer2/a;->f:J

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->a([Lcom/google/android/exoplayer2/Format;)V

    .line 100
    return-void

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public final b()Lcom/google/android/exoplayer2/k;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method protected b(J)V
    .locals 5

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/source/i;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a;->f:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/i;->a_(J)V

    .line 315
    return-void
.end method

.method public c()Lcom/google/android/exoplayer2/util/h;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/exoplayer2/a;->d:I

    return v0
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 87
    iget v1, p0, Lcom/google/android/exoplayer2/a;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/a;->d:I

    .line 89
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->n()V

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/exoplayer2/source/i;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/source/i;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->g:Z

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a;->h:Z

    .line 115
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->h:Z

    return v0
.end method

.method public final j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/source/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/i;->b()V

    .line 125
    return-void
.end method

.method public final k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 136
    iget v0, p0, Lcom/google/android/exoplayer2/a;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 137
    iput v1, p0, Lcom/google/android/exoplayer2/a;->d:I

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->o()V

    .line 139
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    iget v2, p0, Lcom/google/android/exoplayer2/a;->d:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 144
    iput v1, p0, Lcom/google/android/exoplayer2/a;->d:I

    .line 145
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a;->p()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/source/i;

    .line 147
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a;->h:Z

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected n()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method protected o()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method protected final q()Lcom/google/android/exoplayer2/l;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->b:Lcom/google/android/exoplayer2/l;

    return-object v0
.end method

.method protected final r()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/google/android/exoplayer2/a;->c:I

    return v0
.end method

.method protected final s()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->h:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->e:Lcom/google/android/exoplayer2/source/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/i;->a()Z

    move-result v0

    goto :goto_0
.end method
