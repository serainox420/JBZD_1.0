.class public Lcom/facebook/ads/internal/util/x;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/facebook/ads/internal/adapters/e;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/util/x$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "AdMob"

    goto :goto_0

    :pswitch_1
    const-string v0, "Flurry"

    goto :goto_0

    :pswitch_2
    const-string v0, "InMobi"

    goto :goto_0

    :pswitch_3
    const-string v0, "Audience Network"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
