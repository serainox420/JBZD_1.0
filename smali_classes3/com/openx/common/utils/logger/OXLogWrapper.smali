.class public Lcom/openx/common/utils/logger/OXLogWrapper;
.super Ljava/lang/Object;
.source "OXLogWrapper.java"

# interfaces
.implements Lcom/openx/common/utils/logger/OXLogNodeInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "LogWrapper"


# instance fields
.field private mNext:Lcom/openx/common/utils/logger/OXLogNodeInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext()Lcom/openx/common/utils/logger/OXLogNodeInterface;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/openx/common/utils/logger/OXLogWrapper;->mNext:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    return-object v0
.end method

.method public print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 65
    .line 66
    if-nez p3, :cond_2

    .line 68
    const-string v0, ""

    .line 71
    :goto_0
    invoke-static {}, Lcom/openx/common/utils/logger/OXLog;->getLogLevel()I

    move-result v1

    if-lt v1, p1, :cond_1

    .line 75
    if-eqz p4, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 82
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/openx/common/utils/logger/OXLogWrapper;->mNext:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/openx/common/utils/logger/OXLogWrapper;->mNext:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/openx/common/utils/logger/OXLogNodeInterface;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :cond_1
    return-void

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public setNext(Lcom/openx/common/utils/logger/OXLogNodeInterface;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/openx/common/utils/logger/OXLogWrapper;->mNext:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    .line 45
    return-void
.end method
