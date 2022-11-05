.class Lcom/adcolony/sdk/ch$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ch;->b(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

.field final synthetic b:Lcom/adcolony/sdk/ch;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ch;Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/adcolony/sdk/ch$3;->b:Lcom/adcolony/sdk/ch;

    iput-object p2, p0, Lcom/adcolony/sdk/ch$3;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    const-string v1, "state"

    const-string v2, "received"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/ch$3;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "category"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "action"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "payload"

    iget-object v2, p0, Lcom/adcolony/sdk/ch$3;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "app_in_foreground"

    iget-object v2, p0, Lcom/adcolony/sdk/ch$3;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "meta"

    iget-object v2, p0, Lcom/adcolony/sdk/ch$3;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a()Lcom/adcolony/sdk/cg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/cg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "push_notification"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 384
    return-void
.end method
