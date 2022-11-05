.class public final Lcom/google/android/exoplayer2/upstream/h;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/b;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:[Lcom/google/android/exoplayer2/upstream/a;

.field private e:I

.field private f:I

.field private g:I

.field private h:[Lcom/google/android/exoplayer2/upstream/a;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/h;-><init>(ZII)V

    .line 48
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 63
    if-ltz p3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 64
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/h;->a:Z

    .line 65
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/h;->b:I

    .line 66
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    .line 67
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    .line 68
    if-lez p3, :cond_2

    .line 69
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->c:[B

    .line 70
    :goto_2
    if-ge v2, p3, :cond_3

    .line 71
    mul-int v0, v2, p2

    .line 72
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/h;->c:[B

    invoke-direct {v4, v5, v0}, Lcom/google/android/exoplayer2/upstream/a;-><init>([BI)V

    aput-object v4, v3, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    :cond_1
    move v0, v2

    .line 63
    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->c:[B

    .line 77
    :cond_3
    new-array v0, v1, [Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->d:[Lcom/google/android/exoplayer2/upstream/a;

    .line 78
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/android/exoplayer2/upstream/a;
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/h;->f:I

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    if-lez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    aget-object v0, v0, v1

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/a;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/h;->b:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/a;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->e:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    .line 88
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/h;->e:I

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 2

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->d:[Lcom/google/android/exoplayer2/upstream/a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->d:[Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/h;->a([Lcom/google/android/exoplayer2/upstream/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 115
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    array-length v2, p1

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    array-length v4, p1

    add-int/2addr v3, v4

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 116
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    .line 119
    :cond_0
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    .line 121
    iget-object v0, v4, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/h;->c:[B

    if-eq v0, v5, :cond_1

    iget-object v0, v4, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    array-length v0, v0

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/h;->b:I

    if-ne v0, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    aput-object v4, v0, v5

    .line 119
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 121
    goto :goto_1

    .line 125
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->f:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/h;->f:I

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 132
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->e:I

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/h;->b:I

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/v;->a(II)I

    move-result v0

    .line 133
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/h;->f:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h;->c:[B

    if-eqz v0, :cond_5

    .line 144
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    add-int/lit8 v0, v0, -0x1

    .line 145
    :goto_1
    if-gt v1, v0, :cond_4

    .line 146
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    aget-object v4, v2, v1

    .line 147
    iget-object v2, v4, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/h;->c:[B

    if-ne v2, v5, :cond_2

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    aget-object v5, v2, v0

    .line 151
    iget-object v2, v5, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/h;->c:[B

    if-eq v2, v6, :cond_3

    .line 152
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 154
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v6, v1

    .line 155
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    add-int/lit8 v1, v0, -0x1

    aput-object v4, v5, v0

    move v0, v1

    move v1, v2

    goto :goto_1

    .line 160
    :cond_4
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    if-ge v0, v1, :cond_0

    .line 168
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/h;->h:[Lcom/google/android/exoplayer2/upstream/a;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 169
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/h;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method public c()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->b:I

    return v0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/h;->a:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/h;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/h;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
