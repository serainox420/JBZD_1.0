.class Lcom/adcolony/sdk/ag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ag;->a(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ag;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ag;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adcolony/sdk/ag$1;->a:Lcom/adcolony/sdk/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ag$1;->a:Lcom/adcolony/sdk/ag;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ag;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "ADCLogPOC"

    const-string v2, "RuntimeException thrown from {}#report. Exception was suppressed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
