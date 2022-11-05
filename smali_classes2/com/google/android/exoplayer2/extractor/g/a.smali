.class public final Lcom/google/android/exoplayer2/extractor/g/a;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f;
.implements Lcom/google/android/exoplayer2/extractor/m;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/i;


# instance fields
.field private b:Lcom/google/android/exoplayer2/extractor/h;

.field private c:Lcom/google/android/exoplayer2/extractor/n;

.field private d:Lcom/google/android/exoplayer2/extractor/g/b;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/extractor/g/a$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/g/a$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/g/a;->a:Lcom/google/android/exoplayer2/extractor/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    if-nez v0, :cond_1

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/g/c;->a(Lcom/google/android/exoplayer2/extractor/g;)Lcom/google/android/exoplayer2/extractor/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unsupported or unrecognized wav header."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    const-string v1, "audio/raw"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/g/b;->c()I

    move-result v3

    const v4, 0x8000

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/g/b;->e()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    .line 89
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/extractor/g/b;->d()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/g/b;->g()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 87
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->c:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/g/b;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:I

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/g/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/g/c;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/g/b;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->b:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->c:Lcom/google/android/exoplayer2/extractor/n;

    const v1, 0x8000

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v0

    .line 100
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 101
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 105
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:I

    div-int/2addr v1, v2

    .line 106
    if-lez v1, :cond_4

    .line 107
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v4

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/g/b;->b(J)J

    move-result-wide v2

    .line 108
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:I

    mul-int v5, v1, v4

    .line 109
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->c:Lcom/google/android/exoplayer2/extractor/n;

    const/4 v4, 0x1

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 113
    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 71
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->b:Lcom/google/android/exoplayer2/extractor/h;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->c:Lcom/google/android/exoplayer2/extractor/n;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    .line 65
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 66
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/g/c;->a(Lcom/google/android/exoplayer2/extractor/g;)Lcom/google/android/exoplayer2/extractor/g/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/g/b;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:Lcom/google/android/exoplayer2/extractor/g/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/g/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
