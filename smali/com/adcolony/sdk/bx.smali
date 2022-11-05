.class Lcom/adcolony/sdk/bx;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "We could not load your default GCM_senderId. Have you added your google-service.json file to the project?"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method
