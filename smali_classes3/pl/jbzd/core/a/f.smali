.class public Lpl/jbzd/core/a/f;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0x5265c00

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 23
    const-string v0, "Przed chwil\u0105"

    .line 41
    :goto_0
    return-object v0

    .line 25
    :cond_0
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sek. temu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_1
    cmp-long v2, v0, v8

    if-gez v2, :cond_2

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min. temu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_2
    cmp-long v2, v0, v6

    if-gez v2, :cond_3

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v8

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " godz. temu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_3
    const-wide v2, 0x757b12c00L

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, v0, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long/2addr v0, v6

    long-to-int v0, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dzie\u0144"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "dni"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "dni"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lpl/jbzd/core/a/e;->a(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " temu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 38
    :cond_4
    const-string v0, "Ponad rok temu"

    goto/16 :goto_0
.end method
