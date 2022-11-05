.class Lcom/google/android/exoplayer2/extractor/d/b$a;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/d/f;
.implements Lcom/google/android/exoplayer2/extractor/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/d/b;

.field private b:[J

.field private c:[J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/d/b;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->a:Lcom/google/android/exoplayer2/extractor/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->d:J

    .line 137
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->e:J

    .line 138
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->a:Lcom/google/android/exoplayer2/extractor/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d/b;->b(J)J

    move-result-wide v0

    .line 178
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->b:[J

    invoke-static {v2, v0, v1, v3, v3}, Lcom/google/android/exoplayer2/util/v;->a([JJZZ)I

    move-result v2

    .line 179
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->b:[J

    aget-wide v2, v3, v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->e:J

    .line 180
    return-wide v0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 167
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 168
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->e:J

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 169
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->e:J

    .line 172
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 6

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 154
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->j()I

    move-result v0

    .line 155
    div-int/lit8 v1, v0, 0x12

    .line 156
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->b:[J

    .line 157
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->c:[J

    .line 158
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->b:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->c:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 161
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->a:Lcom/google/android/exoplayer2/extractor/d/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/d/b;->a(Lcom/google/android/exoplayer2/extractor/d/b;)Lcom/google/android/exoplayer2/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/f;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->a:Lcom/google/android/exoplayer2/extractor/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d/b;->b(J)J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->b:[J

    invoke-static {v2, v0, v1, v3, v3}, Lcom/google/android/exoplayer2/util/v;->a([JJZZ)I

    move-result v0

    .line 197
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->d:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->c:[J

    aget-wide v0, v1, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()Lcom/google/android/exoplayer2/extractor/m;
    .locals 0

    .prologue
    .line 185
    return-object p0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/d/b$a;->d:J

    .line 142
    return-void
.end method
