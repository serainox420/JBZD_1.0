.class public Lcom/openx/errors/PermissionDeniedForApplication;
.super Lcom/openx/errors/AdError;
.source "PermissionDeniedForApplication.java"


# static fields
.field private static final serialVersionUID:J = -0x302eb852f2ef499aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/openx/errors/AdError;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " denied. Please include this permission in your manifest file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/openx/errors/AdError;->setMessage(Ljava/lang/String;)V

    .line 17
    return-void
.end method
