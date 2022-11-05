.class Lcom/openx/model/AdModel$GenerateURLCallback;
.super Ljava/lang/Object;
.source "AdModel.java"

# interfaces
.implements Lcom/openx/core/network/GenerateURLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/AdModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateURLCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/AdModel;


# direct methods
.method private constructor <init>(Lcom/openx/model/AdModel;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/model/AdModel;Lcom/openx/model/AdModel$1;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/openx/model/AdModel$GenerateURLCallback;-><init>(Lcom/openx/model/AdModel;)V

    return-void
.end method


# virtual methods
.method public customURLParams(Ljava/lang/String;Lcom/openx/model/adParams/AdCallParameters;Lcom/openx/common/deviceData/listeners/AdTruthListener;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p2}, Lcom/openx/model/adParams/AdCallParameters;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v0, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-static {v0}, Lcom/openx/model/AdModel;->access$100(Lcom/openx/model/AdModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-virtual {v0}, Lcom/openx/model/AdModel;->getAdUnitID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-static {v0}, Lcom/openx/model/AdModel;->access$100(Lcom/openx/model/AdModel;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 248
    :goto_1
    return-object v0

    .line 220
    :cond_1
    const-string v0, "http://"

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-static {v0}, Lcom/openx/model/AdModel;->access$100(Lcom/openx/model/AdModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/openx/common/deviceData/listeners/AdTruthListener;->setDomain(Ljava/lang/String;)V

    .line 229
    const-string v0, "/ma/1.0/arj?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-virtual {v0}, Lcom/openx/model/AdModel;->isGroupIds()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-virtual {v2}, Lcom/openx/model/AdModel;->getAdUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 240
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pgid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/openx/model/AdModel$GenerateURLCallback;->this$0:Lcom/openx/model/AdModel;

    invoke-virtual {v2}, Lcom/openx/model/AdModel;->getAdUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
