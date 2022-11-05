.class public final Lcom/google/android/exoplayer2/c;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/i;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/h;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/h;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;-><init>(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;)V
    .locals 8

    .prologue
    .line 82
    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x1388

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/c;-><init>(Lcom/google/android/exoplayer2/upstream/h;IIJJ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;IIJJ)V
    .locals 10

    .prologue
    .line 102
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/c;-><init>(Lcom/google/android/exoplayer2/upstream/h;IIJJLcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;IIJJLcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/upstream/h;

    .line 127
    int-to-long v0, p2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->b:J

    .line 128
    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->c:J

    .line 129
    mul-long v0, p4, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->d:J

    .line 130
    mul-long v0, p6, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->e:J

    .line 131
    iput-object p8, p0, Lcom/google/android/exoplayer2/c;->f:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 132
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iput v1, p0, Lcom/google/android/exoplayer2/c;->g:I

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->f:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c;->h:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->f:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 199
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c;->h:Z

    .line 200
    if-eqz p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/h;->d()V

    .line 203
    :cond_1
    return-void
.end method

.method private b(J)I
    .locals 3

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c;->c:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;->a(Z)V

    .line 137
    return-void
.end method

.method public a([Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/google/android/exoplayer2/c;->g:I

    .line 143
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 144
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget v1, p0, Lcom/google/android/exoplayer2/c;->g:I

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/j;->a()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/c;->g:I

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget v1, p0, Lcom/google/android/exoplayer2/c;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/h;->a(I)V

    .line 149
    return-void
.end method

.method public a(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/c;->b(J)I

    move-result v3

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/h;->e()I

    move-result v0

    iget v4, p0, Lcom/google/android/exoplayer2/c;->g:I

    if-lt v0, v4, :cond_2

    move v0, v1

    .line 176
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/c;->h:Z

    .line 177
    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    if-ne v3, v1, :cond_3

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/c;->h:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c;->h:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->f:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c;->h:Z

    if-eq v0, v4, :cond_1

    .line 180
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c;->h:Z

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->f:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    .line 186
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c;->h:Z

    return v0

    :cond_2
    move v0, v2

    .line 175
    goto :goto_0

    :cond_3
    move v1, v2

    .line 177
    goto :goto_1

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->f:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    goto :goto_2
.end method

.method public a(JZ)Z
    .locals 5

    .prologue
    .line 168
    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/c;->e:J

    .line 169
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 168
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c;->d:J

    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;->a(Z)V

    .line 154
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;->a(Z)V

    .line 159
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/b;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/upstream/h;

    return-object v0
.end method
