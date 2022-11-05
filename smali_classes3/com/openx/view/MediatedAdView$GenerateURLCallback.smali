.class Lcom/openx/view/MediatedAdView$GenerateURLCallback;
.super Ljava/lang/Object;
.source "MediatedAdView.java"

# interfaces
.implements Lcom/openx/core/network/GenerateURLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/MediatedAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateURLCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/MediatedAdView;


# direct methods
.method private constructor <init>(Lcom/openx/view/MediatedAdView;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/openx/view/MediatedAdView$GenerateURLCallback;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/view/MediatedAdView;Lcom/openx/view/MediatedAdView$1;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/openx/view/MediatedAdView$GenerateURLCallback;-><init>(Lcom/openx/view/MediatedAdView;)V

    return-void
.end method


# virtual methods
.method public customURLParams(Ljava/lang/String;Lcom/openx/model/adParams/AdCallParameters;Lcom/openx/common/deviceData/listeners/AdTruthListener;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p2}, Lcom/openx/model/adParams/AdCallParameters;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$GenerateURLCallback;->this$0:Lcom/openx/view/MediatedAdView;

    iget-object v0, v0, Lcom/openx/view/MediatedAdView;->domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/MediatedAdView$GenerateURLCallback;->this$0:Lcom/openx/view/MediatedAdView;

    iget-object v0, v0, Lcom/openx/view/MediatedAdView;->auid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/MediatedAdView$GenerateURLCallback;->this$0:Lcom/openx/view/MediatedAdView;

    iget-object v0, v0, Lcom/openx/view/MediatedAdView;->domain:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_1
    return-object v0

    .line 389
    :cond_1
    const-string v0, "http://"

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$GenerateURLCallback;->this$0:Lcom/openx/view/MediatedAdView;

    iget-object v0, v0, Lcom/openx/view/MediatedAdView;->domain:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/openx/common/deviceData/listeners/AdTruthListener;->setDomain(Ljava/lang/String;)V

    .line 398
    const-string v0, "/ma/1.0/acj?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/openx/view/MediatedAdView$GenerateURLCallback;->this$0:Lcom/openx/view/MediatedAdView;

    iget-object v2, v2, Lcom/openx/view/MediatedAdView;->auid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
