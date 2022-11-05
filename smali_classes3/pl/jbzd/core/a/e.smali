.class public final Lpl/jbzd/core/a/e;
.super Ljava/lang/Object;
.source "StringHelper.java"


# direct methods
.method public static a(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 16
    if-ltz p0, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 17
    :cond_0
    const-string v0, "error"

    .line 32
    :goto_0
    return-object v0

    .line 20
    :cond_1
    const-string v0, ""

    .line 22
    if-ne p0, v2, :cond_2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_0

    .line 25
    :cond_2
    rem-int/lit8 v0, p0, 0xa

    .line 26
    rem-int/lit8 v1, p0, 0x64

    .line 28
    if-le v0, v2, :cond_4

    if-ge v0, v3, :cond_4

    if-lt v1, v3, :cond_3

    const/16 v0, 0x15

    if-le v1, v0, :cond_4

    :cond_3
    aget-object v0, p1, v2

    goto :goto_0

    .line 29
    :cond_4
    const/4 v0, 0x2

    aget-object v0, p1, v0

    goto :goto_0
.end method
