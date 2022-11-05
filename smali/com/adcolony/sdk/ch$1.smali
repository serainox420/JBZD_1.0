.class Lcom/adcolony/sdk/ch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ch;->c(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
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
    .line 320
    iput-object p1, p0, Lcom/adcolony/sdk/ch$1;->b:Lcom/adcolony/sdk/ch;

    iput-object p2, p0, Lcom/adcolony/sdk/ch$1;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 323
    iget-object v0, p0, Lcom/adcolony/sdk/ch$1;->b:Lcom/adcolony/sdk/ch;

    iget-object v1, p0, Lcom/adcolony/sdk/ch$1;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ch;->a(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V

    .line 324
    iget-object v0, p0, Lcom/adcolony/sdk/ch$1;->a:Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a()Lcom/adcolony/sdk/cg;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    iget-object v0, v0, Lcom/adcolony/sdk/cg;->e:Lcom/adcolony/sdk/cg$b;

    .line 328
    if-eqz v0, :cond_1

    .line 329
    iget-object v1, v0, Lcom/adcolony/sdk/cg$b;->e:Ljava/util/HashMap;

    .line 330
    if-eqz v1, :cond_1

    .line 332
    iget-object v2, v0, Lcom/adcolony/sdk/cg$b;->d:Ljava/lang/String;

    const-string v3, "adcOpenUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 335
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bz;->i(Ljava/util/Map;)V

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 339
    :cond_2
    iget-object v0, v0, Lcom/adcolony/sdk/cg$b;->d:Ljava/lang/String;

    const-string v2, "adcOpenCatalog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->j(Ljava/util/Map;)V

    goto :goto_1
.end method
