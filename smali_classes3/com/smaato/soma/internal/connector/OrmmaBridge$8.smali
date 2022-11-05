.class Lcom/smaato/soma/internal/connector/OrmmaBridge$8;
.super Lcom/smaato/soma/l;
.source "OrmmaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/connector/OrmmaBridge;->close()V
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
    .line 138
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$8;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    const-string v2, "closing ..."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 145
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$8;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$8;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
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
    .line 138
    invoke-virtual {p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$8;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
