.class public Lcom/intentsoftware/addapptr/c/a;
.super Ljava/lang/Object;
.source "IDFAcodec.java"


# static fields
.field private static final coder:Ljava/lang/String; = "oNy16IVpCkjG8auTxw0e4Bz53*mcbQlD(OsKi~nrZh9vqU2Ag_fLYJEXHFWR7tSP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode_idfa(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0x400

    new-array v8, v0, [C

    move v0, v1

    move v2, v3

    move v4, v3

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v7, v3

    move v6, v3

    move v5, v4

    .line 14
    :goto_1
    const/4 v4, 0x6

    if-ge v7, v4, :cond_1

    .line 15
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 16
    shl-int v4, v1, v7

    or-int/2addr v4, v6

    .line 17
    :goto_2
    const/16 v6, 0x80

    if-ne v0, v6, :cond_0

    .line 19
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    .line 14
    :goto_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v4

    goto :goto_1

    .line 21
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_3

    .line 23
    :cond_1
    add-int/lit8 v4, v2, 0x1

    const-string v7, "oNy16IVpCkjG8auTxw0e4Bz53*mcbQlD(OsKi~nrZh9vqU2Ag_fLYJEXHFWR7tSP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v8, v2

    move v2, v4

    move v4, v5

    goto :goto_0

    .line 25
    :cond_2
    aput-char v3, v8, v2

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    return-object v0

    :cond_3
    move v4, v6

    goto :goto_2
.end method
