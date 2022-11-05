.class Lcom/adcolony/sdk/YvolverDeepLinkManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/YvolverDeepLinkManager;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$3;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 77
    const-string v0, "YvolverDeepLinkManager"

    const-string v1, "flushing deeplink queue"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$3;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    .line 79
    new-instance v2, Lcom/adcolony/sdk/YvolverDeepLinkManager$3$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/YvolverDeepLinkManager$3$1;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager$3;)V

    .line 85
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    iget-object v3, v3, Lcom/adcolony/sdk/bz;->t:Lcom/adcolony/sdk/bl;

    invoke-virtual {v3, v0, v2}, Lcom/adcolony/sdk/bl;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;)V

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method
