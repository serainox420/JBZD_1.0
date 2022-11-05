.class public Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->b:Landroid/graphics/Bitmap;

    .line 17
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public productDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "description"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "description"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public productId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "product_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "product_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quantity()I
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "quantity"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "quantity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "user_params"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;->a:Ljava/util/Map;

    const-string v1, "user_params"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
