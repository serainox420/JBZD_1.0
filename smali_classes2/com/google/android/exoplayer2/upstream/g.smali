.class public final Lcom/google/android/exoplayer2/upstream/g;
.super Ljava/lang/Object;
.source "DataSpec.java"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:[B

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8

    .prologue
    .line 105
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 12

    .prologue
    .line 146
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10

    .prologue
    .line 117
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 164
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 166
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    .line 167
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/g;->b:[B

    .line 168
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/g;->c:J

    .line 169
    iput-wide p5, p0, Lcom/google/android/exoplayer2/upstream/g;->d:J

    .line 170
    iput-wide p7, p0, Lcom/google/android/exoplayer2/upstream/g;->e:J

    .line 171
    iput-object p9, p0, Lcom/google/android/exoplayer2/upstream/g;->f:Ljava/lang/String;

    .line 172
    iput p10, p0, Lcom/google/android/exoplayer2/upstream/g;->g:I

    .line 173
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 165
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/g;->g:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/g;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/g;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/g;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/g;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/g;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
