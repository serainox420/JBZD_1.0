.class public Lcom/openx/errors/NativeAdError;
.super Lcom/openx/errors/AdError;
.source "NativeAdError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/openx/errors/AdError;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/openx/errors/AdError;-><init>()V

    .line 9
    invoke-super {p0, p1}, Lcom/openx/errors/AdError;->setMessage(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/openx/errors/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/openx/errors/AdError;->setMessage(Ljava/lang/String;)V

    .line 19
    return-void
.end method
