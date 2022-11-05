.class Lcom/facebook/ads/internal/i/b/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/b/f;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/i/b/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/b/f$c;->a:Lcom/facebook/ads/internal/i/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/i/b/f$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f$c;->a:Lcom/facebook/ads/internal/i/b/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Lcom/facebook/ads/internal/i/b/f;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/b/f$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
