.class public final Lcom/google/android/exoplayer2/extractor/f/q;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/u;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/f/p;

.field private final b:Lcom/google/android/exoplayer2/util/l;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/p;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/q;->a:Lcom/google/android/exoplayer2/extractor/f/p;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->f:Z

    .line 57
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;Z)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    .line 62
    if-eqz p2, :cond_8

    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v4

    add-int/2addr v0, v4

    .line 67
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->f:Z

    if-eqz v4, :cond_2

    .line 68
    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_1
    return-void

    .line 71
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/f/q;->f:Z

    .line 72
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 73
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    .line 76
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    if-ge v0, v8, :cond_5

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    if-nez v0, :cond_3

    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 83
    const/16 v4, 0xff

    if-ne v0, v4, :cond_3

    .line 85
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/q;->f:Z

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 90
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    invoke-virtual {p1, v4, v5, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 91
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    .line 92
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    if-ne v0, v8, :cond_2

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v4

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    .line 97
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->e:Z

    .line 98
    and-int/lit8 v0, v4, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->e()I

    move-result v0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    if-ge v0, v4, :cond_2

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 103
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    const/16 v5, 0x1002

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x2

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 103
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 105
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v0, v3, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    :cond_4
    move v0, v3

    .line 97
    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    invoke-virtual {p1, v4, v5, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 112
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    if-ne v0, v4, :cond_2

    .line 114
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->e:Z

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    invoke-static {v0, v3, v4, v1}, Lcom/google/android/exoplayer2/util/v;->a([BIII)I

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/q;->f:Z

    goto/16 :goto_1

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 126
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->a:Lcom/google/android/exoplayer2/extractor/f/p;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/extractor/f/p;->a(Lcom/google/android/exoplayer2/util/l;)V

    .line 127
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/f/q;->d:I

    goto/16 :goto_2

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->b:Lcom/google/android/exoplayer2/util/l;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/q;->c:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->a:Lcom/google/android/exoplayer2/extractor/f/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/p;->a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/q;->f:Z

    .line 52
    return-void
.end method
