.class public Lcom/facebook/ads/internal/j/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/facebook/ads/internal/j/c;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/j/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/j/c;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/j/b;->a:Lcom/facebook/ads/internal/j/c;

    iput p2, p0, Lcom/facebook/ads/internal/j/b;->b:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/j/b;->a:Lcom/facebook/ads/internal/j/c;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->b:Lcom/facebook/ads/internal/j/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j/b;->a:Lcom/facebook/ads/internal/j/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/c;->a()I

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/j/b;->b:F

    return v0
.end method
