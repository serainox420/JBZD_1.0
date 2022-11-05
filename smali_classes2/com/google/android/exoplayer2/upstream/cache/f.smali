.class final Lcom/google/android/exoplayer2/upstream/cache/f;
.super Ljava/lang/Object;
.source "CachedContent.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field private final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->a:I

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    .line 68
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->d:J

    .line 69
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/f;-><init>(ILjava/lang/String;J)V

    .line 56
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->d:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->d:J

    .line 92
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/cache/j;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 82
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/cache/e;)Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 7

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/j;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/j;

    .line 111
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/j;->b:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/j;->c:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/j;

    .line 115
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/j;->b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/j;->b:J

    sub-long/2addr v2, p1

    .line 116
    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/j;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/cache/j;)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 166
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(I)Lcom/google/android/exoplayer2/upstream/cache/j;

    move-result-object v0

    .line 168
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/j;->e:Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/cache/j;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renaming of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/j;->e:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/j;->e:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 174
    return-object v0
.end method

.method public b()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 6

    .prologue
    .line 193
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->a:I

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->d:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/f;->d:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 196
    return v0
.end method
