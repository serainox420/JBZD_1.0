.class final Lcom/google/android/exoplayer2/text/c/d;
.super Ljava/lang/Object;
.source "TtmlRenderUtil.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/text/c/e;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/c/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/c/e;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/c/e;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/c/e;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 39
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 41
    const/4 p0, 0x0

    .line 63
    :cond_0
    :goto_0
    return-object p0

    .line 42
    :cond_1
    if-nez p0, :cond_2

    array-length v1, p1

    if-ne v1, v2, :cond_2

    .line 44
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/c/e;

    move-object p0, v0

    goto :goto_0

    .line 45
    :cond_2
    if-nez p0, :cond_3

    array-length v1, p1

    if-le v1, v2, :cond_3

    .line 47
    new-instance p0, Lcom/google/android/exoplayer2/text/c/e;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/c/e;-><init>()V

    .line 48
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 49
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/c/e;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/c/e;->a(Lcom/google/android/exoplayer2/text/c/e;)Lcom/google/android/exoplayer2/text/c/e;

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 52
    :cond_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v1, p1

    if-ne v1, v2, :cond_4

    .line 54
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/c/e;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/c/e;->a(Lcom/google/android/exoplayer2/text/c/e;)Lcom/google/android/exoplayer2/text/c/e;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_4
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 57
    array-length v2, p1

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 58
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/c/e;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/c/e;->a(Lcom/google/android/exoplayer2/text/c/e;)Lcom/google/android/exoplayer2/text/c/e;

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, " *\n *"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "[ \t\\x0B\u000c\r]+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method static a(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 121
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 122
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 123
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 125
    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1

    .line 126
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 128
    :cond_1
    return-void
.end method

.method public static a(Landroid/text/SpannableStringBuilder;IILcom/google/android/exoplayer2/text/c/e;)V
    .locals 4

    .prologue
    const/16 v3, 0x21

    .line 69
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 73
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->e()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->g()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 87
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 88
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->j()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 92
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->j()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 95
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 97
    :pswitch_0
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->l()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 101
    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->l()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 105
    :pswitch_2
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/c/e;->l()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
