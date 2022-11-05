.class Lcom/intentsoftware/addapptr/g;
.super Ljava/lang/Object;
.source "AdPicker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pickAd(Ljava/util/ArrayList;Lcom/intentsoftware/addapptr/v;)Lcom/intentsoftware/addapptr/b;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;",
            "Lcom/intentsoftware/addapptr/v;",
            ")",
            "Lcom/intentsoftware/addapptr/b;"
        }
    .end annotation

    .prologue
    .line 10
    const/4 v11, 0x0

    .line 11
    const v10, 0xf423f

    .line 12
    const/4 v9, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const-wide/16 v6, 0x0

    .line 17
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intentsoftware/addapptr/b;

    .line 18
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v3

    invoke-static {v3}, Lcom/intentsoftware/addapptr/ad;->isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v3

    if-nez v3, :cond_5

    .line 22
    const/4 v8, 0x0

    .line 34
    :goto_1
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v4

    if-ge v4, v10, :cond_1

    .line 36
    const/4 v3, 0x1

    .line 38
    :cond_1
    cmpl-float v4, v8, v9

    if-lez v4, :cond_2

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v4

    if-gt v4, v10, :cond_2

    .line 39
    const/4 v3, 0x1

    .line 41
    :cond_2
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v4

    if-ne v4, v10, :cond_e

    cmpl-float v4, v8, v9

    if-nez v4, :cond_e

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v4

    if-le v4, v5, :cond_e

    .line 42
    const/4 v3, 0x1

    move v12, v3

    .line 44
    :goto_2
    const/16 v14, 0x64

    .line 45
    const/16 v13, 0x64

    .line 46
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v3

    if-ne v3, v10, :cond_d

    cmpl-float v3, v8, v9

    if-nez v3, :cond_d

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v3

    if-ne v3, v5, :cond_d

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/intentsoftware/addapptr/v;->getTotalNetworksStatistics()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intentsoftware/addapptr/f;

    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v11, :cond_c

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/intentsoftware/addapptr/v;->getTotalNetworksStatistics()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intentsoftware/addapptr/f;

    move-object v15, v4

    .line 53
    :goto_3
    if-eqz v3, :cond_b

    iget v4, v3, Lcom/intentsoftware/addapptr/f;->numRequests:I

    if-lez v4, :cond_b

    .line 54
    iget v4, v3, Lcom/intentsoftware/addapptr/f;->numResponses:I

    mul-int/lit8 v4, v4, 0x64

    iget v3, v3, Lcom/intentsoftware/addapptr/f;->numRequests:I

    div-int v14, v4, v3

    move v4, v14

    .line 56
    :goto_4
    if-eqz v15, :cond_a

    iget v3, v15, Lcom/intentsoftware/addapptr/f;->numRequests:I

    if-lez v3, :cond_a

    .line 57
    iget v3, v15, Lcom/intentsoftware/addapptr/f;->numResponses:I

    mul-int/lit8 v3, v3, 0x64

    iget v13, v15, Lcom/intentsoftware/addapptr/f;->numRequests:I

    div-int v13, v3, v13

    move v3, v13

    .line 59
    :goto_5
    if-le v4, v3, :cond_3

    .line 60
    const/4 v12, 0x1

    .line 63
    :cond_3
    :goto_6
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v13

    if-ne v13, v10, :cond_4

    cmpl-float v13, v8, v9

    if-nez v13, :cond_4

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v13

    if-ne v13, v5, :cond_4

    if-ne v4, v3, :cond_4

    .line 64
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getLastTryTimestamp()J

    move-result-wide v14

    cmp-long v3, v14, v6

    if-gez v3, :cond_4

    .line 65
    const/4 v12, 0x1

    .line 69
    :cond_4
    if-eqz v12, :cond_9

    .line 72
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v3

    .line 73
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v6

    .line 74
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getLastTryTimestamp()J

    move-result-wide v4

    move-object v7, v2

    move/from16 v17, v3

    move-wide v2, v4

    move v5, v8

    move/from16 v4, v17

    :goto_7
    move v9, v5

    move v10, v6

    move-object v11, v7

    move v5, v4

    move-wide v6, v2

    .line 76
    goto/16 :goto_0

    .line 23
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/intentsoftware/addapptr/v;->getTotalImpressionsCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 24
    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42480000    # 50.0f

    div-float v8, v3, v4

    goto/16 :goto_1

    .line 26
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/intentsoftware/addapptr/v;->getTotalImpressionsCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v3, v4

    .line 27
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/intentsoftware/addapptr/v;->getImpressionsCountForAdpicker(Lcom/intentsoftware/addapptr/b;)I

    move-result v3

    int-to-float v3, v3

    .line 28
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-nez v8, :cond_7

    .line 29
    const v3, 0x3f4ccccd    # 0.8f

    .line 32
    :cond_7
    div-float v8, v4, v3

    goto/16 :goto_1

    .line 77
    :cond_8
    return-object v11

    :cond_9
    move-wide v2, v6

    move v4, v5

    move v5, v9

    move v6, v10

    move-object v7, v11

    goto :goto_7

    :cond_a
    move v3, v13

    goto :goto_5

    :cond_b
    move v4, v14

    goto/16 :goto_4

    :cond_c
    move-object v15, v4

    goto/16 :goto_3

    :cond_d
    move v3, v13

    move v4, v14

    goto :goto_6

    :cond_e
    move v12, v3

    goto/16 :goto_2
.end method
