.class public Lcom/openx/model/Offset;
.super Ljava/lang/Object;
.source "Offset.java"


# static fields
.field private static final skipFormat:Ljava/lang/String; = "HH:mm:ss.SSS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineTimeOffset(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 18
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 31
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    .line 32
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 33
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 34
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 36
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 40
    :goto_1
    return v0

    .line 20
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static end()I
    .locals 1

    .prologue
    .line 137
    const v0, -0x7ffffffe

    return v0
.end method

.method public static firstQuartile()I
    .locals 1

    .prologue
    .line 155
    const v0, -0x7ffffffd

    return v0
.end method

.method public static invalid()I
    .locals 1

    .prologue
    .line 203
    const v0, -0x7ffe7961

    return v0
.end method

.method public static midpoint()I
    .locals 1

    .prologue
    .line 173
    const v0, -0x7ffffffc

    return v0
.end method

.method public static percentage(I)I
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 85
    if-lez p0, :cond_0

    if-ge p0, v0, :cond_0

    .line 88
    neg-int v0, p0

    .line 101
    :goto_0
    return v0

    .line 91
    :cond_0
    if-gtz p0, :cond_1

    .line 93
    invoke-static {}, Lcom/openx/model/Offset;->start()I

    move-result v0

    goto :goto_0

    .line 96
    :cond_1
    if-lt p0, v0, :cond_2

    .line 98
    invoke-static {}, Lcom/openx/model/Offset;->end()I

    move-result v0

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {}, Lcom/openx/model/Offset;->invalid()I

    move-result v0

    goto :goto_0
.end method

.method public static start()I
    .locals 1

    .prologue
    .line 119
    const/high16 v0, -0x80000000

    return v0
.end method

.method public static thirdQuartile()I
    .locals 1

    .prologue
    .line 191
    const v0, -0x7ffffffb

    return v0
.end method

.method public static time(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 60
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00:00:00.000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/openx/model/Offset;->start()I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/openx/model/Offset;->determineTimeOffset(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method
