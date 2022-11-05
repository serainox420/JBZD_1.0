.class public Lcom/inmobi/commons/metric/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# instance fields
.field private a:Lcom/inmobi/commons/metric/EventType;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/inmobi/commons/metric/EventLog;->a:Lcom/inmobi/commons/metric/EventType;

    .line 14
    iput-object p2, p0, Lcom/inmobi/commons/metric/EventLog;->b:Lorg/json/JSONObject;

    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    :try_start_0
    const-string v0, "t"

    iget-object v2, p0, Lcom/inmobi/commons/metric/EventLog;->a:Lcom/inmobi/commons/metric/EventType;

    invoke-interface {v2}, Lcom/inmobi/commons/metric/EventType;->getValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string v0, "v"

    iget-object v2, p0, Lcom/inmobi/commons/metric/EventLog;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Unable to log json."

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
