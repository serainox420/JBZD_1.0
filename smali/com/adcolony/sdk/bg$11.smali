.class Lcom/adcolony/sdk/bg$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/adcolony/sdk/bg$11;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/adcolony/sdk/bg$11;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle service availability was called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    iget-object v0, p0, Lcom/adcolony/sdk/bg$11;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1199
    invoke-static {}, Lcom/adcolony/sdk/bn;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bg$11;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-static {}, Lcom/adcolony/sdk/bn;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bg$11;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 1202
    iget-object v1, p0, Lcom/adcolony/sdk/bg$11;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 1209
    :goto_0
    return-void

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$11;->b:Lcom/adcolony/sdk/bg;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNKNOWN:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg$11;->b:Lcom/adcolony/sdk/bg;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNKNOWN:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    goto :goto_0
.end method
