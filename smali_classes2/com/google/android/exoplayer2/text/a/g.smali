.class public final Lcom/google/android/exoplayer2/text/a/g;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# direct methods
.method private static a(Lcom/google/android/exoplayer2/util/l;)I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const/4 v0, -0x1

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    .line 95
    add-int/2addr v0, v1

    .line 96
    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public static a(JLcom/google/android/exoplayer2/util/l;[Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 46
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 47
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/a/g;->a(Lcom/google/android/exoplayer2/util/l;)I

    move-result v0

    .line 48
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/a/g;->a(Lcom/google/android/exoplayer2/util/l;)I

    move-result v8

    .line 50
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    if-le v8, v1, :cond_1

    .line 52
    :cond_0
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v0, v8, p2}, Lcom/google/android/exoplayer2/text/a/g;->a(IILcom/google/android/exoplayer2/util/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 59
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    and-int/lit8 v9, v0, 0x1f

    .line 61
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 64
    mul-int/lit8 v5, v9, 0x3

    .line 65
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v10

    .line 66
    array-length v11, p3

    move v0, v6

    :goto_1
    if-ge v0, v11, :cond_2

    aget-object v1, p3, v0

    .line 67
    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 68
    invoke-interface {v1, p2, v5}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 69
    const/4 v7, 0x0

    move-wide v2, p0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_2
    mul-int/lit8 v0, v9, 0x3

    add-int/lit8 v0, v0, 0xa

    sub-int v0, v8, v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p2, v8}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_0

    .line 77
    :cond_4
    return-void
.end method

.method private static a(IILcom/google/android/exoplayer2/util/l;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 112
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v1

    .line 116
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    .line 117
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v3

    .line 118
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    .line 119
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    .line 120
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 121
    const/16 v1, 0xb5

    if-ne v2, v1, :cond_0

    const/16 v1, 0x31

    if-ne v3, v1, :cond_0

    const v1, 0x47413934

    if-ne v4, v1, :cond_0

    const/4 v1, 0x3

    if-ne v5, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
