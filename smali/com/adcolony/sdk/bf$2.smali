.class Lcom/adcolony/sdk/bf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bf;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;

.field final synthetic b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

.field final synthetic c:Lcom/adcolony/sdk/bf;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bf;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/adcolony/sdk/bf$2;->c:Lcom/adcolony/sdk/bf;

    iput-object p2, p0, Lcom/adcolony/sdk/bf$2;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;

    iput-object p3, p0, Lcom/adcolony/sdk/bf$2;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adcolony/sdk/bf$2;->c:Lcom/adcolony/sdk/bf;

    iget-object v0, v0, Lcom/adcolony/sdk/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adcolony/sdk/bf$2;->c:Lcom/adcolony/sdk/bf;

    iget-object v0, v0, Lcom/adcolony/sdk/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    .line 163
    iget-object v2, p0, Lcom/adcolony/sdk/bf$2;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;

    iget-object v3, p0, Lcom/adcolony/sdk/bf$2;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-interface {v2, v3, v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;->executeDeepLink(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method
