.class public final Lpl/jbzd/api/exception/ApiException;
.super Ljava/lang/Exception;
.source "ApiException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/api/exception/ApiException$ErrorLevel;
    }
.end annotation


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final transient response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response",
            "<*>;"
        }
    .end annotation
.end field

.field private final transient throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/api/exception/ApiException$ErrorLevel;",
            "Lretrofit2/Call",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/api/exception/ApiException$ErrorLevel;",
            "Lretrofit2/Call",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/api/exception/ApiException$ErrorLevel;",
            "Lretrofit2/Call",
            "<*>;",
            "Lretrofit2/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/api/exception/ApiException$ErrorLevel;",
            "Lretrofit2/Call",
            "<*>;",
            "Lretrofit2/Response",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/api/exception/ApiException$ErrorLevel;",
            "Lretrofit2/Call",
            "<*>;",
            "Lretrofit2/Response",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/api/exception/ApiException$ErrorLevel;",
            "Lretrofit2/Call",
            "<*>;",
            "Lretrofit2/Response",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-gez p6, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lretrofit2/Response;->code()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4, p5, p6}, Lpl/jbzd/api/exception/ApiException;->getErrorMessage(Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 86
    if-gez p6, :cond_3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lretrofit2/Response;->code()I

    move-result v1

    :cond_0
    :goto_1
    iput v1, p0, Lpl/jbzd/api/exception/ApiException;->code:I

    .line 87
    invoke-static {p3, p4, p5, p6}, Lpl/jbzd/api/exception/ApiException;->getErrorMessage(Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/api/exception/ApiException;->message:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lpl/jbzd/api/exception/ApiException;->response:Lretrofit2/Response;

    .line 89
    iput-object p4, p0, Lpl/jbzd/api/exception/ApiException;->throwable:Ljava/lang/Throwable;

    .line 98
    return-void

    :cond_1
    move v0, v1

    .line 84
    goto :goto_0

    :cond_2
    move v0, p6

    goto :goto_0

    :cond_3
    move v1, p6

    .line 86
    goto :goto_1
.end method

.method private static getErrorMessage(Lretrofit2/Response;Ljava/lang/Throwable;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 28
    if-eqz p2, :cond_0

    .line 59
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 35
    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 39
    :cond_1
    const-string p2, "Unknown response message"

    goto :goto_0

    .line 43
    :cond_2
    const-string p2, "Unknown error"

    goto :goto_0

    .line 46
    :cond_3
    if-eqz p1, :cond_5

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 52
    :cond_4
    const-string p2, "Unknown throwable message"

    goto :goto_0

    .line 56
    :cond_5
    const-string p2, "Unknown error"

    goto :goto_0
.end method


# virtual methods
.method public code()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lpl/jbzd/api/exception/ApiException;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lpl/jbzd/api/exception/ApiException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lretrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lpl/jbzd/api/exception/ApiException;->response:Lretrofit2/Response;

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lpl/jbzd/api/exception/ApiException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
