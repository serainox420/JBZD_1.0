.class public Lcom/loopme/common/LoopMeError;
.super Ljava/lang/Object;
.source "LoopMeError.java"


# instance fields
.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 11
    iput-object p1, p0, Lcom/loopme/common/LoopMeError;->mErrorMessage:Ljava/lang/String;

    .line 15
    :goto_0
    return-void

    .line 13
    :cond_0
    const-string v0, "Unknown error"

    iput-object v0, p0, Lcom/loopme/common/LoopMeError;->mErrorMessage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/loopme/common/LoopMeError;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
