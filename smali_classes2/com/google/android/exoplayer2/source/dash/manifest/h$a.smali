.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/h$a;
.super Lcom/google/android/exoplayer2/source/dash/manifest/h;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field final d:I

.field final e:J

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/h;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJ)V

    .line 123
    iput p6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->d:I

    .line 124
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->e:J

    .line 125
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->f:Ljava/util/List;

    .line 126
    return-void
.end method


# virtual methods
.method public abstract a(J)I
.end method

.method public a(JJ)I
    .locals 9

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->b()I

    move-result v0

    .line 133
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(J)I

    move-result v2

    .line 134
    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->f:Ljava/util/List;

    if-nez v1, :cond_3

    .line 139
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->e:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->b:J

    div-long/2addr v4, v6

    .line 140
    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->d:I

    div-long v4, p1, v4

    long-to-int v3, v4

    add-int/2addr v1, v3

    .line 142
    if-lt v1, v0, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 144
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 148
    :cond_3
    add-int v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    .line 149
    :goto_1
    if-gt v2, v1, :cond_6

    .line 150
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 151
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(I)J

    move-result-wide v4

    .line 152
    cmp-long v6, v4, p1

    if-gez v6, :cond_4

    .line 153
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 154
    :cond_4
    cmp-long v1, v4, p1

    if-lez v1, :cond_5

    .line 155
    add-int/lit8 v1, v3, -0x1

    goto :goto_1

    :cond_5
    move v0, v3

    .line 157
    goto :goto_0

    .line 160
    :cond_6
    if-ne v2, v0, :cond_7

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method public final a(I)J
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->d:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;->a:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->c:J

    sub-long/2addr v0, v2

    .line 191
    :goto_0
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->b:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 189
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->d:I

    sub-int v0, p1, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->e:J

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public final a(IJ)J
    .locals 4

    .prologue
    const-wide/32 v2, 0xf4240

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->d:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$d;->b:J

    .line 170
    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->b:J

    div-long/2addr v0, v2

    .line 175
    :goto_0
    return-wide v0

    .line 172
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(J)I

    move-result v0

    .line 173
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->b()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->e:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->b:J

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public abstract a(Lcom/google/android/exoplayer2/source/dash/manifest/f;I)Lcom/google/android/exoplayer2/source/dash/manifest/e;
.end method

.method public b()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->d:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
