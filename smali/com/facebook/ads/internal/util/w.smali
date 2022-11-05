.class public Lcom/facebook/ads/internal/util/w;
.super Lcom/facebook/ads/internal/util/aj;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/aj$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v2

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/util/aj;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/util/aj$a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/util/w;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/util/w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/util/aj$b;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/facebook/ads/internal/util/w$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/util/aj$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
