.class Lcom/smartadserver/android/library/a/a$a$2;
.super Ljava/util/TimerTask;
.source "SASAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/a/a$a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a/a$a;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/smartadserver/android/library/a/a$a$2;->a:Lcom/smartadserver/android/library/a/a$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a$2;->a:Lcom/smartadserver/android/library/a/a$a;

    new-instance v1, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad was not delivered before specified timeout ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/a/a$a$2;->a:Lcom/smartadserver/android/library/a/a$a;

    iget-object v3, v3, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/a/a;->b(Lcom/smartadserver/android/library/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/a/a$a;->a(Lcom/smartadserver/android/library/exception/SASException;)V

    .line 276
    return-void
.end method
