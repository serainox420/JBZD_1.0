.class public Lcom/facebook/ads/internal/a/f;
.super Lcom/facebook/ads/internal/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/a/a;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/a/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/a/f;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/a/f;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/util/c$a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/util/c$a;->b:Lcom/facebook/ads/internal/util/c$a;

    return-object v0
.end method

.method public b()V
    .locals 4

    :try_start_0
    const-string v0, "REDIRECTACTION: "

    iget-object v1, p0, Lcom/facebook/ads/internal/a/f;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/a/f;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/a/f;->d:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/ads/internal/a/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/a/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open link url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/a/f;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
