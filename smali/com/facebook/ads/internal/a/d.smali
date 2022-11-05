.class public Lcom/facebook/ads/internal/a/d;
.super Lcom/facebook/ads/internal/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/internal/a/a;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/a/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/a/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/a/d;->d:Landroid/net/Uri;

    iput-object p4, p0, Lcom/facebook/ads/internal/a/d;->e:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/facebook/ads/internal/a/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/a/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/a/d;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/ads/internal/a/d;->e:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/a/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/a/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/a/d;->d:Landroid/net/Uri;

    const-string v2, "link"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/a/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/a/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open link url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/a/d;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
