.class Lcom/smaato/soma/internal/connector/OrmmaBridge$15;
.super Lcom/smaato/soma/l;
.source "OrmmaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/connector/OrmmaBridge;->foundORMMAAd()V
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
    .line 454
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$15;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

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
    const/4 v4, 0x1

    .line 457
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    const-string v2, "Found ORMMA/MRAID banner"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 461
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$15;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smaato/soma/bannerutilities/a;->b(Z)V

    .line 462
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$15;->a:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;Z)Z

    .line 463
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
    .line 454
    invoke-virtual {p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$15;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
