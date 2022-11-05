.class final Lcom/facebook/ads/internal/i/b/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/b/f;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/i/b/f;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/b/f$d;->a:Lcom/facebook/ads/internal/i/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/i/b/f$d;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f$d;->a:Lcom/facebook/ads/internal/i/b/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f$d;->b:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Lcom/facebook/ads/internal/i/b/f;Ljava/net/Socket;)V

    return-void
.end method
