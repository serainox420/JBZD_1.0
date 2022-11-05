.class public Lcom/facebook/ads/internal/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/b/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/internal/b/c$a;

.field private b:Lcom/facebook/ads/internal/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x3fa999999999999aL    # 0.05

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/b/c;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    const-wide v0, 0x3fa999999999999aL    # 0.05

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/internal/b/c;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/b/c$a;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/b/c$a;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/c;->a:Lcom/facebook/ads/internal/b/c$a;

    new-instance v0, Lcom/facebook/ads/internal/b/c$a;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/internal/b/c$a;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/c;->b:Lcom/facebook/ads/internal/b/c$a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/c;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->a:Lcom/facebook/ads/internal/b/c$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/c$a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->b:Lcom/facebook/ads/internal/b/c$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/c$a;->a()V

    return-void
.end method

.method a(DD)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->a:Lcom/facebook/ads/internal/b/c$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/b/c$a;->a(DD)V

    return-void
.end method

.method public b()Lcom/facebook/ads/internal/b/c$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->a:Lcom/facebook/ads/internal/b/c$a;

    return-object v0
.end method

.method b(DD)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->b:Lcom/facebook/ads/internal/b/c$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/b/c$a;->a(DD)V

    return-void
.end method

.method public c()Lcom/facebook/ads/internal/b/c$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->b:Lcom/facebook/ads/internal/b/c$a;

    return-object v0
.end method
