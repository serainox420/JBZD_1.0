.class public final Lcom/google/android/exoplayer2/source/dash/manifest/j;
.super Ljava/lang/Object;
.source "UrlTemplate.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[I

.field private final c:[Ljava/lang/String;

.field private final d:I


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->a:[Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->b:[I

    .line 68
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->c:[Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->d:I

    .line 70
    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 118
    const-string v0, ""

    aput-object v0, p1, v1

    move v0, v1

    move v2, v1

    .line 121
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 122
    const-string v3, "$"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 123
    if-ne v3, v4, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 126
    :cond_0
    if-eq v3, v2, :cond_1

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    move v2, v3

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    const-string v3, "$$"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    .line 131
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 133
    :cond_2
    const-string v3, "$"

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 134
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v2, "RepresentationID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    aput v5, p2, v0

    .line 162
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 163
    const-string v2, ""

    aput-object v2, p1, v0

    .line 164
    add-int/lit8 v2, v7, 0x1

    goto/16 :goto_0

    .line 138
    :cond_3
    const-string v2, "%0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 139
    const-string v2, "%01d"

    .line 140
    if-eq v8, v4, :cond_5

    .line 141
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v9, "d"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "d"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_4
    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_6
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :sswitch_0
    const-string v8, "Number"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_2

    :sswitch_1
    const-string v8, "Bandwidth"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_2

    :sswitch_2
    const-string v8, "Time"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_2

    .line 149
    :pswitch_0
    aput v6, p2, v0

    .line 160
    :goto_3
    aput-object v2, p3, v0

    goto :goto_1

    .line 152
    :pswitch_1
    const/4 v3, 0x3

    aput v3, p2, v0

    goto :goto_3

    .line 155
    :pswitch_2
    const/4 v3, 0x4

    aput v3, p2, v0

    goto :goto_3

    .line 167
    :cond_7
    return v0

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_0
        0x27c6ed -> :sswitch_2
        0x246e091 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/j;
    .locals 5

    .prologue
    const/4 v2, 0x4

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    new-array v1, v2, [I

    .line 56
    new-array v2, v2, [Ljava/lang/String;

    .line 57
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/j;->a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result v3

    .line 58
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/manifest/j;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/j;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v4
.end method


# virtual methods
.method public a(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 85
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->d:I

    if-ge v0, v3, :cond_4

    .line 86
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->b:[I

    aget v3, v3, v0

    if-ne v3, v7, :cond_1

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->b:[I

    aget v3, v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 90
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->b:[I

    aget v3, v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 92
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->b:[I

    aget v3, v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 94
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/j;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
