.class public Lcom/openx/errors/ServerWrongStatusCode;
.super Lcom/openx/errors/AdError;
.source "ServerWrongStatusCode.java"


# static fields
.field private static final serialVersionUID:J = -0x44416d3af9030770L


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/openx/errors/AdError;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/openx/errors/AdError;->setMessage(Ljava/lang/String;)V

    .line 15
    return-void
.end method
