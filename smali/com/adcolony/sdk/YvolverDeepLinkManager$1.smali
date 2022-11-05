.class Lcom/adcolony/sdk/YvolverDeepLinkManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Landroid/net/Uri;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Z

.field final synthetic d:Lcom/adcolony/sdk/YvolverDeepLinkManager;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Landroid/net/Uri;Ljava/util/Map;Z)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->d:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iput-object p2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->b:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 32
    const-string v1, "YvolverDeepLinkManager"

    const-string v2, "onReceiveDeepLink() calling yvolverOnOpenUrl callback"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    new-instance v2, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->d:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->b:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->c:Z

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Landroid/net/Uri;Ljava/util/Map;Z)V

    .line 34
    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->d:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v1, v2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)Z

    move-result v3

    .line 35
    const/4 v1, 0x0

    .line 36
    iget-object v4, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->d:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v4, v2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    .line 37
    if-eqz v3, :cond_0

    .line 38
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/YvolverDeepLinkManager$1$1;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager$1;)V

    .line 55
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->t:Lcom/adcolony/sdk/bl;

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bl;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;)V

    .line 57
    :cond_1
    return-void

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;->d:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v0, v2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    move v0, v1

    goto :goto_0
.end method
