.class Lcom/openx/view/AdInterstitial$GenerateURLCallback;
.super Ljava/lang/Object;
.source "AdInterstitial.java"

# interfaces
.implements Lcom/openx/core/network/GenerateURLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/AdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateURLCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/AdInterstitial;


# direct methods
.method private constructor <init>(Lcom/openx/view/AdInterstitial;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/openx/view/AdInterstitial$GenerateURLCallback;->this$0:Lcom/openx/view/AdInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/view/AdInterstitial;Lcom/openx/view/AdInterstitial$1;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/openx/view/AdInterstitial$GenerateURLCallback;-><init>(Lcom/openx/view/AdInterstitial;)V

    return-void
.end method


# virtual methods
.method public customURLParams(Ljava/lang/String;Lcom/openx/model/adParams/AdCallParameters;Lcom/openx/common/deviceData/listeners/AdTruthListener;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Lcom/openx/view/AdInterstitial$GenerateURLCallback;->this$0:Lcom/openx/view/AdInterstitial;

    invoke-static {v1}, Lcom/openx/view/AdInterstitial;->access$400(Lcom/openx/view/AdInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/openx/common/deviceData/listeners/AdTruthListener;->setDomain(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
