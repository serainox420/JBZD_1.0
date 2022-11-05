.class Lcom/adcolony/sdk/bf$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bf;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adcolony/sdk/bf;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bf;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adcolony/sdk/bf$6;->d:Lcom/adcolony/sdk/bf;

    iput-object p2, p0, Lcom/adcolony/sdk/bf$6;->a:Ljava/lang/String;

    iput p3, p0, Lcom/adcolony/sdk/bf$6;->b:I

    iput-object p4, p0, Lcom/adcolony/sdk/bf$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/bf$6;->d:Lcom/adcolony/sdk/bf;

    iget-object v0, v0, Lcom/adcolony/sdk/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/adcolony/sdk/bf$6;->d:Lcom/adcolony/sdk/bf;

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

    .line 76
    iget-object v2, p0, Lcom/adcolony/sdk/bf$6;->a:Ljava/lang/String;

    iget v3, p0, Lcom/adcolony/sdk/bf$6;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;->onInAppPurchaseRewardSuccess(Ljava/lang/String;I)V

    .line 77
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget v2, p0, Lcom/adcolony/sdk/bf$6;->b:I

    iget-object v3, p0, Lcom/adcolony/sdk/bf$6;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/adcolony/sdk/bf$6;->c:Ljava/lang/String;

    const/4 v5, 0x1

    .line 78
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/adcolony/sdk/bz;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method
