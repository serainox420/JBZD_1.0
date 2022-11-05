.class public abstract Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;
.super Ljava/lang/Object;
.source "AnalyticsFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;->a:Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;

    .line 17
    return-void
.end method


# virtual methods
.method public getFunctionName()Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;->a:Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;

    return-object v0
.end method

.method protected insertInDatabase(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    .locals 2

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->insertEvents(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected printWarning(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "IllegalStateException"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    return-void
.end method

.method public abstract processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
.end method
