.class public Lcom/openx/errors/ServerWrongResponse;
.super Lcom/openx/errors/AdError;
.source "ServerWrongResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x19facd31ea558023L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/openx/errors/AdError;-><init>()V

    .line 14
    const-string v0, "Server response parsing error"

    invoke-super {p0, v0}, Lcom/openx/errors/AdError;->setMessage(Ljava/lang/String;)V

    .line 15
    return-void
.end method
