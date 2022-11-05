.class public Lcom/facebook/ads/internal/util/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/i/a/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/n;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/util/aa;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/util/aa;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
