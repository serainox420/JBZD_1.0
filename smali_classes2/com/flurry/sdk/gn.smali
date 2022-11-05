.class public final Lcom/flurry/sdk/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ILcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)Lcom/flurry/sdk/gm;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 15
    sget-object v0, Lcom/flurry/sdk/gn$1;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 32
    :goto_0
    return-object v1

    .line 17
    :pswitch_0
    new-instance v1, Lcom/flurry/sdk/gl;

    invoke-direct {v1, p0, p2, p3}, Lcom/flurry/sdk/gl;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    goto :goto_0

    .line 20
    :pswitch_1
    new-instance v1, Lcom/flurry/sdk/gi;

    invoke-direct {v1, p0, p2, p3}, Lcom/flurry/sdk/gi;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    goto :goto_0

    .line 23
    :pswitch_2
    new-instance v1, Lcom/flurry/sdk/gg;

    invoke-direct {v1, p0, p2, p3}, Lcom/flurry/sdk/gg;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p2

    .line 26
    check-cast v0, Lcom/flurry/sdk/x;

    .line 1731
    iget-object v2, v0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    if-eqz v2, :cond_0

    .line 1732
    iget-object v0, v0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_1
    new-instance v1, Lcom/flurry/sdk/gh;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/flurry/sdk/gh;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/flurry/sdk/gh;->d()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1734
    goto :goto_1

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
