.class public final Lcom/google/android/exoplayer2/source/a/h;
.super Ljava/lang/Object;
.source "ChunkedTrackBlacklistUtil.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/b/f;ILjava/lang/Exception;)Z
    .locals 2

    .prologue
    .line 49
    const-wide/32 v0, 0xea60

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/a/h;->a(Lcom/google/android/exoplayer2/b/f;ILjava/lang/Exception;J)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/android/exoplayer2/b/f;ILjava/lang/Exception;J)Z
    .locals 5

    .prologue
    .line 66
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/a/h;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {p0, p1, p3, p4}, Lcom/google/android/exoplayer2/b/f;->a(IJ)Z

    move-result v0

    .line 68
    check-cast p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v1, p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-string v2, "ChunkedTrackBlacklist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blacklisted: duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", format="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/b/f;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return v0

    .line 73
    :cond_0
    const-string v2, "ChunkedTrackBlacklist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blacklisting failed (cannot blacklist last enabled track): responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", format="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/b/f;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Exception;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    instance-of v1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v1, :cond_1

    .line 91
    check-cast p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 92
    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 94
    :cond_1
    return v0
.end method
