.class public final Lcom/google/android/exoplayer2/source/e;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/g;
.implements Lcom/google/android/exoplayer2/source/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/upstream/e$a;

.field private final c:Lcom/google/android/exoplayer2/extractor/i;

.field private final d:I

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/exoplayer2/source/e$a;

.field private final g:Lcom/google/android/exoplayer2/n$a;

.field private final h:Ljava/lang/String;

.field private i:Lcom/google/android/exoplayer2/source/g$a;

.field private j:Lcom/google/android/exoplayer2/n;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/extractor/i;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/e$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->a:Landroid/net/Uri;

    .line 137
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/e;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 138
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/e;->c:Lcom/google/android/exoplayer2/extractor/i;

    .line 139
    iput p4, p0, Lcom/google/android/exoplayer2/source/e;->d:I

    .line 140
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/e;->e:Landroid/os/Handler;

    .line 141
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/e;->f:Lcom/google/android/exoplayer2/source/e$a;

    .line 142
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/e;->h:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/google/android/exoplayer2/n$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Lcom/google/android/exoplayer2/n$a;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/extractor/i;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/e$a;)V
    .locals 8

    .prologue
    .line 99
    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/e;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/extractor/i;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/e$a;Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/f;
    .locals 10

    .prologue
    .line 160
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 161
    new-instance v0, Lcom/google/android/exoplayer2/source/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/e;->b:Lcom/google/android/exoplayer2/upstream/e$a;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/e;->c:Lcom/google/android/exoplayer2/extractor/i;

    .line 162
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/i;->a()[Lcom/google/android/exoplayer2/extractor/f;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/source/e;->d:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/e;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/e;->f:Lcom/google/android/exoplayer2/source/e$a;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/e;->h:Ljava/lang/String;

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/d;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e;[Lcom/google/android/exoplayer2/extractor/f;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/e$a;Lcom/google/android/exoplayer2/source/g$a;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;)V

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V
    .locals 4

    .prologue
    .line 148
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/e;->i:Lcom/google/android/exoplayer2/source/g$a;

    .line 149
    new-instance v0, Lcom/google/android/exoplayer2/source/k;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/k;-><init>(JZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/e;->j:Lcom/google/android/exoplayer2/n;

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->j:Lcom/google/android/exoplayer2/n;

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e;->g:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$a;)Lcom/google/android/exoplayer2/n$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n$a;->a()J

    move-result-wide v2

    .line 181
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 182
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/e;->k:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->j:Lcom/google/android/exoplayer2/n;

    .line 187
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/e;->k:Z

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->i:Lcom/google/android/exoplayer2/source/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e;->j:Lcom/google/android/exoplayer2/n;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/f;)V
    .locals 0

    .prologue
    .line 168
    check-cast p1, Lcom/google/android/exoplayer2/source/d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/d;->b()V

    .line 169
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/e;->i:Lcom/google/android/exoplayer2/source/g$a;

    .line 174
    return-void
.end method
