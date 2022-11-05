.class public Lcom/moat/analytics/mobile/aol/MoatAdEvent;
.super Ljava/lang/Object;
.source "MoatAdEvent.java"


# static fields
.field public static final EVENT_AD_VOLUME:Ljava/lang/String; = "adVolume"

.field public static final EVENT_PLAY_HEAD:Ljava/lang/String; = "playhead"

.field public static final EVENT_TS:Ljava/lang/String; = "aTimeStamp"

.field public static final EVENT_TYPE:Ljava/lang/String; = "type"

.field public static final TIME_UNAVAILABLE:Ljava/lang/Integer;

.field public static final VOLUME_UNAVAILABLE:Ljava/lang/Double;


# instance fields
.field public adPlayhead:Ljava/lang/Integer;

.field public adVolume:Ljava/lang/Double;

.field public eventType:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

.field private timeStamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->TIME_UNAVAILABLE:Ljava/lang/Integer;

    .line 20
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->VOLUME_UNAVAILABLE:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/aol/MoatAdEventType;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->TIME_UNAVAILABLE:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->VOLUME_UNAVAILABLE:Ljava/lang/Double;

    invoke-direct {p0, p1, v0, v1}, Lcom/moat/analytics/mobile/aol/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/aol/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/aol/MoatAdEventType;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->VOLUME_UNAVAILABLE:Ljava/lang/Double;

    invoke-direct {p0, p1, p2, v0}, Lcom/moat/analytics/mobile/aol/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/aol/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/aol/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->timeStamp:Ljava/lang/Long;

    .line 29
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 30
    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adVolume:Ljava/lang/Double;

    .line 31
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    .line 33
    return-void
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v1, "adVolume"

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adVolume:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "playhead"

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "aTimeStamp"

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->timeStamp:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "type"

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method
