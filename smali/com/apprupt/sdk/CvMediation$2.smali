.class Lcom/apprupt/sdk/CvMediation$2;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/SimpleJSON;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/apprupt/sdk/SimpleJSON;

.field final synthetic c:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;JLcom/apprupt/sdk/SimpleJSON;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$2;->c:Lcom/apprupt/sdk/CvMediation;

    iput-wide p2, p0, Lcom/apprupt/sdk/CvMediation$2;->a:J

    iput-object p4, p0, Lcom/apprupt/sdk/CvMediation$2;->b:Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/apprupt/sdk/CvMediation$2;->a:J

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$2;->c:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v2}, Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/CvMediation;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$2;->c:Lcom/apprupt/sdk/CvMediation;

    iget-wide v2, p0, Lcom/apprupt/sdk/CvMediation$2;->a:J

    invoke-static {v0, v2, v3}, Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/CvMediation;J)J

    .line 66
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$2;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$2;->b:Lcom/apprupt/sdk/SimpleJSON;

    invoke-static {v1}, Lcom/apprupt/sdk/Q;->a(Ljava/lang/Object;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$2;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation;->b:Lcom/apprupt/sdk/Q$Task;

    .line 67
    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$2;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation;->c:Lcom/apprupt/sdk/Q$Task;

    .line 68
    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$2;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation;->d:Lcom/apprupt/sdk/Q$Task;

    .line 69
    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    new-instance v2, Lcom/apprupt/sdk/CvMediation$2$2;

    invoke-direct {v2, p0}, Lcom/apprupt/sdk/CvMediation$2$2;-><init>(Lcom/apprupt/sdk/CvMediation$2;)V

    .line 70
    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$SuccessHandler;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    new-instance v2, Lcom/apprupt/sdk/CvMediation$2$1;

    invoke-direct {v2, p0}, Lcom/apprupt/sdk/CvMediation$2$1;-><init>(Lcom/apprupt/sdk/CvMediation$2;)V

    .line 75
    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$FailureHandler;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/Q;)Lcom/apprupt/sdk/Q;

    .line 82
    :cond_0
    return-void
.end method
