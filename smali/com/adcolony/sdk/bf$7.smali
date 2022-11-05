.class Lcom/adcolony/sdk/bf$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bf;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/bf;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adcolony/sdk/bf$7;->c:Lcom/adcolony/sdk/bf;

    iput-object p2, p0, Lcom/adcolony/sdk/bf$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/bf$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adcolony/sdk/bf$7;->c:Lcom/adcolony/sdk/bf;

    iget-object v0, v0, Lcom/adcolony/sdk/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/adcolony/sdk/bf$7;->c:Lcom/adcolony/sdk/bf;

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

    .line 92
    iget-object v2, p0, Lcom/adcolony/sdk/bf$7;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/adcolony/sdk/bf$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;->onInAppPurchaseRewardDidFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method
