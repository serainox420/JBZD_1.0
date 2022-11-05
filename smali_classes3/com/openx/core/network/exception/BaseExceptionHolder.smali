.class public Lcom/openx/core/network/exception/BaseExceptionHolder;
.super Lcom/openx/core/network/exception/BaseExceptionProvider;
.source "BaseExceptionHolder.java"


# instance fields
.field private mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/openx/core/network/exception/BaseExceptionProvider;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/openx/core/network/exception/BaseExceptionProvider;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/openx/core/network/exception/BaseExceptionHolder;->mException:Ljava/lang/Exception;

    .line 19
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/openx/core/network/exception/BaseExceptionHolder;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/openx/core/network/exception/BaseExceptionHolder;->mException:Ljava/lang/Exception;

    .line 24
    return-void
.end method
