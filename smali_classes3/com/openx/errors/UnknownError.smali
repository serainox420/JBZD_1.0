.class public Lcom/openx/errors/UnknownError;
.super Lcom/openx/errors/AdError;
.source "UnknownError.java"


# static fields
.field private static final serialVersionUID:J = 0x15e02b8756420365L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/openx/errors/AdError;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Error with :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/openx/errors/AdError;->setMessage(Ljava/lang/String;)V

    .line 15
    return-void
.end method
