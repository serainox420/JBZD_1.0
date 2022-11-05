.class final Lcom/google/android/exoplayer2/source/h;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/f;
.implements Lcom/google/android/exoplayer2/source/f$a;


# instance fields
.field public final a:[Lcom/google/android/exoplayer2/source/f;

.field private final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/exoplayer2/source/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/exoplayer2/source/f$a;

.field private d:I

.field private e:Lcom/google/android/exoplayer2/source/m;

.field private f:[Lcom/google/android/exoplayer2/source/f;

.field private g:Lcom/google/android/exoplayer2/source/j;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/f;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    .line 43
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/h;->b:Ljava/util/IdentityHashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZJ)J
    .locals 17

    .prologue
    .line 71
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v12, v2, [I

    .line 72
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v13, v2, [I

    .line 73
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v3, v2, :cond_3

    .line 74
    aget-object v2, p3, v3

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 75
    :goto_1
    aput v2, v12, v3

    .line 76
    const/4 v2, -0x1

    aput v2, v13, v3

    .line 77
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 78
    aget-object v2, p1, v3

    invoke-interface {v2}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v4

    .line 79
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/f;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 81
    aput v2, v13, v3

    .line 73
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/h;->b:Ljava/util/IdentityHashMap;

    aget-object v4, p3, v3

    .line 75
    invoke-virtual {v2, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 79
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 87
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/h;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    .line 89
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v14, v2, [Lcom/google/android/exoplayer2/source/i;

    .line 90
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v6, v2, [Lcom/google/android/exoplayer2/source/i;

    .line 91
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v4, v2, [Lcom/google/android/exoplayer2/b/f;

    .line 92
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v2, v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    const/4 v2, 0x0

    move-wide/from16 v8, p5

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v3, v3

    if-ge v2, v3, :cond_f

    .line 94
    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v3, v5, :cond_6

    .line 95
    aget v5, v12, v3

    if-ne v5, v2, :cond_4

    aget-object v5, p3, v3

    :goto_5
    aput-object v5, v6, v3

    .line 96
    aget v5, v13, v3

    if-ne v5, v2, :cond_5

    aget-object v5, p1, v3

    :goto_6
    aput-object v5, v4, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 95
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 96
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 98
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    aget-object v3, v3, v2

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/f;->a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZJ)J

    move-result-wide v10

    .line 100
    if-nez v2, :cond_9

    move-wide v8, v10

    .line 105
    :cond_7
    const/4 v5, 0x0

    .line 106
    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v7, v0

    if-ge v3, v7, :cond_d

    .line 107
    aget v7, v13, v3

    if-ne v7, v2, :cond_b

    .line 109
    aget-object v5, v6, v3

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 110
    aget-object v5, v6, v3

    aput-object v5, v14, v3

    .line 111
    const/4 v5, 0x1

    .line 112
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/h;->b:Ljava/util/IdentityHashMap;

    aget-object v10, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_8
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 102
    :cond_9
    cmp-long v3, v10, v8

    if-eqz v3, :cond_7

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Children enabled at different positions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_a
    const/4 v5, 0x0

    goto :goto_8

    .line 113
    :cond_b
    aget v7, v12, v3

    if-ne v7, v2, :cond_8

    .line 115
    aget-object v7, v6, v3

    if-nez v7, :cond_c

    const/4 v7, 0x1

    :goto_a
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    goto :goto_a

    .line 118
    :cond_d
    if-eqz v5, :cond_e

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    aget-object v3, v3, v2

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 123
    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v14

    move-object/from16 v0, p3

    invoke-static {v14, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/f;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    new-instance v2, Lcom/google/android/exoplayer2/source/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/b;-><init>([Lcom/google/android/exoplayer2/source/j;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/h;->g:Lcom/google/android/exoplayer2/source/j;

    .line 128
    return-wide v8
.end method

.method public a(Lcom/google/android/exoplayer2/source/f$a;)V
    .locals 4

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->c:Lcom/google/android/exoplayer2/source/f$a;

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/h;->d:I

    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 51
    invoke-interface {v3, p0}, Lcom/google/android/exoplayer2/source/f;->a(Lcom/google/android/exoplayer2/source/f$a;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/f;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/source/h;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/h;->d:I

    if-lez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 202
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/f;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/source/m;->b:I

    add-int/2addr v2, v5

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    new-array v5, v2, [Lcom/google/android/exoplayer2/source/l;

    .line 206
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v7, v6

    move v4, v1

    move v0, v1

    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v2, v6, v4

    .line 207
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/f;->d()Lcom/google/android/exoplayer2/source/m;

    move-result-object v8

    .line 208
    iget v9, v8, Lcom/google/android/exoplayer2/source/m;->b:I

    move v2, v0

    move v0, v1

    .line 209
    :goto_3
    if-ge v0, v9, :cond_2

    .line 210
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v10

    aput-object v10, v5, v2

    .line 209
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    .line 206
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_2

    .line 213
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/m;-><init>([Lcom/google/android/exoplayer2/source/l;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/m;

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->c:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/f;)V

    goto :goto_0
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/j;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/exoplayer2/source/f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/h;->b(Lcom/google/android/exoplayer2/source/f;)V

    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->g:Lcom/google/android/exoplayer2/source/j;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/j;->a(J)Z

    move-result v0

    return v0
.end method

.method public b(J)V
    .locals 5

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 134
    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/f;->b(J)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/f;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/m;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->c:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    goto :goto_0
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->g:Lcom/google/android/exoplayer2/source/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/j;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)J
    .locals 7

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/f;->c(J)J

    move-result-wide v2

    .line 185
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/source/f;->c(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-wide v2
.end method

.method public c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 58
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/f;->c()V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/source/m;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/m;

    return-object v0
.end method

.method public e()J
    .locals 8

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/f;->e()J

    move-result-wide v2

    .line 152
    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/f;->e()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    .line 159
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 160
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_2

    .line 161
    invoke-interface {v6, v2, v3}, Lcom/google/android/exoplayer2/source/f;->c(J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_3
    return-wide v2
.end method

.method public f()J
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 171
    .line 172
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/h;->f:[Lcom/google/android/exoplayer2/source/f;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 173
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/f;->f()J

    move-result-wide v10

    .line 174
    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    .line 175
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 172
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method
