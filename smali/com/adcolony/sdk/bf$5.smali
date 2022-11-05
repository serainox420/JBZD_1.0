.class Lcom/adcolony/sdk/bf$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bf;->a(Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;

.field final synthetic b:Lcom/adcolony/sdk/bf;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bf;Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adcolony/sdk/bf$5;->b:Lcom/adcolony/sdk/bf;

    iput-object p2, p0, Lcom/adcolony/sdk/bf$5;->a:Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adcolony/sdk/bf$5;->b:Lcom/adcolony/sdk/bf;

    iget-object v0, v0, Lcom/adcolony/sdk/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/adcolony/sdk/bf$5;->b:Lcom/adcolony/sdk/bf;

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

    .line 61
    iget-object v2, p0, Lcom/adcolony/sdk/bf$5;->a:Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;->onGrantDigitalProductItem(Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;)V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
