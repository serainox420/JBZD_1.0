.class Lcom/facebook/ads/internal/f/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/f/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/f/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/f/f;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/f/f$1;->b:Lcom/facebook/ads/internal/f/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/f/f$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/facebook/ads/internal/f/f;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/f/f$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/f/f$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
