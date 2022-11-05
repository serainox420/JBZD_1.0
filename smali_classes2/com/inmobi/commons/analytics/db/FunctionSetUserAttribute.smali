.class public Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;
.super Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;
.source "FunctionSetUserAttribute.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->a:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->c:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 6

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    const-string v1, "ae"

    invoke-direct {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionId(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionTimeStamp(J)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeStamp(J)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->insertInDatabase(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V

    .line 32
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v0, "Please call startSession before calling track User Attribute"

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->printWarning(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;->a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method
