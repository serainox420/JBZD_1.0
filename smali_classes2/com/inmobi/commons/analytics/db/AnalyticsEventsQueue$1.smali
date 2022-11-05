.class Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$1;
.super Ljava/lang/Thread;
.source "AnalyticsEventsQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$1;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$1;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$1;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$1;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;

    invoke-static {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Exception processing function"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :cond_0
    return-void
.end method
