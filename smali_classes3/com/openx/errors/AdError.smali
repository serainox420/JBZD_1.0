.class public Lcom/openx/errors/AdError;
.super Ljava/lang/Exception;
.source "AdError.java"


# static fields
.field private static final serialVersionUID:J = -0x487843e77a49062cL


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/openx/errors/AdError;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/openx/errors/AdError;->mMessage:Ljava/lang/String;

    .line 15
    return-void
.end method
