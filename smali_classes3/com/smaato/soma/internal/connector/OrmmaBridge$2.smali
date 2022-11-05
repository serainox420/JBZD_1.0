.class Lcom/smaato/soma/internal/connector/OrmmaBridge$2;
.super Lcom/smaato/soma/l;
.source "OrmmaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/connector/OrmmaBridge;->resize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/connector/OrmmaBridge;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iget-object v0, v0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iget-object v1, v1, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 516
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 517
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 519
    new-instance v2, Lcom/smaato/soma/debug/b;

    const-string v3, "SOMA_Bridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resize : width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v2}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 525
    iget-object v2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v2}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
