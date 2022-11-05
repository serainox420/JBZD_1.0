.class public Lcom/facebook/ads/internal/server/f;
.super Lcom/facebook/ads/internal/server/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/f/d;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/server/d$a;->b:Lcom/facebook/ads/internal/server/d$a;

    invoke-direct {p0, v0, p3}, Lcom/facebook/ads/internal/server/d;-><init>(Lcom/facebook/ads/internal/server/d$a;Lcom/facebook/ads/internal/f/d;)V

    iput p2, p0, Lcom/facebook/ads/internal/server/f;->b:I

    iput-object p1, p0, Lcom/facebook/ads/internal/server/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/server/f;->b:I

    return v0
.end method
