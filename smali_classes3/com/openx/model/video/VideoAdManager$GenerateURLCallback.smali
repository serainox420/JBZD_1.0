.class Lcom/openx/model/video/VideoAdManager$GenerateURLCallback;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/openx/core/network/GenerateURLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/video/VideoAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateURLCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;


# direct methods
.method private constructor <init>(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$GenerateURLCallback;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdManager$1;)V
    .locals 0

    .prologue
    .line 1465
    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoAdManager$GenerateURLCallback;-><init>(Lcom/openx/model/video/VideoAdManager;)V

    return-void
.end method


# virtual methods
.method public customURLParams(Ljava/lang/String;Lcom/openx/model/adParams/AdCallParameters;Lcom/openx/common/deviceData/listeners/AdTruthListener;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1472
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$GenerateURLCallback;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$1900(Lcom/openx/model/video/VideoAdManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/openx/common/deviceData/listeners/AdTruthListener;->setDomain(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
