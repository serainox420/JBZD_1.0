.class Lcom/adcolony/sdk/YvolverDeepLinkManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

.field final synthetic b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

.field final synthetic c:Lcom/adcolony/sdk/YvolverDeepLinkManager;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iput-object p2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    iput-object p3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 108
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b(Lcom/adcolony/sdk/YvolverDeepLinkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b(Lcom/adcolony/sdk/YvolverDeepLinkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    :goto_0
    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->w()Z

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-static {v2, v3}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)Z

    move-result v2

    .line 123
    if-eqz v2, :cond_2

    .line 125
    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->c(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    .line 130
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v1, v1, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v2, v2, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-boolean v3, v3, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;->onOpenUrl(Landroid/net/Uri;Ljava/util/Map;Z)V

    .line 131
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V

    .line 140
    :cond_0
    :goto_1
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b(Lcom/adcolony/sdk/YvolverDeepLinkManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v1, v1, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v2, v2, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-boolean v3, v3, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;->onOpenUrl(Landroid/net/Uri;Ljava/util/Map;Z)V

    .line 137
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->c:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;->a:Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method
