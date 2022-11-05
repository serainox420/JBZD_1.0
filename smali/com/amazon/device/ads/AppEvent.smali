.class Lcom/amazon/device/ads/AppEvent;
.super Ljava/lang/Object;
.source "AppEvent.java"


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/AppEvent;-><init>(Ljava/lang/String;J)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/device/ads/AppEvent;->eventName:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/amazon/device/ads/AppEvent;->timestamp:J

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AppEvent;->properties:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static createAppEventWithTimestamp(Lcom/amazon/device/ads/AppEvent;J)Lcom/amazon/device/ads/AppEvent;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/amazon/device/ads/AppEvent;

    iget-object v1, p0, Lcom/amazon/device/ads/AppEvent;->eventName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/device/ads/AppEvent;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/AppEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/device/ads/AppEvent;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/device/ads/AppEvent;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/amazon/device/ads/AppEvent;->timestamp:J

    return-wide v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/AppEvent;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/AppEvent;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x41

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    const-string v0, "Application Event {Name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/AppEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, ", Timestamp: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide v2, p0, Lcom/amazon/device/ads/AppEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/AppEvent;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v3, p0, Lcom/amazon/device/ads/AppEvent;->properties:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :cond_0
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
